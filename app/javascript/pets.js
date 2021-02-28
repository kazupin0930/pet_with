$(function(){
  $('.toTop').click(function () {
    $('footer,html').animate({scrollTop: 0}, 300);
    return false;
  });
});