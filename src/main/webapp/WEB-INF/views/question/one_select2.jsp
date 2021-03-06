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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/oneSelect.css" type="text/css">

    
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
                            <li><a href="${pageContext.request.contextPath}/notices/list">????????????</a></li>
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
                        <h2>1:1 ?????? ??????</h2>
                        <div class="breadcrumb__option">
                            <a href="../">Home</a>
                            <span>?????? ??????</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
        
        <!-- ????????????, FAQ -->
		<div class="card card-h " style="width: 150px;">
		  <img src="../resources/img/blog/center2.png" class="card-img-top" alt="...">
		 <div class="card-body card-b">
		 <!-- <p class="card-text">????????? ??????</p> -->
		 <a href="../notices/list" class=" FAQ btn bt-ho">????????????</a>
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
		 
		<!-- ?????? ?????? ?????? ?????? --> 
		 <input id="num" value="${oneDTO.one_num}" style="display: none;">
		 <div class="container-lg oneSel">
		 	<div class="oneTB col-md-10 mx-auto">
				<table class="table seltb">
					<colgroup>
						<col width="16%">
						<col>
						<col width="16%">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">??????</th>
							<td colspan="3">${oneDTO.one_title}</td>
						</tr>
						<tr>
							<th scope="row">?????? ????????????</th>
							<td>${oneDTO.one_cate}</td>
							<th scope="row">?????????</th>
							<td>${oneDTO.one_regdate}</td>
						</tr>
						<tr>
							<th scope="row">?????????</th>
							<td id="writer">${oneDTO.one_writer}</td>
							<th scope="row">?????? ??????</th>
							<td>${oneDTO.one_answer}</td>
						</tr>
						<tr>
							<th scope="row">?????? ??????</th>
							<td colspan="3"></td>
						</tr>
						
					</tbody>
				</table>
				
				<div class="oneCon">
					
					<div class="contents">${oneDTO.one_contents}</div>
				</div>
		
		 		<hr>	
		 	<!-- ????????? ??????,?????? ?????? -->
		 	<c:if test="${tuser.id eq oneDTO.one_writer}">
		 	<div class="one_controlButton">
		 		<button type="button" class="btn one_update">????????????</button>
		 		<button type ="button" class="btn one_delete">????????????</button>
		 	</div>
		 	</c:if>
		 <!-- ???????????? ?????? -->
		<c:if test="${tuser.id eq 'test'}">
		 <div >
		 	<button  class=" btn one_cobtn btn-info">????????????</button>
			 	<form action="./commentInsert" method="post" id="form" class="one_comment">
			 	<input style="display: none;" id="one_num" name="one_num" value="${oneDTO.one_num}">
			 	
			 	
			 	</form>
		 </div>
		 </c:if>
		 
		 <!-- ?????? ?????? ???????????? -->
		 <div class="comment" data-one-num="${oneDTO.one_num}">
		 
		 </div>
		 <br>
		 <!-- 1:1 ?????? ??? -->
		 	<div class="col-md-6 mx-auto" style="text-align: center;">
		 		<button type="button" class="btn bt-ho btn1 one_list" style="margin: auto; width: 50%;">1:1?????? ??????</button>
		 	</div>
			</div>
		 </div> 
		 
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
    <script src="../resources/js/one_comment.js"></script>
</body>
<script type="text/javascript">
//???????????? ???????????? ?????? ????????? ?????? ???????????? ??????
$('.one_list').click(function(){
	location.href="./one_on_one";
});
	let num = $('#num').val();
	let one_writer = $('#writer').text();
	console.log(one_writer);
	//console.log(num);
	$('.one_delete').click(function(){
		let delOK= confirm('???????????? ???????????? ????????? ?????? ???????????????. ?????????????????????????');
		if(delOK){
			$.ajax({
				type:'GET',
				url: './delete?one_num='+num,
				data: {
					one_num: num,
					one_writer: one_writer
				},
				success: function(){
					alert('????????????')
					location.href="./one_on_one?one_writer="+one_writer;
				},
				error: function(){
					alert('????????????')
				}
						
			})
		}else{
			 location.href="./one_select?one_num="+num;
		}
		
	});
	
	//?????? ?????? ???????????? ?????? ??????
	$('.one_update').click(function(){
		let contents = $('.contents').html();
		$('.contents').css('display', 'none');
		$('.one_controlButton').css('display','none');
		
		let newContents = '<textarea class="newtext" id="one_contents" name="one_contents" style="height:248px; width:893px;" >';
		newContents = newContents+contents+'</textarea><br><br>';
		newContents = newContents+'<button type="button" class="btn update_ok">????????????</button>';
		newContents = newContents+'<button type ="button" class="btn update_cancel">????????????</button>';
		console.log(newContents);
		$('.oneCon').append(newContents);
	})
	
	//?????? ?????? ???????????? ?????? ?????????
	
	$('.oneCon').on('click', '.update_ok', function(){
		let updateContents = $(this).prev().prev().prev().val();
		console.log("????????? ?????????"+updateContents);
		
		$.ajax({
			type:'POST',
			url:'./update',
			data:{
				one_contents:updateContents,
				one_num:num
				},
			success: function(result){
				if(result>0){
					$('.oneCon').children().css('display','block');
					$('.oneCon').children('.newtext').remove();
					$('.oneCon').children('.update_ok').remove();
					$('.oneCon').children('.update_cancel').remove();
					$('.oneCon').children().html(updateContents);
					$('.one_controlButton').css('display','block');
					
				}else{
					console.log('?????? ?????? ?????? result??? 0??????');
				}
			},
			error: function(){
				alert('???????????? ?????? ??????');
			}
			
		})
		
	});
	
	//?????? ?????? ???????????? ?????? ?????????
	$('.oneCon').on('click', '.update_cancel', function(){
		$('.one_controlButton').css('display','block');
		$('.oneCon').children().css('display','block');
		$('.oneCon').children('.newtext').remove();
		$('.oneCon').children('.update_ok').remove();
		$('.oneCon').children('.update_cancel').remove();
		
	});
	
	
//?????? ????????? ????????? ????????? ???????????? ?????? ?????? ?????????
	
	$('.one_comment').on('click', '#submit', function(){
		//alert('click');
		let oneco_contents = $('#oneco_contents').val();
		console.log(oneco_contents);
		let one_num = $('#one_num').val();
		console.log(one_num);
		$.ajax({
			type: 'POST',
			url: './commentInsert',
			data: {
				oneco_contents: oneco_contents,
				one_num: one_num
			},
			success:function(result){
				console.log(result.trim());
				
				commentSelect();
				$('.one_comment').attr('style', 'display:none');
			},
			error:function(xhr, status, error){
				console.log(error);
			}
		});
	});
	
	
	//??????????????????
	function commentSelect(){
		let one_num = $('.comment').attr('data-one-num');
		$.ajax({
			type: 'GET',
			url: './commentSelect',
			data: {
				one_num : one_num
			},
			success: function(result){
				result = result.trim();
				$('.comment').html(result);
				console.log($('.comment').html(result));
			},
			error:function(xhr, status, error){
				console.log(error);
			}
		})
	};
	
	//????????? ????????? ????????? ????????? ?????? ?????????
	let one_num = $('.comment').attr('data-one-num');
	$.ajax({
		type: 'POST',
		url: './commentNum',
		data: {one_num: one_num},
		success: function(result){
			//alert(result);
			if(result>0){
				commentSelect();
				$('.one_cobtn').css('display','none');
				$('.one_update').css('display', 'none');
			}else{
				$('.one_cobtn').css('display','block');
				
			}
		},
		error : function(){
			alert('??????');
		}
	})
	
	//?????? ???????????? - ??????????????? ???????????? ?????? ????????? ??????????????? text area??? ??????, ????????????/???????????? ?????? ??????
	$('.comment').on('click', '#update', function(){
		let oneco_contents = $('#co_con').val();
		alert(oneco_contents)
		$('.textarea').css('display', 'none');
		
		let content = '<textarea class="newtext" id="co_con" rows="10" style="width: 880px;">';
		content = content + oneco_contents.trim()+'</textarea>'
		content = content + '<button type="button" id="upcontent" class="btn bt-ho">????????????</button>';
		content = content+ '<button type="button" id="delcontent" class="btn bt-ho">????????????</button>'
		console.log(content);
		$('.comment_an').append(content);
	});
	
	//????????? ???????????? ????????? ???????????? ???
	$('.comment').on('click', '#upcontent', function(){
		let contents = $(this).prev().val();
		console.log(contents);
		let oneco_num = $('#oneco_num').val();
		
		$.ajax({
			type: 'POST',
			url: './commentUpdate',
			data: {
				oneco_contents : contents,
				oneco_num : oneco_num
			},
			success: function(result){
				if(result>0){
					$('.comment_an').children().css('display', 'block');
					$('.comment_an').children('input').css('display', 'none');
					$('.comment_an').children('.newtext').remove();
					$('#co_con').val(contents)
					//$('.comment_an').children('.textarea').html(contents);
					$('.textarea').next().next().next('button').remove();
					$('.textarea').next().next().next('button').remove();
				}else{
					console.log('??????');
				}
			},
			error:function(xhr, status, error){
				console.log(error);
			}
			
		})
	});
	
	//????????? ???????????? ???????????? ???????????? ????????????
	$('.comment').on('click', '#delcontent', function(){
		$('.textarea').css('display', 'block');
		$('.newtext').remove();
		$('.textarea').next().next().next('button').remove();
		$('.textarea').next().next().next('button').remove();
		
	});
	//?????? ????????????
	$('.comment').on('click', '#delete', function(){
		let oneco_num = $('#oneco_num').val();
		//alert(oneco_num);
		$.ajax({
			type: 'POST',
			url: './commentDelete',
			data: {oneco_num:oneco_num},
			success: function(result){
				if(result>0){
					alert('????????? ?????????????????????.');
					$('.one_cobtn').css('display','block');
					$('.comment').css('display', 'none');
					//delcount();
				}else{
					alert('????????? ??????????????????.');
				}
			},
			error: function(){
				console.log('??????');
			}
		});
	});
	
</script>
</html>