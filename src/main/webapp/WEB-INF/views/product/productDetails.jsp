<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500;700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/productDetails.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/reviewInsert.css" type="text/css">
</head>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="../resources/img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
            	<li class="active"><a href="../">Home</a></li>
            	<li><a href="#">List</a>
            		<ul class="header__menu__dropdown">
	            		<li><a href="${pageContext.request.contextPath}/link/instant">인스턴트</a></li>
	            		<li><a href="${pageContext.request.contextPath}/link/drink">음료</a></li>
	            		<li><a href="${pageContext.request.contextPath}/link/fresh">신선식품</a></li>
	            		<li><a href="${pageContext.request.contextPath}/link/snack">간식</a></li>
            		</ul>
            	</li><li><a href="${pageContext.request.contextPath}/link/eventx">이벤트</a></li>
            	<li><a href="${pageContext.request.contextPath}/link/notices">공지사항</a></li>
            	<li><a href="${pageContext.request.contextPath}/link/center">Center</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">
                            <div class="header__top__right__auth">
                                <a href="#"><i class="fa fa-user"></i> Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="../"><img src="../resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="../">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList">List</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="${pageContext.request.contextPath}/product/productList?category=1000">인스턴트</a></li>
                                    <li><a href="${pageContext.request.contextPath}/product/productList?category=2000">음료</a></li>
                                    <li><a href="${pageContext.request.contextPath}/product/productList?category=3000">신선식품</a></li>
                                    <li><a href="${pageContext.request.contextPath}/product/productList?category=4000">간식</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/link/eventx">이벤트</a></li>
                            <li><a href="${pageContext.request.contextPath}/link/notices">공지사항</a></li>
                            <li><a href="${pageContext.request.contextPath}/link/center">Center</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Smaple List</span>
                        </div>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=3300">과일/야채</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4100">과자</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2300">기타음료</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=1300">냉동식품</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=1100">라면</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4400">베이커리</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2100">생수/탄산수</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=3200">수산물</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4200">시리얼</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2200">식물성음료</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4500">아이스크림</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=3100">정육</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2600">주류</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2400">주스</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=1200">즉석식품</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4300">초콜릿</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2500">탄산/이온/비타민</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="./productList" method="get">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="hidden" name="${paraName}" value="${category}">
                                <input type="text" placeholder="What do yo u need?" name="search">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="../resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Organi Shop</h2>
                        <div class="breadcrumb__option">
                            <a href="../">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

	<!-- Product Details Section Begin -->
	<section class="product_details">
		<div class="container">
			<div class="section_view row">
				<div class="product_img">
					<img alt="" src="../resources/img/product/product-7.jpg" id="image">
				</div>
				<div class="product_contents">
					<div class="product_info">
						<p class="txt_type product_name">${dto.product_name}</p>
						<p class="txt_type price">${dto.price}</p>
						<p class="txt_type price won">원</p>
					</div>
					<div class="product_explain">
						<table class="list">
							<tr>
								<c:if test="${not empty dto.etc}">
									<td class="tit">원산지</td>
									<td class="desc">${dto.etc}</td>							
								</c:if>
							</tr>
							<tr>
								<td class="tit">배송</td>
								<td class="desc">3만원 이상 구매시 무료배송</td>
							</tr>							
							<tr>
								<td class="tit">간단설명</td>
								<td class="desc">${dto.explain}</td>
							</tr>
						</table>
					</div>
					<div class="cartPut">
						<div class="inner_option">
							<span class="tit_item">${dto.product_name}</span>
							<div class="option">
								<span class="count">
									<button type="button" class="count_btn down on">-</button>
									
									<input type="number" readonly="readonly" onfocus="this.blur()" value="1" class="inp" data-product-price="${dto.price}">
								
									<button type="button" class="count_btn up on">+</button>
								</span>
							</div>
							<span class="sum">
								<span class="total_price">${dto.price}</span>
								<span>원</span>
							</span>
						</div>
						<div class="total">
							<span class="tit">총 합계금액  :  </span>
							<span class="sum">
								<span class="total_price">${dto.price}</span>
								<span class="won">원</span>
							</span>
						</div>
						<div class="group_btn">
							<button type="button" class="btn_txt goCart" data-tuser-id="${tuser}" data-product-id="${dto.product_id}">장바구니 담기</button>
							<button type="button" class="btn_txt goBuy" data-tuser-id="${tuser}">바로구매</button>
						</div>						
					</div>
				</div>
			</div>
            <div class="detail_view">
                <div >
                    <div>
                        <div class="view_tab">
                            <ul>
                                <li>
                                    <a href="#">상품상세정보</a>
                                </li>
                                <li>
                                    <a href="#">
										후기
										<span class="count_review"></span>
									</a>
								</li>
								<li>
									<a href="#">배송/반품/교환 안내</a>
								</li>
							</ul>
                        </div>
						<div>
							상세 설명
						</div>
						<div>
							PRODUCT REVIEW
							<ul>
								<li>
									<p class="txt">
										상품에 대한 리뷰를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 삭제될 수 있습니다.
									</p>
								</li>
								<li>
									<p class="txt">
										배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 1:1 문의에 남겨주세요.
									</p>
								</li>
							</ul>
							<div class="review_list" data-product-id="${dto.product_id}">
							
							</div>
							<div>
								<button type="button" class="btn_write" data-product-id="${dto.product_id}" data-product-name="${dto.product_name}">
									후기 작성
								</button>
								<div class="modal">
									<div class="modal_contents">
									</div>
								</div>
							</div>
						</div>
						<nav>

						</nav>
						<div>
							배송 안내
						</div>
                    </div>
					<div>
						<div>

						</div>
					</div>
                </div>
            </div>
		</div>
	</section>
	<!-- Product Details Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="../"><img src="../resources/img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="../resources/img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jquery.nice-select.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>
    <script src="../resources/js/productDetails.js"></script>
    <script src="../resources/js/review.js"></script>
    <script src="../resources/js/reviewInsert.js"></script>
</body>
</html>