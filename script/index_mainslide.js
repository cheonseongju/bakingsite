// mainslide
const pagerLi = $('.mainslide-pager-wrap > ul > li');
let slideIdx = 0;
$($('.slider > li')[slideIdx]).addClass('on');
$($('.mainslide-pager-wrap li')[slideIdx]).addClass('on');
mainslidePager();
function mainslidePager() {
  pagerLi.click(function() {
    let idx = $('.mainslide-pager-wrap > ul > li').index(this);
    slideIdx = idx;
    // console.log(idx);
  
    $('.mainslide-pager-wrap li').eq(idx).siblings().removeClass('on');
    $('.mainslide-pager-wrap li').eq(idx).addClass('on');
  
    $('.slider > li').eq(idx).siblings().removeClass('on');
    $('.slider > li').eq(idx).addClass('on');
  });
}
$('.mainslide-btn-wrap .prev').click(function() {
  if(slideIdx == 0) {
    slideIdx = 4;
    $('.slider > li').eq(slideIdx).siblings().removeClass('on');
    $('.slider > li').eq(slideIdx).addClass('on');
    $('.mainslide-pager-wrap li').eq(slideIdx).siblings().removeClass('on');
    $('.mainslide-pager-wrap li').eq(slideIdx).addClass('on');
  } else if(slideIdx > 0) {
    slideIdx = slideIdx - 1;
    $('.slider > li').eq(slideIdx).siblings().removeClass('on');
    $('.slider > li').eq(slideIdx).addClass('on');
    $('.mainslide-pager-wrap li').eq(slideIdx).siblings().removeClass('on');
    $('.mainslide-pager-wrap li').eq(slideIdx).addClass('on');
  }
});
$('.mainslide-btn-wrap .next').click(function() {
  if(slideIdx == 4) {
    slideIdx = 0;
    $('.slider > li').eq(slideIdx).siblings().removeClass('on');
    $('.slider > li').eq(slideIdx).addClass('on');
    $('.mainslide-pager-wrap li').eq(slideIdx).siblings().removeClass('on');
    $('.mainslide-pager-wrap li').eq(slideIdx).addClass('on');
  } else if(slideIdx < 4) {
    slideIdx = slideIdx + 1;
    $('.slider > li').eq(slideIdx).siblings().removeClass('on');
    $('.slider > li').eq(slideIdx).addClass('on');
    $('.mainslide-pager-wrap li').eq(slideIdx).siblings().removeClass('on');
    $('.mainslide-pager-wrap li').eq(slideIdx).addClass('on');
  }
});