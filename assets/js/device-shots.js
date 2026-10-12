---
layout: null
sitemap: false
---
// Phone / Larger screen switch for screenshots. Any image with a sibling file
// named the same plus "-desktop" (companion-balances-tab.jpg →
// companion-balances-tab-desktop.png, any image type) gets a larger-screen
// version. Pages with at least one get a switch at the top; the choice applies
// to every screenshot on the page and is remembered. Default: the reader's own
// screen size.
(function () {
  var desktopFiles = {{ site.static_files | where_exp: "f", "f.path contains '-desktop.'" | map: "path" | jsonify }};
  var byBase = {};
  desktopFiles.forEach(function (p) {
    byBase[p.replace(/-desktop\.[a-z0-9]+$/i, '')] = p;
  });
  var base = '{{ site.baseurl }}';
  function stripBase(src) {
    var path = src.replace(/^https?:\/\/[^\/]+/, '');
    return base && path.indexOf(base) === 0 ? path.slice(base.length) : path;
  }

  var content = document.querySelector('.page__content');
  if (!content) return;
  var shots = [];
  content.querySelectorAll('img').forEach(function (img) {
    var phone = stripBase(img.getAttribute('src') || '');
    var desktop = byBase[phone.replace(/\.[a-z0-9]+$/i, '')];
    if (desktop) shots.push({ img: img, phone: img.getAttribute('src'), desktop: base + desktop });
  });
  if (!shots.length) return;

  var KEY = 'ue_docs_screenshots';
  function saved() { try { return localStorage.getItem(KEY); } catch (e) { return null; } }
  function remember(v) { try { localStorage.setItem(KEY, v); } catch (e) {} }

  var bar = document.createElement('div');
  bar.className = 'device-switch';
  bar.setAttribute('role', 'group');
  bar.setAttribute('aria-label', 'Screenshots');
  bar.innerHTML = '<span class="device-switch__label">Screenshots:</span>' +
    '<button type="button" data-device="phone"><i class="fas fa-mobile-alt" aria-hidden="true"></i> Phone</button>' +
    '<button type="button" data-device="desktop"><i class="fas fa-desktop" aria-hidden="true"></i> Larger screen</button>';
  content.insertBefore(bar, content.firstChild);

  // In a grid that has larger-screen pictures, the phone-only ones are extra
  // phone views (scrolled further down, etc.) that one larger screen already
  // covers: hide them in Larger screen mode.
  var phoneOnly = [];
  content.querySelectorAll('.screenshot-grid').forEach(function (grid) {
    var figs = grid.querySelectorAll('figure');
    var has = shots.some(function (s) { return grid.contains(s.img); });
    if (!has) return;
    figs.forEach(function (f) {
      if (!shots.some(function (s) { return f.contains(s.img); })) phoneOnly.push(f);
    });
  });

  function show(device) {
    document.documentElement.classList.toggle('shots-desktop', device === 'desktop');
    phoneOnly.forEach(function (f) { f.style.display = device === 'desktop' ? 'none' : ''; });
    shots.forEach(function (s) {
      var src = device === 'desktop' ? s.desktop : s.phone;
      s.img.setAttribute('src', src);
      var fig = s.img.closest('figure');
      if (fig) fig.classList.toggle('is-desktop-shot', device === 'desktop'); // lifts the phone-size cap
      var link = s.img.closest('a.image-zoom');
      if (link) link.setAttribute('href', src); // the click-to-zoom picture
    });
    bar.querySelectorAll('button').forEach(function (b) {
      b.setAttribute('aria-pressed', b.getAttribute('data-device') === device ? 'true' : 'false');
    });
  }
  bar.addEventListener('click', function (e) {
    var b = e.target.closest('button');
    if (!b) return;
    var device = b.getAttribute('data-device');
    remember(device);
    show(device);
  });
  show(saved() || (window.matchMedia('(min-width: 900px)').matches ? 'desktop' : 'phone'));
})();
