<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>bakingschool</title>
  <!-- favicon -->
  <link rel="shortcut icon" href="/images/favi/favicon.ico">
  <link rel="apple-touch-icon" sizes="57x57" href="/images/favi/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="/images/favi/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="/images/favi/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="/images/favi/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="/images/favi/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/images/favi/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="/images/favi/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/images/favi/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/images/favi/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192"  href="/images/favi/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/images/favi/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="/images/favi/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/images/favi/favicon-16x16.png">
  <link rel="manifest" href="/images/favi/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/images/favi/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <!-- font awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <!-- google fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Gruppo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
  <script src="/js/jquery-1.12.3.js defer"></script>
  <link href="/css/login.css" rel="stylesheet">
  <link href="/css/login_tab_768.css" rel="stylesheet">
  <link href="/css/login_mobile_500.css" rel="stylesheet">
  <link href="/css/login_mobile_320.css" rel="stylesheet">
</head>

<body>

    <section>
      <div class="section-inner">
        <h2>
          <p>LOGIN</p>
        </h2>
        <div class="bodywrap">
          <div class="login-img">
              <a href="/">
                <img src="/images/login/login_main_img.PNG" alt="로그인 사진">
              </a>
          </div>

          <form name="login-form" role="form" method="post" action="/user/login">
            <div>
              <div class="id">
                <label for="email" class="user-id">아이디</label>
                <input name="email" type="email" id="user-id" placeholder="아이디를 입력해주세요.">
              </div>

              <div class="pw">
                <label for="password" class="user-pw">비밀번호</label>
                <input name="password" type="password" id="user-pw" placeholder="비밀번호를 입력해주세요.">
              </div>
                <c:if test="${not empty loginErrorMsg}">
                    <p class="error">${loginErrorMsg}</p>
                </c:if>
              <div class="btn">
                <button class="login-btn">로그인</button>
              </div>
            </div>
            <div class="rm">
              <input name="remember" type="checkbox" id="remember-id">
              <label for="remember-id" class="re-id">아이디 저장</label>
              <input name="remember" type="checkbox" id="remember-pw">
              <label for="remember-pw">로그인 유지</label>
            </div>
            <div class="user-menu">

              <div class="ms-user">
                <p class="membership">
                  <button type="button" onclick="location.herf='/user/new'">
                  <a href="#" class="ms-a">
                    <i class="fa-solid fa-user"></i>
                    회원가입
                  </a>
                  </button>
                </p>
              </div>
              <div class="fn-user">
                <p class="find">
                  <a href="#" class="find-a">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    ID / PW 찾기
                  </a>
                </p>
              </div>
            </div>


            <div class="sp-lg">
              <h4>SNS 으로 간단하게 로그인 하세요.</h4>
            </div>
            <div class="sp-lg-1">
              <a href="#" class="kakao">
                <img src="/images/login/icon_easy_kakao.png" alt="카카오">
              </a>
              <a href="#" class="naver">
                <img src="/images/login/icon_easy_naver.png" alt="네이버">
              </a>
            </div>
            <div>
            </div>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
          </form>
        </div>
      </div>
    </section>

</body>
</html>