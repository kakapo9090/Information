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
                    	<li><a href="${pageContext.request.contextPath}/product/productList?category=1000">인스턴트</a></li>
                        <li><a href="${pageContext.request.contextPath}/product/productList?category=2000">음료</a></li>
                        <li><a href="${pageContext.request.contextPath}/product/productList?category=3000">신선식품</a></li>
                        <li><a href="${pageContext.request.contextPath}/product/productList?category=4000">간식</a></li>
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


	
    <!-- 주문정보 Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-9 col-md-5">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>주 문 정 보</h2>
                        </div>
                        

                        <!-- 장바구니 리스트 작성 begin -->
                    
                        <c:choose>
						    <c:when test="${map.count == 0 }">
						    <!-- map의 count가 0일때 -->
					
						        장바구니가 비었습니다.
						    </c:when>
						    
						    <c:otherwise>			     
						    <!-- map.count가 0이 아닐 때(장바구니에 상품이 있을 때) -->						    	
							    <div class="row">  
							    	<form id="form1" name="form1" method="post"
     									   action="${pageContext.request.contextPath}/cart/order.do" style="width: 100%"> 
     									   <!-- 회원 정보 입력 -->
				                        <div class="">
				                            <h3>회원정보</h3>
				                        </div>
				                        <br>
				                        
				                        <div><label>주문자명</label></div>
				                        <div>
										  	<input type="text"  name="name" value="${tuser.name}">
										</div>
										<div><label>전화번호</label></div>
				                        <div>
										  	<input type="tel"  name="phone" value="${tuser.phone }">
										</div>
										<div><label>이메일</label></div>
				                        <div>
										  	<input type="text"  name="email" value="${tuser.email }" style="width: 300px;">
										</div>
										<div><label>주소</label></div>
				                        <div>
										  	<input type="text"  name="address" value="${tuser.address }" style="width: 650px;">
										</div>
										    <div class="section-title product__discount__title">
                     				   </div>
										<!-- 회원정보 입력 end -->     
										<!-- 테이블 begin -->
										    <!-- 소스 시작 -->
				                        	<div class="">
				                           		 <h3>주문상품정보</h3>
				                      		  </div>
				                        <br>
			                            <table class="table">
										  <thead>
										    <tr align="center">
										      <th scope="col" width="15%">이미지</th>
										      <th scope="col" width="46%">상품명</th>
										      <th scope="col" width="10%">가격</th>
										      <th scope="col" width="14%">수량</th>
										      <th scope="col" width="15%">소계</th>
										    </tr>
										  </thead>
										  
										  <tbody>
										  	<c:forEach var="row" items="${map.list}" varStatus="i">
								                <tr align="center">
								                	<td style="vertical-align: middle;"><img alt="product image" src="../resources/upload/product/${row.fileName}" style="width: 100px; height: 80px;"></td>
								                    <td style="vertical-align: middle;">${row.product_Name}</td>
								                    <td style="vertical-align: middle;"><fmt:formatNumber value="${row.price}" pattern="#,###,###" /></td>
								                    <td style="vertical-align: middle;">
									                    ${row.amount}
                            							<!-- hidden속성 전달 -->
                            								<input type="hidden" name="cart_Id" value="${row.cart_Id}">
                            								<input type="hidden" name="product_id" value="${row.product_id}">
                            								<input type="hidden" name="fileNum" value="${row.fileNum}">
                            								<input type="hidden" name="amount" value="${row.amount}">
                            								<input type="hidden" name="product_Name" value="${row.product_Name}">
                            								<input type="hidden" name="fileName" value="${row.fileName}">
                            								<input type="hidden" name="price" value="${row.price}">
                            								<input type="hidden" name="money" value="${row.money}">
                            								
                            						</td>
											        <td style="vertical-align: middle;"><fmt:formatNumber value="${row.money}" pattern="#,###,###" /></td>
								                </tr>
								            </c:forEach>
								            	<tr>	
								                    <td colspan="9" align="right">
								                    <!-- hidden 속성 전달 -->
								                    <input type="hidden" name="sumMoney" value="${map.sumMoney}">
								                    <input type="hidden" name="fee" value="${map.fee}">
								                    <input type="hidden" name="sumAll" value="${map.sumAll}">
								                    	<div style="height: 37px;">
								                    		<span style="font-size: medium; font-weight: bold;">
								                    			장바구니 금액 합계： &nbsp;
								                    		</span>				                    	
								                    		<span style="font-size: medium; color: red; text-decoration: underline;">
								                    			￦ &nbsp;<fmt:formatNumber value="${map.sumMoney}" pattern="#,###,###" />
								                    		</span>
								                    	</div>
								                    	<div style="height: 37px;">
								                    		<span style="font-size: medium; font-weight: bold;">
								                    			배송비： &nbsp;
								                    		</span>				                    	
								                    		<span style="font-size: medium; color: red; text-decoration: underline;">
								                    			￦ &nbsp;<fmt:formatNumber value="${map.fee}" pattern="#,###,###" />
								                    		</span>
								                    	</div>								                    	
								                    </td>				                    
								               </tr>
								               
								               <tr>
								               		<td class="p-3 mb-2 bg-light text-dark" colspan="9" align="center">
									               		<div style="height: 37px;">
									               			<span style="font-size: x-large; font-weight: bolder;">
									                    		총 결제금액
									               			</span>
									                    </div>
									                    <div style="height: 50px;">
									               			<span style="font-size: xx-large; font-weight: bolder; color: red; text-decoration: underline;">
									                    	 	￦ &nbsp;<fmt:formatNumber value="${map.sumAll}" pattern="#,###,###" />
									               			</span>
									                    </div>									               
								               		</td>
								               </tr>	
								               
								               <tr>
									               <td colspan="9" align="left">
									               	<input type="radio" name="payment" checked="checked"><span>&nbsp;무통장입금</span>
									               </td>
								               </tr>
								               				   
										  </tbody>
										</table>
										
										
								            
				                        <!-- 결제 begin -->
				                        <div class="row" style="display: flex; justify-content: center;">
				                        	
					                        <button type="button" id="btnBack" class="btn btn-secondary btn-lg">돌아가기</button>
				                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                       		 <button type="submit" id="btnPay" class="btn btn-success btn-lg" style="width: 114px;">결 제</button>
				                        </div>
				                        <!-- 결제 end -->
									</form>
		                        </div>
						       
						    </c:otherwise>
						</c:choose>
                        <!-- 장바구니 리스트 작성 end -->            
                    </div>     
                </div>
                <div class="col-lg-5 col-md-3">
                		
                </div>
            </div>
        </div>
    </section>
    <!-- 주문정보 Section End -->







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