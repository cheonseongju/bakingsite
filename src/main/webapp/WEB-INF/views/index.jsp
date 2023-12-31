<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <link rel="stylesheet" href="/css/header.css" type="text/css">
  <link rel="stylesheet" href="/css/footer.css" type="text/css">
  <link rel="stylesheet" href="/css/style.css" type="text/css">
  <script src="/js/jquery-1.12.3.js"></script>
  <script src="/js/index_header.js" defer></script>
  <script src="/js/index_mainslide.js" defer></script>
</head>
<body>
<%@ include file="layout/header.jsp" %>
    <!-- section - 메인슬라이드 -->
    <section class="mainslide">
      <div class="mainslide-btn-wrap">
        <a href="#" class="prev">
          <i class="fa-solid fa-chevron-left"></i>
        </a>
        <a href="#" class="next">
          <i class="fa-solid fa-chevron-right"></i>
        </a>
      </div>
      <ul class="slider">
        <li>
          <a href="#" class="slider-item">
            <div class="slider-contents slider-contents-1">
              <span class="label">DIY 세트</span>
              <h1 class="title font-cursive">
                <span>벚꽃머랭</span> 만들기
              </h1>
              <div class="desc">
                🌸예쁜 머랭쿠키🌸 <br>
                재료도 넘 간단하고, 만들기도 쉬워요!
              </div>
              <button class="btn-more">more view +</button>
            </div>
          </a>
        </li>
        <li>
          <a href="#" class="slider-item">
            <a href="#" class="slider-item">
              <div class="slider-contents slider-contents-2">
                <span class="label hashtag">#셰프마스터_식용색소</span>
                <span class="label hashtag">#이든 색소 시리즈</span>
                <h1 class="title">
                  <span>컬러플</span> 식용색소
                </h1>
                <div class="desc">
                  Liqua-gel 반액상 타입 <br>
                  다채롭고 간편하게
                </div>
                <button class="btn-more">more view +</button>
              </div>
            </a>
          </a>
        </li>
        <li>
          <a href="#" class="slider-item">
            <a href="#" class="slider-item">
              <div class="slider-contents slider-contents-3">
                <span class="label">#에어프라이어</span>
                <span class="label">#오븐 조리</span>
                <h1 class="title">
                  <span>에어프라이어</span> 
									냉동생지 
                </h1>
                <div class="desc">
                  더 쉽고 간편하게 구워 먹는 <br>
                  바삭바삭한 파이,크로와상,쿠키,바게트
                </div>
                <button class="btn-more">more view +</button>
              </div>
            </a>
          </a>
        </li>
        <li>
          <a href="#" class="slider-item">
            <a href="#" class="slider-item">
              <div class="slider-contents slider-contents-4">
                <span class="label">premium</span>
                <h1 class="title">
                  <span>실팝코팅</span>
                </h1>
                <div class="desc">
                  부채, 조가비, 휘낭새, 오발, 레몬틀<br>
                  가정용, 에어프라이어용, 업소용 등 <br>
                  다양한 사이즈!
                </div>
                <button class="btn-more">more view +</button>
              </div>
            </a>
          </a>
        </li>
        <li>
          <a href="#" class="slider-item">
            <a href="#" class="slider-item">
              <div class="slider-contents slider-contents-5">
                <span class="label">Nielsen Massey</span>
                <h1 class="title">
                  Pure Vanilla Extract
                </h1>
                <div class="desc">
                  닐슨 메시 바닐라향 <br>
                  글루텐프리, KOSHER 인증마크
                </div>
                <button class="btn-more">more view +</button>
              </div>
            </a>
          </a>
        </li>
      </ul>
      <div class="mainslide-pager-wrap">
        <ul>
          <li>
            <a href="#" class="pager-item"></a>
          </li>
          <li>
            <a href="#" class="pager-item"></a>
          </li>
          <li>
            <a href="#" class="pager-item"></a>
          </li>
          <li>
            <a href="#" class="pager-item"></a>
          </li>
          <li>
            <a href="#" class="pager-item"></a>
          </li>
        </ul>
      </div>
    </section>

    <!-- section - 베스트셀러 -->
    <section class="section-product bestseller">
      <h2>인기 상품 BEST SELLER</h2>
      <div class="content-wrap">
        <ul>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_01.jpg" alt="인기상품01">
            </a>
            <p class="title">앵커 천연버터 454g</p>
            <p class="desc">깔끔한 맛으로 앙버터에 많이 사용해요</p>
            <p class="price">
              <s>8,200원</s>
              <span>6,980</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_02.jpg" alt="인기상품02">
            </a>
            <p class="title">그래스랜드 무염버터 454g</p>
            <p class="desc">하얗고 풍미 좋은 버터</p>
            <p class="price">
              <s>8,800원</s>
              <span>6,700</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_03.jpg" alt="인기상품03">
            </a>
            <p class="title">롯데홈버터 450g 베이킹용무염버터</p>
            <p class="desc">최고의 가성비 풍미 좋은 버터(최대구매 20개)</p>
            <p class="price">
              <s>7,600원</s>
              <span>6,890</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_04.jpg" alt="인기상품04">
            </a>
            <p class="title">앵커크림치즈 1kg</p>
            <p class="desc"></p>
            <p class="price">
              <s>15,900원</s>
              <span>12,350</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_05.jpg" alt="인기상품05">
            </a>
            <p class="title">에버휩 식물성 가당 휘핑크림 1030g</p>
            <p class="desc">달달하고 고소한 꾸준히 인기많은 휘핑크림</p>
            <p class="price">
              <s>4,100원</s>
              <span>3,790</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_06.jpg" alt="인기상품06">
            </a>
            <p class="title">온탑휘핑크림 340g(바로 사용 가능)</p>
            <p class="desc">간편한 케익만들기(3호까지 가능해요~)</p>
            <p class="price">
              <s>8,800원</s>
              <span>6,700</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_07.jpg" alt="인기상품07">
            </a>
            <p class="title">앵커 동물성 무가당 휘핑크림 1L</p>
            <p class="desc"></p>
            <p class="price">
              <s>4,100원</s>
              <span>3,750</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_08.jpg" alt="인기상품08">
            </a>
            <p class="title">박력밀가루 1kg(박력분)</p>
            <p class="desc">케익, 쿠키만들때 (최대 구매 10개)</p>
            <p class="price">
              <s>4,100원</s>
              <span>3,750</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_09.jpg" alt="인기상품09">
            </a>
            <p class="title">강력밀가루 1kg(강력분)</p>
            <p class="desc">빵만들때 (최대 구매 10개)</p>
            <p class="price">
              <s>8,200원</s>
              <span>6,980</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_10.jpg" alt="인기상품10">
            </a>
            <p class="title">네덜란드산 코코아파우더 200g</p>
            <p class="desc">유럽산 풍미좋은</p>
            <p class="price">
              <s>4,700원</s>
              <span>4,100</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_11.jpg" alt="인기상품11">
            </a>
            <p class="title">아몬드 분말가루 200g</p>
            <p class="desc">아몬드파우더 100%</p>
            <p class="price">
              <s>4,200원</s>
              <span>3,950</span><span class="unit">원</span>
            </p>
          </li>
          <li class="bestseller-li">
            <a href="#">
              <img src="/images/bestseller/best_seller_12.jpg" alt="인기상품12">
            </a>
            <p class="title">분당 슈가파우더 500g</p>
            <p class="desc"></p>
            <p class="price">
              <s>2,960원</s>
              <span>2,290</span><span class="unit">원</span>
            </p>
          </li>
        </ul>
      </div>
    </section>

    <!-- section - 신상품 -->
    <section class="section-product newproduct">
      <h2>신 상품 NEW PRODUCT</h2>
      <div class="content-wrap">
        <ul>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_01.png" alt="신상품01">
            </a>
            <p class="title">로얄 바우즈만버터 400g</p>
            <p class="desc">깔끔한 맛으로 앙버터에 많이 사용해요</p>
            <p class="price">
              <s>8,400원</s>
              <span>6,300</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_02.png" alt="신상품02">
            </a>
            <p class="title">앵커발효버터 454g</p>
            <p class="desc">프리미엄 무가염 발효버터</p>
            <p class="price">
              <s>9,800원</s>
              <span>6,900</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_03.png" alt="신상품03">
            </a>
            <p class="title">마스카포네1L(아르보리아)</p>
            <p class="desc">낙농강국 이탈리아 아르보리아 마스카포네!</p>
            <p class="price">
              <s>16,800원</s>
              <span>13,800</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_04.png" alt="신상품04">
            </a>
            <p class="title">페이장브레통 휘핑크림1L(동물성,무가당)</p>
            <p class="desc">프랑스산, 방부제X 방목</p>
            <p class="price">
              <s>15,900원</s>
              <span>12,350</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_05.png" alt="신상품05">
            </a>
            <p class="title">라르사 휘핑크림1L(동물성,무가당)</p>
            <p class="desc">스페인산, 빠르고 단단한 휘핑력, 방목</p>
            <p class="price">
              <s>11,000원</s>
              <span>7,200</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_06.png" alt="신상품06">
            </a>
            <p class="title">아티장밀가루2kg(박력마일드)</p>
            <p class="desc"></p>
            <p class="price">
              <s>5,200원</s>
              <span>4,200</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_07.png" alt="신상품07">
            </a>
            <p class="title">강력분1kg(아바론)</p>
            <p class="desc"></p>
            <p class="price">
              <s>5,400원</s>
              <span>4,600</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_08.png" alt="신상품08">
            </a>
            <p class="title">코코넛꽃즙분말500g (코코넛슈가)</p>
            <p class="desc">자연 그대로의 풍부한 단 맛</p>
            <p class="price">
              <s>5,200원</s>
              <span>4,200</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_09.png" alt="신상품09">
            </a>
            <p class="title">반죽기 매트(소음/진동 방지)</p>
            <p class="desc">층간 소음 걱정 끝~</p>
            <p class="price">
              <s>24,800원</s>
              <span>15,000</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_10.png" alt="신상품10">
            </a>
            <p class="title">실팝코팅 바통휘낭시에틀14구</p>
            <p class="desc">혁신적인 실팝(SILPAP-T) 코팅 기술력</p>
            <p class="price">
              <s>64,000원</s>
              <span>57,000</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_11.png" alt="신상품11">
            </a>
            <p class="title">오트리 청크잼1kg(딸기, 복숭아, 사과)</p>
            <p class="desc">부드러운 과일잼에 풍부한 과육량</p>
            <p class="price">
              <s>10,500원</s>
              <span>8,900</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_12.png" alt="신상품12">
            </a>
            <p class="title">판젤라틴(1kg,약500장)</p>
            <p class="desc">무스케익,젤리만들때</p>
            <p class="price">
              <s>58,000원</s>
              <span>44,000</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_13.jpg" alt="신상품13">
            </a>
            <p class="title">토끼틀 12구</p>
            <p class="desc"></p>
            <p class="price">
              <s></s>
              <span>12,900</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_14.jpg" alt="신상품14">
            </a>
            <p class="title">바니프뤼 바닐라 페이스트 100g</p>
            <p class="desc">바닐라빈이 들어있는</p>
            <p class="price">
              <s></s>
              <span>26,000</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_15.jpg" alt="신상품15">
            </a>
            <p class="title">EGS 무선 핸드믹서</p>
            <p class="desc">무선으로 즐기는</p>
            <p class="price">
              <s></s>
              <span>22,500</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_16.jpg" alt="신상품16">
            </a>
            <p class="title">클래식 막대과자만들기세트(11cm)</p>
            <p class="desc">심플하고 고급스러운 빼빼로</p>
            <p class="price">
              <s>11,000원</s>
              <span>9,900</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_17.jpg" alt="신상품17">
            </a>
            <p class="title">스트로베리 막대과자만들기세트(11cm)</p>
            <p class="desc">딸기 다이스를 넣어 상큼하게</p>
            <p class="price">
              <s>13,500</s>
              <span>11,900</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_18.jpg" alt="신상품18">
            </a>
            <p class="title">아메리칸 와플믹스 400g</p>
            <p class="desc">어디서든 즐겨먹는 프리미엄 와플</p>
            <p class="price">
              <s>3,800</s>
              <span>3,100</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_19.jpg" alt="신상품19">
            </a>
            <p class="title">당근케이크믹스 500g</p>
            <p class="desc">국내산 당근 14%</p>
            <p class="price">
              <s></s>
              <span>5,900</span><span class="unit">원</span>
            </p>
          </li>
          <li class="newproduct-li">
            <a href="#">
              <img src="/images/newproduct/new_product_20.jpg" alt="신상품20">
            </a>
            <p class="title">도너츠 틀(3종) 6구</p>
            <p class="desc">도너츠 모양의 마들렌을 구울 수 있는</p>
            <p class="price">
              <s>8,500원</s>
              <span>6,800</span><span class="unit">원</span>
            </p>
          </li>
        </ul>
      </div>
    </section>

    <div class="up">
      <a href="#">
      <i class="fa-solid fa-chevron-up"></i>
      </a>
    </div>
    <!-- footer -->
<%@ include file="layout/footer.jsp" %>
  </div>
  
  <script>
    $('.search-wrap').click(function() {
      $(this).stop().toggleClass('clicked');
    });
  </script>
</body>
</html>