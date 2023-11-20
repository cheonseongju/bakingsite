// 헤더 부분
$('#menu-slide li').mouseover(function () {
  $(this).find('#submenu').stop().slideDown(500);
}).mouseout(function () {
  $(this).find('#submenu').stop().slideUp(500);
});
const headerToggleBtn = document.querySelector('.fa-bars');
const togglemenu = document.querySelector('.toggle');
headerToggleBtn.addEventListener('click', () => {
  togglemenu.classList.toggle('active');
});

const toggleBtn = document.querySelector('.product > .title');
const menu = document.querySelector('.pro_scroll');
// 토글버튼
toggleBtn.addEventListener('click', function () {

  if (menu.classList.toggle('active')) {
    document.getElementById('up').style.display = 'block';
    document.getElementById('down').style.display = 'none';
  } else {
    document.getElementById('down').style.display = 'block';
    document.getElementById('up').style.display = 'none';
  }
});

//수량 증감
var result1 = 0;
function count1(num) {
  var sum = document.getElementById("result1");
  if (num) {
    result1++;
  } else {
    if (result1 == 0) {
      return;
    }
    result1--;
  }
  sum.setAttribute("value", result1);
}

var result2 = 0;
function count2(num) {
  var sum = document.getElementById("result2");
  if (num) {
    result2++;
  } else {
    if (result2 == 0) {
      return;
    }
    result2--;
  }
  sum.setAttribute("value", result2);
}

var result3 = 0;
function count3(num) {
  var sum = document.getElementById("result3");
  if (num) {
    result3++;
  } else {
    if (result3 == 0) {
      return;
    }
    result3--;
  }
  sum.setAttribute("value", result3);
}

var result4 = 0;
function count4(num) {
  var sum = document.getElementById("result4");
  if (num) {
    result4++;
  } else {
    if (result4 == 0) {
      return;
    }
    result4--;
  }
  sum.setAttribute("value", result4);
}

var result5 = 0;
function count5(num) {
  var sum = document.getElementById("result5");
  if (num) {
    result5++;
  } else {
    if (result5 == 0) {
      return;
    }
    result5--;
  }
  sum.setAttribute("value", result5);
}

var result6 = 0;
function count6(num) {
  var sum = document.getElementById("result6");
  if (num) {
    result6++;
  } else {
    if (result6 == 0) {
      return;
    }
    result6--;
  }
  sum.setAttribute("value", result6);
}
