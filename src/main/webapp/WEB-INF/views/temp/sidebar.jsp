<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-lg-3 col-md-5">
	<div class="sidebar">
		<div class="sidebar__item">
			<h4>카테고리</h4>
			<ul>
				<c:if test="${1100 le param.category and param.category lt 1200 or param.category eq 1000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=1101">라면</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=1102">컵라면</a></li>		
				</c:if>
				<c:if test="${1200 le param.category and param.category lt 1300 or param.category eq 1000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=1201">죽/스프/소스</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=1202">즉석밥/컵밥/국</a></li>	
					<li><a href="${pageContext.request.contextPath}/product/productList?category=1203">통조림</a></li>		
				</c:if>
				<c:if test="${1300 le param.category and param.category lt 1400 or param.category eq 1000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=1301">만두</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=1302">튀김류</a></li>	
					<li><a href="${pageContext.request.contextPath}/product/productList?category=1303">안주</a></li>		
				</c:if>				
				<c:if test="${2100 le param.category and param.category lt 2200 or param.category eq 2000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2101">생수</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2102">탄산수</a></li>
				</c:if>
				<c:if test="${2200 le param.category and param.category lt 2300 or param.category eq 2000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2201">두유</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2202">아몬드유</a></li>
				</c:if>
				<c:if test="${2300 le param.category and param.category lt 2400 or param.category eq 2000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2301">차</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2302">홍차</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2303">전통음료</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2304">커피</a></li>
				</c:if>
				<c:if test="${2400 le param.category and param.category lt 2500 or param.category eq 2000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2101">과일주스</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2102">과채주스</a></li>
				</c:if>
				<c:if test="${2500 le param.category and param.category lt 2600 or param.category eq 2000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2501">탄산음료</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2502">이온음료</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2503">비타민음료</a></li>
				</c:if>
				<c:if test="${2600 le param.category and param.category lt 2700 or param.category eq 2000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2601">전통주</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2602">와인</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=2603">위스키</a></li>
				</c:if>					
				<c:if test="${3100 le param.category and param.category lt 3200 or param.category eq 3000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=3101">돼지고기</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=3102">소고기</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=3103">닭고기/오리고기</a></li>			
				</c:if>
				<c:if test="${3200 le param.category and param.category lt 3300 or param.category eq 3000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=3201">생선류</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=3202">연체류/갑각류/어패류</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=3203">해조류/건어물</a></li>
				</c:if>
				<c:if test="${3300 le param.category and param.category lt 3400 or param.category eq 3000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=3301">과일</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=3302">야채</a></li>
				</c:if>	
				<c:if test="${4100 le param.category and param.category lt 4200 or param.category eq 4000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=4101">국산과자</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=4102">수입과자</a></li>
				</c:if>
				<c:if test="${4200 le param.category and param.category lt 4300 or param.category eq 4000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=4200">시리얼</a></li>
				</c:if>
				<c:if test="${4300 le param.category and param.category lt 4400 or param.category eq 4000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=4300">초콜릿</a></li>
				</c:if>
				<c:if test="${4400 le param.category and param.category lt 4500 or param.category eq 4000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=4401">식빵</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=4402">케익</a></li>
					<li><a href="${pageContext.request.contextPath}/product/productList?category=4403">잼</a></li>
				</c:if>
				<c:if test="${4500 le param.category and param.category lt 4600 or param.category eq 4000}">
					<li><a href="${pageContext.request.contextPath}/product/productList?category=4500">아이스크림</a></li>
				</c:if>
            </ul>
		</div>
	</div>
</div>