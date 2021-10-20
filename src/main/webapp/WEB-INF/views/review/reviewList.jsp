<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- review list begin -->
	<table class="review_table">
	<caption style="display: none;">구매후기 제목</caption>
		<thead>
			<tr>
				<th width="5%">번호</th>
				<th width="50%">제목</th>
				<th width="20%">작성자</th>
				<th width="25%">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${review}" var="review" varStatus="status">
				<tr>
					<td>${review.re_num}</td>
					<td class="review_detail" data-review-num="${review.re_num}">${review.re_title}</td>
					<td>${review.re_writer }</td>
					<td>${review.re_date }</td>
				</tr>
				<tr class="review_wrap">
					<td colspan="4">
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
				<a href="#" class="page" data-review-page="1">&laquo;</a>
				<a href="#" class="page" data-review-page="${pager.startNum-1}">&lt;</a>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
					<a class="page-link page" data-review-page="${n}">${n}</a>
				</c:forEach>
				<a class="page-link page" data-review-page="${pager.lastNum+1}">&gt;</a>
				<a class="page-link page last" data-review-page="${pager.totalPage}">&raquo;</a>
			</c:if>						
		</nav>
    </div>
	<!-- review pager end -->
