<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    <link rel="stylesheet" href="/css/header.css" type="text/css">
    <link rel="stylesheet" href="/css/footer.css" type="text/css">
    <link rel="stylesheet" href=/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/map.css" type="text/css">
    <script src="/js/jquery-1.12.3.js"></script>
    <script src="/js/index_header.js" defer></script>
    <script src="/js/index_mainslide.js" defer></script>
</head>
<body>

<div class="modal">
    <div class="modal-title">
        현재 가장 빠른 배송 출발일
    </div>
    <div class="modal-body">
        <p>
            <span>실온제품주문</span> : <span id="delivery_date_check_1"></span>
        </p>
        <p>
            <span>냉장제품주문</span> : <span id="delivery_date_check_2"></span>
        </p>
    </div>
</div>
<div class="container-box">
    <!-- top -->
    <div class="top" id="tops">
        <ul class="top-inner">
            <li>
                <a href="#" class="delivery-modal">
                    <img src="/images/delivery_icon.png" alt="deliveryicon">
                    지금 주문하면 언제출발?
                </a>
            </li>
            <li class="top-util">
                <div class="login-wrap">
                    <a href="${pageContext.request.contextPath}/user/login">로그인</a>
                    <a href="${pageContext.request.contextPath}/user/new">회원가입</a>
                    <a href="basket.html" class="shopping-cart">
                        <i class="fa-solid fa-basket-shopping"></i>
                    </a>
                </div>
                <div class="search-wrap">
                    <input type="text" placeholder="내용을 입력해주세요.">
                    <a href="#" class="btn-search">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </a>
                </div>
            </li>
        </ul>
    </div>
    <!-- header -->
    <header class="header" id="headers">
        <div class="header-inner">
            <div class="logo-wrap">
                <a href="/" class="logo">
                    <img src="/images/icon/logo.png" alt="로고">
                </a>
                <a href="/" class="logo-mobile">
                    <img src="/images/icon/logo_m.png" alt="로고">
                </a>
            </div>
            <nav class="main-menu">
                <ul>
                    <li>
                        <a href="product.html" class="main-menu-item">상품</a>
                        <ul class="submenu">
                            <li>
                                <a href="product-material.html">재료</a>
                            </li>
                            <li>
                                <a href="product-tool.html">도구</a>
                            </li>
                            <li>
                                <a href="product-package.html">포장</a>
                            </li>
                            <li>
                                <a href="product-book.html">책</a>
                            </li>
                            <li>
                                <a href="product-theme.html">테마별모음</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="recipe.html" class="main-menu-item">레시피</a>
                        <ul class="submenu">
                            <li>
                                <a href="recipe-yaggwa.html">약과 마카롱</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="community.html" class="main-menu-item">커뮤니티</a>
                        <ul class="submenu">
                            <li><a href="community.html">공지사항</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="community-FNA.html">FnA</a></li>
                            <li><a href="#">상품후기</a></li>
                            <li><a href="community-QNA.html">QnA</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <!-- toggle sidebar -->
            <a href="#" class="toggle-sidebar">
                <i class="fa-solid fa-bars"></i>
            </a>
        </div>
    </header>
    <div class="sidebar">
        <ul>
            <li>
                <a href="product.html" class="sidebar-tit">
                    재료
                </a>
                <ul class="depth2">
                    <li><a href="#">버터/생크림</a></li>
                    <li><a href="#">치즈/연유/분유/기타유가공</a></li>
                    <li><a href="#">견과류/건조과일/마지판</a></li>
                    <li><a href="#">색소</a></li>
                    <li><a href="#">설탕/소금/시럽</a></li>
                    <li><a href="#">냉동생지/반제품</a></li>
                    <li><a href="#">앙금/잼/퓨레/통조림/소스</a></li>
                    <li><a href="#">향료/오일/팽창/첨가</a></li>
                    <li><a href="#">유기농</a></li>
                </ul>
            </li>

            <li>
                <a href="product-tool.html" class="sidebar-tit">
                    도구
                </a>
                <ul class="depth2">
                    <li><a href="#">오븐팬</a></li>
                    <li><a href="#">유산지/테프론시트</a></li>
                    <li><a href="#">성형/디자인툴</a></li>
                    <li><a href="#">데코툴</a></li>
                    <li><a href="#">실리콘</a></li>
                    <li><a href="#">베이킹가전/기계</a></li>
                    <li><a href="#">측정도구</a></li>
                    <li><a href="#">빵칼/주걱/스크래퍼</a></li>
                    <li><a href="#">기타 소도구</a></li>
                </ul>
            </li>

            <li>
                <a href="product-package.html" class="sidebar-tit">
                    포장
                </a>
                <ul class="depth2">
                    <li><a href="#">상자</a></li>
                    <li><a href="#">디저트컵</a></li>
                    <li><a href="#">받침</a></li>
                    <li><a href="#">봉투</a></li>
                    <li><a href="#">유산지</a></li>
                    <li><a href="#">스티커/택</a></li>
                    <li><a href="#">리본/마끈/타이</a></li>
                    <li><a href="#">부자재</a></li>
                </ul>
            </li>

            <li>
                <a href="product-book.html" class="sidebar-tit">
                    책
                </a>
                <ul class="depth2">
                    <li><a href="#">홈베이킹</a></li>
                    <li><a href="#">제과제빵자격증</a></li>
                    <li><a href="#">전문가 이론서</a></li>
                </ul>
            </li>
            <li>
                <a href="#" class="sidebar-tit">
                    레시피
                </a>
                <ul class="depth2">
                    <li><a href="recipe-yaggwa.html">약과 마카롱</a></li>
                    <li><a href="#">쿠키레시피</a></li>
                    <li><a href="#">케이크레시피</a></li>
                </ul>
            </li>

            <li>
                <a href="community.html" class="sidebar-tit">
                    커뮤니티
                </a>
                <ul class="depth2">
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">FnA</a></li>
                    <li><a href="#">상품후기</a></li>
                    <li><a href="#">QnA</a></li>
                </ul>
            </li>

            <li>
                <a href="#" class="sidebar-tit">
                    마이페이지
                </a>
                <ul class="depth2">
                    <li><a href="#">개인정보</a></li>
                    <li><a href="#">주문</a></li>
                    <li><a href="#">반품</a></li>
                    <li><a href="#">후기</a></li>
                    <li><a href="#">문의글</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>

</body>
</html>