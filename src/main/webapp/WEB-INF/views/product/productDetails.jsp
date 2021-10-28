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
                            <c:if test="${not empty tuser }">
                            	<a type="button" id="btnMyPage"> <i class="fa fa-user"> mypage</i></a>
                            	<a href="${pageContext.request.contextPath}/link/logout"><i class="fa fa-user"></i> Logout</a>
                            </c:if>
                            <c:if test="${empty tuser}">
                            	<a href="${pageContext.request.contextPath}/link/login" style="display:inline-block"><i class="fa fa-user"></i> Login</a>
                            </c:if>
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
                            <form action="./productSearch" method="get">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
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
					<img alt="" src="../resources/upload/product/${dto.productFilesDTO.fileName}" id="image">
				</div>
				<div class="product_contents">
					<div class="product_info">
						<p class="product_id">${dto.product_id }</p>
						<p class="txt_type product_name">${dto.product_name}</p>
						<p class="txt_type price">${dto.price}</p>
						<p class="txt_type price won">원</p>
						<div class="admin_btn">
							<c:if test="${tuser.id eq 'test' }">
								<a href="./productUpdate?product_id=${dto.product_id}">수정하기</a>
								<a href="./productDelete?product_id=${dto.product_id}">삭제하기</a>
							</c:if>
						</div>
					</div>
					<div class="product_explain">
						<table class="list">
							<tr>
								<td class="tit">별점</td>
								<td class="desc">
									<div class="review_rating" data-product-id="${dto.product_id}">
									</div>
								</td>
							</tr>
							<tr>
								<c:if test="${not empty dto.etc}">
									<td class="tit">원산지</td>
									<td class="desc">${dto.etc}</td>							
								</c:if>
							</tr>
							<tr>
								<td class="tit">배송</td>
								<td class="desc">3,000원 (3만원 이상 구매시 무료배송)</td>
							</tr>							
							<tr>
								<td class="tit">간단설명</td>
								<td class="desc">${dto.explain}</td>
							</tr>
						</table>
					</div>
					<div class="cartPut">
						<form action="../cart/insert.do" method="get" enctype="multipart/form-data">
							<div class="inner_option">
								<input type="hidden" name="id" id="id" value="${tuser_Id}">
								<input type="hidden" name="num" id="num" value="${tuser_Num }">
								<input type="hidden" name="product_id" id="product_id" value="${dto.product_id}">
								<input type="hidden" name="fileNum" id="fileNum" value="${dto.productFilesDTO.fileNum}">
								<span class="tit_item">${dto.product_name}</span>
								<div class="option">
									<span class="count">
										<button type="button" class="count_btn down on">-</button>
										
										<input type="number" readonly="readonly" onfocus="this.blur()" name="amount" value="1" class="inp" data-product-price="${dto.price}">
									
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
								<button type="button" class="btn_txt goCart" data-tuser-id="${tuser.id}">장바구니 담기</button>
							</div>						
						</form>
					</div>
				</div>
			</div>
            <div class="detail_view">
            	<div class="view_tab">
                	<ul>
                    	<li>
                        	<a href="#product-explain" class="tab_link on">상품설명</a>
						</li>
						<li>
							<a href="#product-info" class="tab_link">상품상세정보</a>
						</li>
						<li>
							<a href="#product-review" class="tab_link">후기</a>
						</li>
						<li>
							<a href="#product-shipping" class="tab_link">배송/반품/교환 안내</a>
						</li>
					</ul>
				</div>
				<div class="product_info" id="product-explain">
					<div class="view_title">상품 설명</div>
					<div class="view_contents">
						<p>${dto.explain }</p>
						<p>상품에 대한 설명을 쓰는 곳입니다.</p>
						<p>${dto.explain }</p>
						<p>상품에 대한 설명을 쓰는 곳입니다.</p>
						<p>${dto.explain }</p>
						<img alt="" src="../resources/upload/product/${dto.productFilesDTO.fileName}" id="image">
						<p>상품에 대한 설명을 쓰는 곳입니다.</p>
						<p>${dto.explain }</p>
						<p>상품에 대한 설명을 쓰는 곳입니다.</p>
						<p>${dto.explain }</p>
						<p>상품에 대한 설명을 쓰는 곳입니다.</p>
						<p>${dto.explain }</p>
						<p>상품에 대한 설명을 쓰는 곳입니다.</p>
						<p>${dto.explain }</p>
						<p>상품에 대한 설명을 쓰는 곳입니다.</p>
						
					</div>
				</div>
				<div class="product_info" id="product-info">
					<div class="view_title">상품 상세 정보</div>
					<div class="view_contents">
						<img alt="" src="../resources/upload/product/${dto.productFilesDTO.fileName}" id="image">
						<img alt="" src="../resources/upload/product/product_detailinfo.jpg" width="300px;">
					</div>
				</div>
				<div class="product_info" id="product-review">
					<div class="view_title">제품 후기</div>
					<div class="view_contents">
						<ul class="review_alert">
							<li><span class="list_ico"></span>상품에 대한 리뷰를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 삭제될 수 있습니다.</li>
							<li><span class="list_ico"></span>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 1:1 문의에 남겨주세요.</li>
						</ul>
						
						<div class="review_list" data-product-id="${dto.product_id}">
						</div>
						<div>
							<div class="btn_div">
								<c:if test="${not empty tuser.id }">
									<button type="button" class="btn_write" data-product-id="${dto.product_id}" data-product-name="${dto.product_name}">
										후기 작성
									</button>
								</c:if>
							</div>
							<div class="modal">
								<div class="modal_contents">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product_info" id="product-shipping">
					<div class="view_title">배송 안내</div>
					<div class="view_contents">
						<div class="ship_contents">
							<div class="ship_guide">배송안내</div>
							<p id="shipFee">배송비 3,000원 - 30,000원 이상 구매 시 배송비 무료</p>
							<ul class="shipping">
								<li><span class="list_ico"></span>무료배송은 모든 상품의 합계 금액을 기준으로 적용됩니다.</li>
								<li><span class="list_ico"></span>택배 배송기일은 휴일 포함여부 및 상품 재고상황, 택배사 사정에 의해 지연될 수 있습니다.</li>
								<li><span class="list_ico"></span>신선식품(정육, 청과, 선어 등)의 경우 수취인 부재 또는 배송지 정보 오류로 인해 반송될 경우 교환/환불이 제한됩니다.</li>
								<li><span class="list_ico"></span>냉장/냉동 상품은 순차발송되며 자세한 내용은 주문서에서 확인 가능합니다.</li>
							</ul>
							<div class="ship_guide">교환 및 반품 안내</div>
							<table class="turn_back">
								<tr>
									<td width="26%" class="table_name">교환/반품 신청기간</td>
									<td width="74%">
										<p>단순변심에 관련된 교환/반품 신청은 배송완료 후 7일 이내에 가능합니다.</p>
										<p>상품의 표기/광고내용과 다르거나 계약내용과 다른 경우 상품을 받으신 날로부터 3개월 이내, </p>
										<p>또는 사실을 알게된 날부터 30일 이내에 신청 가능합니다.</p>
									</td>
								</tr>
								<tr>
									<td width="26%" class="table_name">교환/반품 회수(배송)비용</td>
									<td width="74%">
										<p>상품의 불량/하자 또는 표시광고 및 계약 내용과 다른 경우 해당 상품의 회수(배송)비용은 무료이나,</p>
										<p>고객님의 단순변심 및 불만에 관련된 교환/반품의 경우 택배비는 고객님 부담입니다.</p>
										<p>단, 반품/교환비용은 상품 및 반품/교환 사유에 따라 변경될 수 있으므로 1:1문의에서 확인 부탁드립니다.</p>
									</td>
								</tr>
								<tr>
									<td width="26%" class="table_name">교환/반품 불가 안내</td>
									<td width="74%">
										<p>전자상거래 등에서 소비자보호에 관한 법률에 따라 다음의 경우 청약철회가 제한될 수 있습니다.</p>
										<p>고객님이 상품 포장을 개봉하여 사용되어 상품의 가치가 훼손된 경우</p>
										<p>(단, 내용 확인을 위한 포장 개봉의 경우는 예외)</p>
										<p>고객님의 단순변심으로 인한 교환/반품 신청이 상품 수령한 날로부터 7일이 경과한 경우</p>
										<p>신선식품(냉장/냉동 포함)을 단순변심/주문착오로 교환/반품 신청하는 경우</p>
										<p>고객님의 사용 또는 일부 소비에 의해 상품의 가치가 훼손된 경우</p>
										<p>시간 경과에 따라 상품 등의 가치가 현저히 감소하여 재판매가 불가능한 경우</p>
										<p>기타, 상품의 교환, 환불 및 상품 결함 등의 보상은 소비자분쟁해결기준(공정거래위원회 고시)에 의함</p>
									</td>
								</tr>
							</table>
							<ul>
								<li>자세한 내용은 1:1 문의로 부탁드립니다.</li>
								<li>전자상거래 등에서의 소비자 보호에 관한 법률에 의한 반품규정이 판매자가 상품상세 페이지 등에서 개별적으로 고지 또는 지정한 반품조건보다 우선합니다.</li>
							</ul>
							<br>
							<br>
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
    <script type="text/javascript">
    
	    jQuery(document).ready(function($) {
	        // <a></a> 태그 중 #으로 링크된 태그에 기능 설정
	        $("a[href^='#']").click(function(event) {
	            event.preventDefault();
	            var target = $(this.hash);
	            $('html, body').animate({scrollTop: target.offset().top}, 500);
	        });
	    });
    
    </script>
</body>
</html>