// Click any screenshot to see it full size, with its caption, using the
// theme's own lightbox (Magnific Popup, bundled in main.min.js). Click or
// press Esc to close. Applies to every figure image that isn't already a link.
(function ($) {
  if (!$ || !$.fn.magnificPopup) return;
  $('.page__content figure img').each(function () {
    var $img = $(this);
    if ($img.closest('a').length) return;
    var caption = $.trim($img.closest('figure').find('figcaption').text());
    $img.wrap($('<a class="image-zoom">')
      .attr('href', $img.attr('src'))
      .attr('title', caption || $img.attr('alt') || ''));
  });
  $('.page__content a.image-zoom').magnificPopup({
    type: 'image',
    closeOnContentClick: true,
    mainClass: 'mfp-zoom-in',
    removalDelay: 300,
    image: { titleSrc: 'title' }
  });
})(window.jQuery);
