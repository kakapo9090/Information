<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-lg-3 col-md-5">
	<div class="sidebar">
		<div class="sidebar__item">
			<h4>Department</h4>
			<ul>
				<c:if test="${category eq 'fresh' or category eq 'meat' or category eq 'fork' or category eq 'beef' or category eq 'chicken'}">
					<li><a href="${pageContext.request.contextPath}/product/productList?c3=beef">소고기</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?c3=fork">돼지고기</a></li>
					<li><a href="#">닭고기, 오리고기</a></li>			
				</c:if>

				<c:if test="${category eq 'fresh' or category eq 'aquatic' or category eq 'fork' or category eq 'beef' or category eq 'chicken'}">
					<li><a href="#">생선류</a></li>
					<li><a href="#">연체,갑각,어패류</a></li>
					<li><a href="#">건어물,해조류</a></li>
				</c:if>
				<c:if test="${category eq 'fresh' or category eq 'vegetable' or category eq 'fruit'}">
					<li><a href="#">과일</a></li>
					<li><a href="#">야채</a></li>
				</c:if>

<!-- 						<li><a href="#">Fresh Meat</a></li>
						<li><a href="#">Vegetables</a></li>
						<li><a href="#">Fruit & Nut Gifts</a></li>
						<li><a href="#">Fresh Berries</a></li>
						<li><a href="#">Ocean Foods</a></li>
						<li><a href="#">Butter & Eggs</a></li>
						<li><a href="#">Fastfood</a></li>
						<li><a href="#">Fresh Onion</a></li>
						<li><a href="#">Papayaya & Crisps</a></li>

						<li><a href="#">Fresh Meat</a></li>
						<li><a href="#">Vegetables</a></li>
						<li><a href="#">Fruit & Nut Gifts</a></li>
						<li><a href="#">Fresh Berries</a></li>
						<li><a href="#">Ocean Foods</a></li>
						<li><a href="#">Butter & Eggs</a></li>
						<li><a href="#">Fastfood</a></li>
						<li><a href="#">Fresh Onion</a></li>
						<li><a href="#">Papayaya & Crisps</a></li>

						<li><a href="#">Fresh Meat</a></li>
						<li><a href="#">Vegetables</a></li>
						<li><a href="#">Fruit & Nut Gifts</a></li>
						<li><a href="#">Fresh Berries</a></li>
						<li><a href="#">Ocean Foods</a></li>
						<li><a href="#">Butter & Eggs</a></li>
						<li><a href="#">Fastfood</a></li>
						<li><a href="#">Fresh Onion</a></li>
						<li><a href="#">Papayaya & Crisps</a></li> -->

			

            </ul>
		</div>
	</div>
</div>