<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 리뷰 상세 페이지 -->
<div>
	<br>
	<div>
		${dto.re_contents}
	</div>
	<c:forEach items="${dto.files}" var="files">
		<c:if test="${not empty files.re_oriName}">
			<div>
				<img alt="" src="../resources/upload/review/${files.re_fileName}" style="width: 400px;">
				<br>
			</div>		
		</c:if>
	</c:forEach>
	<c:if test="${not empty tuser and tuser eq dto.re_writer}">
		<br>
		<button class="review_update" data-review-num="${dto.re_num}">수정하기</button>
		<button class="review_delete" data-review-num="${dto.re_num}">삭제하기</button>
	</c:if>
</div>
