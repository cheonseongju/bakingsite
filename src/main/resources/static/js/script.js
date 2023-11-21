// mainslide
// li[0]이 기본화면
// const mainSlider = document.querySelector('.mainslide .slider');
// const mainSlideLi = document.querySelectorAll('.mainslide .slider > li');
// mainSlideLi[0].classList.add('on');

$($('.slider > li')[0]).addClass('on');
$($('.mainslide-pager-wrap li')[0]).addClass('on');

let currentIdx = $('.slider > li.on').index();
console.log(currentIdx);
$('.mainslide .next').click(function() {
  $('.slider > li.on').removeClass('on');
  $('.mainslide-pager-wrap li.on').removeClass('on');
  if(currentIdx >= 0) {
    $('.slider > li').eq(currentIdx + 1).addClass('on');
    $('.mainslide-pager-wrap li').eq(currentIdx + 1).addClass('on');
  }
  if(currentIdx == 4) {
    $('.slider > li').eq(0).addClass('on');
    $('.mainslide-pager-wrap li').eq(0).addClass('on');
  }
});
$('.mainslide .prev').click(function() {
  if(currentIdx <= 4) {
    $('.slider > li').siblings().removeClass('on');
    $('.slider > li').eq(currentIdx - 1).addClass('on');

    $('.mainslide-pager-wrap li').siblings().removeClass('on');
    $('.mainslide-pager-wrap li').eq(currentIdx - 1).addClass('on');
  }
  if(currentIdx == 0) {
    $('.slider > li').eq(4).addClass('on');
    $('.mainslide-pager-wrap li').eq(4).addClass('on');
  }
});
// $('.slider > li') {}
// $('.mainslide .prev') {}



// toggle sidebar
const openSidebar = $('.btn-open-menu');
openSidebar.click(function() {
  $('.sidebar').slideToggle();
});