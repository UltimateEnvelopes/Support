#!/bin/bash
# Deployment check: shows the branch, the destination (clasp project or GitHub
# branch) and the code's version, and makes you type the version you intend
# to deploy before anything is pushed. The same file lives in all three UE
# repos (Sheets, Companion, Support) — keep the copies identical.
#
# Usage:
#   deploy_check.sh clasp <scriptId> [<scriptId>...]   # from push scripts
#   deploy_check.sh clasp-raw                          # from the `clasp` shell function in ~/.zshrc
#   deploy_check.sh git <remote> <url>                 # from .git/hooks/pre-push (refs on stdin)
#   deploy_check.sh targets <key>                      # print "script_id<TAB>clasp_user" of the
#                                                      # registered <key> projects this branch may push to
#   deploy_check.sh log <scriptId> ok|FAILED [note]    # after a push: append to ../deploy_log.tsv
#                                                      # and rebuild ../DEPLOYMENTS.md
#
# Which branch may push to which Apps Script project is listed in
# ../clasp_projects.tsv (the UE 2026 folder, outside the repos so every
# branch sees the same list).
#
# Lives at scripts/deploy_check.sh in Sheets and Companion, and at
# .githooks/deploy_check.sh in Support (Jekyll would publish a scripts/ folder).
#
# How you confirm, in order:
#   1. UE_DEPLOY_CONFIRM env var, for agents and release scripts — e.g.
#        UE_DEPLOY_CONFIRM="branch=main;version=26.10.1;targets=github,prod"
#      Every pushed branch must be in `branch`, every pushed version in
#      `version`, and every destination in `targets` (each a comma list).
#      Nothing is prompted.
#   2. A terminal prompt.
#   3. A macOS dialog (git pushes from the VS Code button have no terminal).
#
# Rules that stop a push outright:
#   - The version strings inside the code disagree with each other.
#   - A live destination (Sheet PROD, Companion PROD/CURRENT, the Support
#     website) is pushed from a branch other than main, or a branch other than
#     main is pushed onto GitHub main.
#   - A clasp push to a live destination with uncommitted code (it would put
#     code on customers' sheets that isn't on GitHub).
#   - A tag vX.Y.Z points at code whose version isn't X.Y.Z.
#   - A clasp script ID that isn't in clasp_projects.tsv, belongs to the other
#     repo (Sheet code into a Companion project or vice versa), or doesn't
#     list the current branch.

set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
REPO_NAME="$(basename "$ROOT")"

# ---------------------------------------------------------------------------
# Which repo is this, and how do we read its version?
# ---------------------------------------------------------------------------
if [ -f "$ROOT/Config.js" ] && grep -q APP_VERSION "$ROOT/Config.js"; then
  KIND=sheet
elif [ -f "$ROOT/indextiller.html" ]; then
  KIND=companion
else
  KIND=support
fi

# read_file <ref|""> <path> — from a commit, or the working tree when ref is empty
read_file() {
  if [ -z "$1" ]; then cat "$ROOT/$2" 2>/dev/null; else git -C "$ROOT" show "$1:$2" 2>/dev/null; fi
}

# version_at <ref|""> — prints the version, "n/a", or "MISMATCH(...)"
version_at() {
  local a b
  case "$KIND" in
    sheet)
      a=$(read_file "$1" Config.js | sed -nE 's/.*APP_VERSION *= *"Version ([^"]+)".*/\1/p' | head -1)
      b=$(read_file "$1" "UE Init.js" | sed -nE 's/^var version *= *"Version ([^" ]+).*/\1/p' | head -1)
      [ "$a" = "$b" ] && echo "$a" || echo "MISMATCH(Config.js=$a, UE Init.js=$b)" ;;
    companion)
      a=$(read_file "$1" index.html | sed -nE 's/.*version: "([^"]+)UE".*/\1/p' | head -1)
      b=$(read_file "$1" indextiller.html | sed -nE 's/.*version: "([^"]+)T".*/\1/p' | head -1)
      [ "$a" = "$b" ] && echo "$a" || echo "MISMATCH(index.html=$a, indextiller.html=$b)" ;;
    *) echo "n/a" ;;
  esac
}

REGISTRY="${UE_CLASP_REGISTRY:-$(cd "$ROOT/.." && pwd)/clasp_projects.tsv}"

# registry_rows — the registry without comments/header
registry_rows() {
  [ -f "$REGISTRY" ] || { printf '\n❌ Deploy check: project list %s not found. Nothing was pushed.\n\n' "$REGISTRY" >&2; exit 1; }
  grep -v '^#' "$REGISTRY" | grep -v '^repo	' | grep -v '^[[:space:]]*$'
}

# clasp_target <scriptId> — prints "repo|key|label|live|branches" or nothing
clasp_target() {
  registry_rows | awk -F'\t' -v id="$1" '$3==id {print $1"|"$2"|"$7"|"$5"|"$4; exit}'
}

ZERO=0000000000000000000000000000000000000000
fail() { printf '\n❌ Deploy check: %s\n   Nothing was pushed.\n\n' "$1" >&2; exit 1; }

# ---------------------------------------------------------------------------
# Collect what's being pushed: parallel newline lists (bash 3.2 has no arrays
# of records). Each "row" = branch | destination | target key | version | live
# ---------------------------------------------------------------------------
ROWS=""
add_row() { ROWS="${ROWS}$1|$2|$3|$4|$5
"; }

MODE="${1:-}"; shift || true
CURRENT_BRANCH="$(git -C "$ROOT" branch --show-current 2>/dev/null)"
[ -z "$CURRENT_BRANCH" ] && CURRENT_BRANCH="(detached HEAD)"

case "$MODE" in
  clasp|clasp-raw)
    if [ "$MODE" = clasp-raw ]; then
      id=$(sed -nE 's/.*"scriptId" *: *"([^"]+)".*/\1/p' "$ROOT/.clasp.json" 2>/dev/null)
      [ -z "$id" ] && fail "no scriptId in $ROOT/.clasp.json"
      set -- "$id"
    fi
    [ $# -eq 0 ] && fail "no script ID given"
    ver=$(version_at "")
    # Uncommitted files clasp would upload (it skips .md/.sh/.txt etc.)
    DIRTY=$(git -C "$ROOT" status --porcelain 2>/dev/null | sed 's/^...//' | grep -E '\.(js|gs|html|json)"?$' || true)
    for id in "$@"; do
      t=$(clasp_target "$id")
      [ -z "$t" ] && fail "script ID $id isn't in $REGISTRY.
   Register it first (/deploy → Feature branch → Start), or check you have the right ID."
      IFS='|' read -r t_repo key label live branches <<EOF2
$t
EOF2
      [ "$t_repo" = "$KIND" ] || fail "$label holds $t_repo code, but this is the $KIND repo ($REPO_NAME)."
      printf '%s\n' $(echo "$branches" | tr ',' ' ') | grep -qxF "$CURRENT_BRANCH" || \
        fail "$label only accepts branch(es) '$branches', but you're on '$CURRENT_BRANCH'."
      add_row "$CURRENT_BRANCH" "clasp → $label ($id)" "$key" "$ver" "$live"
      [ "$live" = yes ] && [ -n "$DIRTY" ] && \
        fail "uncommitted changes would go live on $label:
$(printf '%s\n' "$DIRTY" | sed 's/^/     /')
   Commit (and push to GitHub) first."
    done
    ;;
  git)
    remote="${1:-origin}"; url="${2:-}"
    repo_slug=$(printf '%s' "$url" | sed -E 's#.*[:/]([^/]+/[^/]+)$#\1#; s#\.git$##')
    while read -r lref lsha rref rsha; do
      [ -z "${lref:-}" ] && continue
      rname=${rref#refs/heads/}; rname=${rname#refs/tags/}
      lname=${lref#refs/heads/}; lname=${lname#refs/tags/}
      if [ "$lsha" = "$ZERO" ]; then
        add_row "-" "GitHub $repo_slug → DELETE $rname" "github" "n/a" "no"; continue
      fi
      ver=$(version_at "$lsha")
      [ "$rref" = refs/heads/main ] && [ "$lref" != refs/heads/main ] && \
        fail "pushing '$lname' onto GitHub main. Merge into main locally and push main instead."
      case "$rref" in
        refs/tags/*)
          tagver=${rname#v}
          if [ "$KIND" != support ] && [ "$ver" != "$tagver" ]; then
            fail "tag $rname points at code whose version is $ver, not $tagver."
          fi
          add_row "tag $rname" "GitHub $repo_slug → tag $rname" "github" "$ver" "no" ;;
        *)
          live=no; dest="GitHub $repo_slug → branch $rname"
          if [ "$rname" = main ] && [ "$KIND" = support ]; then
            live=yes; dest="$dest — the LIVE WEBSITE (GitHub Pages deploys in ~2 min)"
          fi
          add_row "$lname" "$dest" "github" "$ver" "$live" ;;
      esac
    done
    [ -z "$ROWS" ] && exit 0
    ;;
  log)
    # After a clasp push/deploy: record it, then rebuild DEPLOYMENTS.md
    id="${1:-}"; result="${2:-ok}"; note="${3:-}"
    UE_DIR="$(cd "$ROOT/.." && pwd)"
    LOG="$UE_DIR/deploy_log.tsv"
    t=$(clasp_target "$id")
    t_key=$(printf '%s' "$t" | cut -d'|' -f2); t_label=$(printf '%s' "$t" | cut -d'|' -f3)
    [ -z "$t" ] && t_label="UNREGISTERED $id"
    commit=$(git -C "$ROOT" rev-parse --short HEAD 2>/dev/null)
    git -C "$ROOT" status --porcelain 2>/dev/null | sed 's/^...//' | grep -qE '\.(js|gs|html|json)"?$' && commit="$commit+uncommitted"
    [ -f "$LOG" ] || printf 'when\trepo\tbranch\tversion\tcommit\tkey\tlabel\tscript_id\tresult\tnote\n' > "$LOG"
    printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$(date '+%Y-%m-%d %H:%M')" "$KIND" "$CURRENT_BRANCH" \
      "$(version_at "")" "$commit" "$t_key" "$t_label" "$id" "$result" "$note" >> "$LOG"
    report="$UE_DIR/.claude/skills/deploy/deploy_report.py"
    [ -f "$report" ] && python3 "$report" >/dev/null 2>&1 || true
    exit 0 ;;
  targets)
    # For push scripts: registered projects of type <key> for this repo + branch
    registry_rows | awk -F'\t' -v repo="$KIND" -v key="${1:-}" -v br="$CURRENT_BRANCH" '
      $1==repo && $2==key { n=split($4,b,","); for(i=1;i<=n;i++) if (b[i]==br) print $3"\t"$6 }'
    exit 0 ;;
  *) fail "usage: deploy_check.sh clasp <scriptId>... | clasp-raw | git <remote> <url> | targets <key>" ;;
esac

# ---------------------------------------------------------------------------
# Hard rules
# ---------------------------------------------------------------------------
VERSIONS=""
while IFS='|' read -r br dest key ver live; do
  [ -z "$br" ] && continue
  case "$ver" in MISMATCH*) fail "version strings disagree on $br: $ver" ;; esac
  if [ "$live" = yes ] && [ "$br" != main ] && [ "${br#tag }" = "$br" ]; then
    fail "$dest is live, but you're pushing from '$br'. Live pushes only go out from main."
  fi
  if [ "$ver" != n/a ] && ! printf '%s\n' $VERSIONS | grep -qxF "$ver"; then VERSIONS="$VERSIONS $ver"; fi
done <<EOF
$ROWS
EOF

# ---------------------------------------------------------------------------
# Summary
# ---------------------------------------------------------------------------
SUMMARY="Repo:    $REPO_NAME"
[ -n "${DIRTY:-}" ] && SUMMARY="$SUMMARY
⚠️  Uncommitted changes will be pushed (not on GitHub yet):
$(printf '%s\n' "$DIRTY" | sed 's/^/     /')"
while IFS='|' read -r br dest key ver live; do
  [ -z "$br" ] && continue
  flag=""; [ "$live" = yes ] && flag="  ⚠️ LIVE"
  SUMMARY="$SUMMARY
Branch:  $br
To:      $dest$flag
Version: $ver"
done <<EOF
$ROWS
EOF

# ---------------------------------------------------------------------------
# 1. Env var (agents / release scripts)
# ---------------------------------------------------------------------------
if [ -n "${UE_DEPLOY_CONFIRM:-}" ]; then
  want_branch=$(printf '%s' "$UE_DEPLOY_CONFIRM" | tr ';' '\n' | sed -n 's/^branch=//p' | tr ',' ' ')
  want_vers=$(printf '%s' "$UE_DEPLOY_CONFIRM" | tr ';' '\n' | sed -n 's/^version=//p' | tr ',' ' ')
  want_tgts=$(printf '%s' "$UE_DEPLOY_CONFIRM" | tr ';' '\n' | sed -n 's/^targets=//p' | tr ',' ' ')
  printf '%s\n' "── UE deploy check (confirmed via UE_DEPLOY_CONFIRM) ──" "$SUMMARY" >&2
  while IFS='|' read -r br dest key ver live; do
    [ -z "$br" ] && continue
    case "$br" in tag*|-) ;; *) printf '%s\n' $want_branch | grep -qxF "$br" || fail "branch is '$br' but UE_DEPLOY_CONFIRM says '$want_branch'." ;; esac
    printf '%s\n' $want_tgts | grep -qxF "$key" || fail "destination '$key' ($dest) isn't in UE_DEPLOY_CONFIRM targets '$want_tgts'."
    [ "$ver" = n/a ] || printf '%s\n' $want_vers | grep -qxF "$ver" || fail "code version is $ver but UE_DEPLOY_CONFIRM says '$want_vers'."
  done <<EOF
$ROWS
EOF
  printf '✅ Confirmed.\n\n' >&2
  exit 0
fi

# What the person must type: each distinct version, or for Support (no
# version) the branch name.
if [ -z "$VERSIONS" ]; then
  EXPECT=$(printf '%s\n' "$ROWS" | cut -d'|' -f1 | grep -v '^-$' | grep -v '^$' | sort -u | head -1)
  [ -z "$EXPECT" ] && EXPECT=yes
  ASK_LABEL="This repo has no version number. Type the branch name to confirm"
  EXPECTS="$EXPECT"
else
  ASK_LABEL="Type the version you intend to deploy"
  EXPECTS="$VERSIONS"
fi

# ---------------------------------------------------------------------------
# 2. Terminal
# ---------------------------------------------------------------------------
if [ -z "${CLAUDECODE:-}" ] && (: </dev/tty) 2>/dev/null; then
  {
    printf '\n────────── UE deploy check ──────────\n%s\n─────────────────────────────────────\n' "$SUMMARY"
  } >/dev/tty
  for exp in $EXPECTS; do
    label="$ASK_LABEL"
    [ "$(printf '%s\n' $EXPECTS | wc -l)" -gt 1 ] && label="$label (one of the versions above)"
    printf '%s (blank cancels): ' "$label" >/dev/tty
    read -r typed </dev/tty
    [ -z "$typed" ] && fail "cancelled."
    printf '%s\n' $EXPECTS | grep -qxF "$typed" || fail "you typed '$typed' but the code says '$(echo $EXPECTS)'. Fix the version (or your expectation) first."
    EXPECTS=$(printf '%s\n' $EXPECTS | grep -vxF "$typed")
    [ -z "$EXPECTS" ] && break
  done
  [ -n "$EXPECTS" ] && fail "not every version was confirmed: $(echo $EXPECTS)"
  printf '✅ Confirmed.\n\n' >/dev/tty
  exit 0
fi

# ---------------------------------------------------------------------------
# 3. macOS dialog (VS Code Push/Sync button)
# ---------------------------------------------------------------------------
if [ -z "${CLAUDECODE:-}" ] && command -v osascript >/dev/null 2>&1; then
  for exp in $EXPECTS; do
    typed=$(osascript - "$SUMMARY" "$ASK_LABEL:" <<'APPLESCRIPT' 2>/dev/null
on run argv
  set r to display dialog (item 1 of argv) & return & return & (item 2 of argv) default answer "" with title "UE deploy check" buttons {"Cancel", "Push"} default button "Push" cancel button "Cancel" with icon caution
  return text returned of r
end run
APPLESCRIPT
    ) || fail "cancelled."
    printf '%s\n' $EXPECTS | grep -qxF "$typed" || fail "you typed '$typed' but the code says '$(echo $EXPECTS)'."
    EXPECTS=$(printf '%s\n' $EXPECTS | grep -vxF "$typed")
    [ -z "$EXPECTS" ] && break
  done
  [ -n "$EXPECTS" ] && fail "not every version was confirmed: $(echo $EXPECTS)"
  exit 0
fi

# Agent or other non-interactive caller without UE_DEPLOY_CONFIRM
printf '%s\n' "── UE deploy check ──" "$SUMMARY" >&2
fail "no terminal to confirm in. Get the user's go-ahead, then set
   UE_DEPLOY_CONFIRM=\"branch=<branch>;version=<version>;targets=<github|dev|qa|prod|current,...>\""
