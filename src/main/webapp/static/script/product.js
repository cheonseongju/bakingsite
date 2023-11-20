jQuery(document).ready(function () {

  // $('#menu-slide>li').mouseover(function(){        
  //   $(this).find('#submenu').stop().slideDown(500);
  // }).mouseout(function(){
  //   $(this).find('#submenu').stop().slideUp(500);
  // });

  $('#menu-slide li').mouseover(function () {
    $(this).find('#submenu').stop().slideDown(500);
  }).mouseout(function () {
    $(this).find('#submenu').stop().slideUp(500);
  });

  // $('#submenu li').mouseover(function(){        
  //   $(this).find('#subsubmenu').stop().slideDown(500);

  // }).mouseout(function(){
  //   $(this).find('#subsubmenu').stop().slideUp(500);
  // });

  // $('#toggleBtn').mouseover(function(){        
  //   $('.toggle').stop().slideDown(500);
  // }).mouseout(function(){
  //   $('.toggle').stop().slideUp(500);
  // });

});
const toggleBtn = document.querySelector('.fa-bars');
const menu = document.querySelector('.toggle');
toggleBtn.addEventListener('click', () => {
  menu.classList.toggle('active');
});