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

    <!-- Css Styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" type="text/css">
    <style type="text/css">
    	.blog__sidebar{
    		padding-top: 0;
    		border-left: #7fad39 solid 0.8px;;
    	}
    	.category{
    		padding-left: 10px;
    	}
    	.btn{
    		margin-top: 10px;
    		color: black;
    		width: 200px;
    		border: 1px solid #7fad39;
    		border-radius: 7px;
    	}
    	.bt-ho:hover{
			background-color: #7fad39;
    	}
		.card-h{
			float: left;
			margin-left: 100px; 
			
			
		}
		
		.FAQ{
			width: 130px;
			font-size: 18;
			font-style: sans-serif;
			font-weight: 700;
			align-content: center;
			
		}
		.card-b{
			padding-left: 10px;
		}

		.noti-btn{
			background-color: white;
			border: 2px solid #7fad39;
			width: 200px;
			float: left;
			margin-left: 100px;
			margin-top: 150px;
		}
		.notiCon{
			position: relative;
		} 
		
    </style>
    
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
                            <li><a href="#">List</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="${pageContext.request.contextPath}/link/instant">인스턴트</a></li>
                                    <li><a href="${pageContext.request.contextPath}/link/drink">음료</a></li>
                                    <li><a href="${pageContext.request.contextPath}/link/fresh">신선식품</a></li>
                                    <li><a href="${pageContext.request.contextPath}/link/snack">간식</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/link/eventx">이벤트</a></li>
                            <li><a href="${pageContext.request.contextPath}/notices/list">공지사항</a></li>
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
                            <li><a href="#">과일/야채</a></li>
                            <li><a href="#">과자</a></li>
                            <li><a href="#">기타음료</a></li>
                            <li><a href="#">냉동식품</a></li>
                            <li><a href="#">라면</a></li>
                            <li><a href="#">베이커리</a></li>
                            <li><a href="#">생수/탄산수</a></li>
                            <li><a href="#">수산물</a></li>
                            <li><a href="#">식물성음료</a></li>
                            <li><a href="#">아이스크림</a></li>
                            <li><a href="#">정육</a></li>
                            <li><a href="#">주스</a></li>
                            <li><a href="#">즉석식품</a></li>
                            <li><a href="#">초콜릿</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
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
                        <h2>공지사항</h2>
                        <div class="breadcrumb__option">
                            <a href="../">Home</a>
                            <span>공지사항</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
   
    	<!-- 공지사항, FAQ -->
		<div class="card card-h " style="width: 150px;">
		  <img src="../resources/img/blog/center2.png" class="card-img-top" alt="...">
		 <div class="card-body card-b">
		 <!-- <p class="card-text">상담원 연결</p> -->
		 <a href="./list" class=" FAQ btn bt-ho">공지사항</a>
		 <a href="../question/FAQ" class=" FAQ btn bt-ho">FAQ</a>
		<c:choose>
		<c:when test="${not empty tuser and tuser eq 'test'}">
		 <a href="../question/one_on_one" class=" FAQ  one btn bt-ho">1:1 문의</a>
		 </c:when>
		<c:when test="${not empty tuser}">
		 <a href="../question/one_insert" class=" FAQ  one btn bt-ho">1:1 문의</a>
		 </c:when>
		 <c:when test="${empty tuser}">
		 <a href="../link/login" class=" FAQ  one1 btn bt-ho">1:1 문의</a>
		 </c:when>
		 </c:choose>
    	</div>
    	</div>
		 <!-- 공지사항, FAQ 끝 -->
		 <!-- 공지사항 시작 -->
        <div class="container notiCon">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar" >
                        <div class="blog__sidebar__item">
                            <h4 class="category">Categories</h4>
                            <!-- search form -->
							<form action="./list" method="get">
								<div class="col-md-9 pd">
									
									<button name="search" class="btn bt-ho" type="submit" value="">전체공지</button><br>
									<button name="search" class="btn bt-ho" type="submit" value="[일반공지]">일반공지</button><br>
									<button name="search" class="btn bt-ho" type="submit" value="[배송공지]">배송공지</button><br>
									<button name="search" class="btn bt-ho" type="submit" value="[가격인상공지]">가격공지</button><br>
									<button name="search" class="btn bt-ho" type="submit" value="[상품공지]">상품공지</button><br>
									<button name="search" class="btn bt-ho" type="submit" value="[이벤트공지]">이벤트공지</button>
									
								</div>
							</form>
							<!-- search form -->
                        </div>
                    </div>
                </div>
                <!-- 공지사항 테이블 시작 -->
                <div class="col-lg-8 col-md-7 notiList">
                    <div class="row">
                    	<br>
                    	<br>
	                  <table class="table">
					  <thead>
					    <tr>
					      <th scope="col">Num</th>
					      <th scope="col">Title</th>
					      <th scope="col">Writer</th>
					      <th scope="col">Date</th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:forEach items="${list}" var="list">
					    <tr>
					      <th scope="row" class="num">${list.no_num}.</th>
					      <td><a style="color: black" href="./select?no_num=${list.no_num}">${list.no_title}</a></td>
					      <td>${list.no_writer}</td>
					      <td>${list.no_regdate}</td>
					    </tr>
					    </c:forEach>
					  </tbody>
					</table>
					 <!-- 공지사항 테이블 끝 -->
					<!-- 페이징 처리 -->
					<br>
                        <div class="col-lg-12 mx-auto">
                            <div class="product__pagination blog__pagination ">
                            <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="pn">
                                <a href="./list?pn=${pn}">${pn}</a>
                              </c:forEach>
                              <a href="./list?pn=${pager.lastNum+1}">&raquo;</a>
                            </div>
                        </div>
                        <!-- 페이징 처리 끝-->
                    </div>
                    <c:if test="${not empty tuser and tuser eq 'test'}">
                    <div>
						<a href="./insert">insert</a>
					</div>
					</c:if>
                </div>
                
            </div>
        </div>

    </section>
    <!-- Blog Section End -->

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
	<script type="text/javascript">
		$('.one1').click(function(){
			alert('로그인이 필요한 서비스입니다.');로
		})
	</script>

</body>

</html>