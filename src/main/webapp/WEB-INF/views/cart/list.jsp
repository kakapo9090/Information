<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
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
                <li><a href="#"><i class="fa fa-heart"></i> <span></span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span></span></a></li>
            </ul> 
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__auth">
                <c:if test="${not empty tuser}">
            			<a href="${pageContext.request.contextPath}/link/login"><i class="fa fa-user"></i> Login</a>
            		</c:if>
            		<c:if test="${empty tuser}">
            			<!-- <a type="button" id="btnMyPage"> mypage></a> -->
            			<a href="${pageContext.request.contextPath}/link/login"><i class="fa fa-user"></i> logout</a>
            		</c:if>
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
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <c:if test="${not empty tuser }">
                            	
                            	<a type="button" id="btnMyPage1" href="${pageContext.request.contextPath}/link/mypage"> <i class="fa fa-user"> mypage</i></a>
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
                            <li><a href="${pageContext.request.contextPath}/cart/list.do"><i class="fa fa-shopping-bag"></i> <span>${map.count }</span></a></li>
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
                        <h2>????????????</h2>
                        <div class="breadcrumb__option">
                            <a href="../">Home</a>
                            <span>Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
	
    <!-- ???????????? Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-12 col-md-9">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>????????????</h2>
                        </div>
                        
                        <!-- ???????????? ????????? ?????? begin -->
                        <!-- ?????? ?????? -->
                        <c:choose>
						    <c:when test="${map.count == 0 }">
						    <!-- map??? count??? 0?????? -->
					
						        ??????????????? ???????????????.
						    </c:when>
						    
						    <c:otherwise>
						    <!-- map.count??? 0??? ?????? ???(??????????????? ????????? ?????? ???) -->		
							    <div class="row">  
							    	<form id="form1" name="form1" method="post"
     									   action="${pageContext.request.contextPath}/cart/update.do" style="width: 100%">      
			                            <table class="table">
										  <thead>
										    <tr align="center">
										      <th scope="col" width="15%">?????????</th>
										      <th scope="col" width="40%">?????????</th>
										      <th scope="col" width="10%">??????</th>
										      <th scope="col" width="14%">??????</th>
										      <th scope="col" width="15%">??????</th>
										      <th scope="col" width="6%">??????</th>
										    </tr>
										  </thead>
										  
										  <tbody>
										  	<c:forEach var="row" items="${map.list}" varStatus="i">
								                <tr align="center">
								                	<td style="vertical-align: middle;"><img alt="product image" src="../resources/upload/product/${row.fileName}" style="width: 120px; height: 110px;"></td>
								                    <td style="vertical-align: middle;">${row.product_Name}</td>
								                    <td style="vertical-align: middle;"><fmt:formatNumber value="${row.price}" pattern="#,###,###" /></td>
								                    <td style="vertical-align: middle;">
								                    	<!-- ?????? ?????? -->
									                    	<input type="number" min="1" name="amount" id="amount" style="width:63px; height: 31px; text-align: center;" 
	                    									value="<fmt:formatNumber value="${row.amount}"
	                            								pattern="#,###,###" />" >
                            							
                            							<!-- name?????? ?????? -->
                            								<input type="hidden" name="cart_Id" value="${row.cart_Id}">
                            						</td>
											        <td style="vertical-align: middle;"><fmt:formatNumber value="${row.money}" pattern="#,###,###" /></td>
                   									<td style="vertical-align: middle;"><a href="${pageContext.request.contextPath}/cart/delete.do?cart_Id=${row.cart_Id}">??????</a></td>
								                </tr>
								            </c:forEach>
								            	<tr>	
								                    <td colspan="9" align="right">
								                    	<div style="height: 37px;">
								                    		<span style="font-size: medium; font-weight: bold;">
								                    			???????????? ?????? ????????? &nbsp;
								                    		</span>				                    	
								                    		<span style="font-size: medium; color: red; text-decoration: underline;">
								                    			??? &nbsp;<fmt:formatNumber value="${map.sumMoney}" pattern="#,###,###" />
								                    		</span>
								                    	</div>
								                    	<div style="height: 37px;">
								                    		<span style="font-size: medium; font-weight: bold;">
								                    			?????????(3?????? ?????? ????????? ??????)??? &nbsp;
								                    		</span>				                    	
								                    		<span style="font-size: medium; color: red; text-decoration: underline;">
								                    			??? &nbsp;<fmt:formatNumber value="${map.fee}" pattern="#,###,###" />
								                    		</span>
								                    	</div>								                    	
								                    </td>				                    
								               </tr>
								               
								               <tr>
								               		<td class="p-3 mb-2 bg-light text-dark" colspan="9" align="center">
									               		<div style="height: 37px;">
									               			<span style="font-size: x-large; font-weight: bolder;">
									                    		??? ????????????
									               			</span>
									                    </div>
									                    <div style="height: 50px;">
									               			<span style="font-size: xx-large; font-weight: bolder; color: red; text-decoration: underline;">
									                    	 	??? &nbsp;<fmt:formatNumber value="${map.sumAll}" pattern="#,###,###" />
									               			</span>
									                    </div>									               
								               		</td>
								               </tr>	
								               
								               <tr>
								               		<td colspan="9" align="right">
								               			<button type="submit" id="btnUpdate" class="btn btn-primary" >????????????</button>
									           			 <!-- ?????????????????? -->
									          			<button type="button" id="btnDelete" class="btn btn-danger">???????????? ?????????</button>
								               		</td>
								               </tr>					   
										  </tbody>
										</table>
										
										
								            
				                        <!-- ???????????? begin -->
				                        <div class="row" style="display: flex; justify-content: center;">
				                       		 <button type="button" id="btnOrder" class="btn btn-success btn-lg">????????????</button>
				                        </div>
				                        <!-- ???????????? end -->
									</form>
		                        </div>
						       
						    </c:otherwise>
						</c:choose>
                        <!-- ???????????? ????????? ?????? end -->
                        
                        
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </section>
    <!-- ???????????? Section End -->







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








<script type="text/javascript" src="../resources/js/cart.js">
</script>

</body>

</html>