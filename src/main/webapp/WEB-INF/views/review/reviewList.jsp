<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- review list begin -->
	<table class="review_table">
	<caption style="display: none;">구매후기 제목</caption>
		<thead>
			<tr class="table_th table_tr">
				<th width="10%">번호</th>
				<th width="21%">별점</th>
				<th width="38%">제목</th>
				<th width="20%">작성자</th>
				<th width="11%">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${review}" var="review" varStatus="status">
				<tr class="table_tr">
					<td>${review.re_num}</td>
					<td>
						<div class="star_rating">
							<span class="star-wrap"><span class="real" style="width: ${review.re_star/5*100}%"></span></span>
						</div>
					</td>
					<td class="review_detail" data-review-num="${review.re_num}">${review.re_title}</td>
					<td>${review.re_writer }</td>
					<td>${review.re_date }</td>
				</tr>
				<tr class="review_wrap">
					<td colspan="5" class="table_wrap">
						<div id="review_contents${review.re_num}" style="display: none;">
							
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- review list end -->
	
	
	<!-- review pager begin -->
	<div class="product__pagination">
		<nav>
			<c:if test="${pager.totalCount gt pager.perPage}">
				<a href="#" class="re_page" data-review-page="1">&laquo;</a>
				<a href="#" class="re_page" data-review-page="${pager.startNum-1}">&lt;</a>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
					<a class="re_page-link re_page" data-review-page="${n}">${n}</a>
				</c:forEach>
				<a class="re_page-link re_page" data-review-page="${pager.lastNum+1}">&gt;</a>
				<a class="re_page-link re_page last" data-review-page="${pager.totalPage}">&raquo;</a>
			</c:if>						
		</nav>
    </div>
	<!-- review pager end -->