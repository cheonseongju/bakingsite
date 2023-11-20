// main menu
const mainmenuLi = $('.main-menu-item');
const submenu = $('.submenu');
submenu.hide();
$('.main-menu-item').mouseover(function() {
  $(this).next().stop().slideDown();
}).mouseout(function() {
  $(this).next().stop().slideUp();
});
submenu.on('mouseenter mouseover', function() {
  $(this).stop().slideDown();
});
submenu.on('mouseleave mouseout', function() {
  $(this).stop().slideUp();
});

// toggle sidebar
const openSidebar = $('.toggle-sidebar');
const sidebar = $('.sidebar');
sidebar.hide();
openSidebar.click(function() {
  $('.sidebar').slideToggle();
});

// modal
$('.delivery-modal').click(function() {
  $('.modal').toggleClass('active');
});