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
	<link type="text/css" href="<%=request.getContextPath()%>/resources/css/notiSelect.css" rel="styleSheet">
    
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
                    	<li><a href="${pageContext.request.contextPath}/product/productList?category=1000">????????????</a></li>
                        <li><a href="${pageContext.request.contextPath}/product/productList?category=2000">??????</a></li>
                        <li><a href="${pageContext.request.contextPath}/product/productList?category=3000">????????????</a></li>
                        <li><a href="${pageContext.request.contextPath}/product/productList?category=4000">??????</a></li>
            		</ul>
            	</li><li><a href="${pageContext.request.contextPath}/link/eventx">?????????</a></li>
            	<li><a href="${pageContext.request.contextPath}/link/notices">????????????</a></li>
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
                            <li><a href="#">List</a>
                                <ul class="header__menu__dropdown">
			                    	<li><a href="${pageContext.request.contextPath}/product/productList?category=1000">????????????</a></li>
			                        <li><a href="${pageContext.request.contextPath}/product/productList?category=2000">??????</a></li>
			                        <li><a href="${pageContext.request.contextPath}/product/productList?category=3000">????????????</a></li>
			                        <li><a href="${pageContext.request.contextPath}/product/productList?category=4000">??????</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/link/eventx">?????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/link/notices">????????????</a></li>
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
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=3300">??????/??????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4100">??????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2300">????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=1300">????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=1100">??????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4400">????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2100">??????/?????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=3200">?????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4200">?????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2200">???????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4500">???????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=3100">??????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2600">??????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2400">??????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=1200">????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=4300">?????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/productList?category=2500">??????/??????/?????????</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="../product/productSearch" method="get">
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
                        <h2>Blog</h2>
                        <div class="breadcrumb__option">
                            <a href="../">Home</a>
                            <span>Blog</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- notice ?????? -->
		<!-- ????????????, FAQ -->
		<div class="card card-h " style="width: 150px;">
		  <img src="../resources/img/blog/center2.png" class="card-img-top" alt="...">
		 <div class="card-body card-b">
		 <!-- <p class="card-text">????????? ??????</p> -->
		 <a href="./list" class=" FAQ btn bt-ho">????????????</a>
		 <a href="../question/FAQ" class=" FAQ btn bt-ho">FAQ</a>
		 <c:choose>
		<c:when test="${not empty tuser and tuser.id eq 'test'}">
		 <a href="../question/one_on_one" class=" FAQ  one btn bt-ho">1:1 ??????</a>
		 </c:when>
		<c:when test="${not empty tuser}">
		 <a href="../question/one_insert" class=" FAQ  one btn bt-ho">1:1 ??????</a>
		 </c:when>
		 <c:when test="${empty tuser}">
		 <a href="../link/login" class=" FAQ  one1 btn bt-ho">1:1 ??????</a>
		 </c:when>
		 </c:choose>
    	</div>
    	</div>
		 <!-- ????????????, FAQ ??? -->
		<div class="container-md notiSel">
		<div class="mx-auto noti noti-bt">
		 	<hr>
		 	
		 	<div class="con con1">
		 		<p class="d">${notice.no_num}</p>
		 		<h4 class="d dp">${notice.no_title}</h4>
		 		<p class="d">${notice.no_regdate}</p>
			 	
		 	</div>
		 	<hr>
		 	
		 	<div class="con contents">
		 		<pre>${notice.no_contents}</pre>
		 	</div>
		 	
		 	<hr>
		 	<br>
			 	<c:forEach items="${noti}" var = "no">
			 		<div>
			 			<a href="./down?no_fileName=${no.no_fileName}">${no.no_oriName}</a>
			 		</div>
			 	</c:forEach>
		 	
		 	<br>
		 	<!-- ?????? -->
		 	<div class="modal" id="closeModal"  data-keyboard="false" data-backdrop="static" tabindex="-1">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title">??????</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        <p>??????????????? ?????????????????????????</p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary delModal" value ="true" data-bs-dismiss="modal">??????</button>
			        <button type="button" class="btn btn-primary nodelModal" value="false">?????? ??????</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- ?????? -->
		 	<div class="button3 col-md-5 mx-auto" style="padding-left: 100px;">
		 	<c:if test="${not empty tuser and tuser.id eq 'test'}">
			 	<button type="button" value="${notice.no_num}" class="up btn btn-outline-warning">????????????</button>
			 	<!-- ?????????????????? ????????? -->
			 	<button type="button" value="${notice.no_num}" style="color: black"  class="del btn btn-outline-light">????????????</button>
			 </c:if>	
			 	<button type="button" class=" li btn btn-info mx-auto  ">????????????</button>

		 	</div>
		 	</div>
		</div>
		<!-- notice ?????? ??? -->
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
	$('.li').click(function(){
		location.href="./list";
	});
	//?????? x????????? ??????
	$('.btn-close').click(function(){
		$('#closeModal').modal('hide');
	})
	
	let num = $('.del').val();
	//???????????? ?????? ????????? ??? ????????? ?????????
	$('.del').click(function(){
		$('#closeModal').modal();
	});
	//????????? ?????? ?????? ?????? ????????? ????????????
	$('.delModal').click(function(){
		location.href="./delete?no_num="+num;
	});
	//????????? ?????? ???????????? ?????? ????????? ????????? ??????
	$('.nodelModal').click(function(){
		$('#closeModal').modal('hide');
	});
	//???????????? ?????? ????????? ??????????????? ??????
	$('.up').click(function(){
		location.href="./update?no_num="+num;
	});
	
</script>

</body>

 </html>