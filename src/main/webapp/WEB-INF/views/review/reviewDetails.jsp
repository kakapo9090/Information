<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 리뷰 상세 페이지 -->
<div class="re_contents">
	<pre class="contents_area">
		${dto.re_contents}
	</pre>
	<c:forEach items="${dto.files}" var="files">
		<c:if test="${not empty files.re_oriName}">
			<div>
				<img alt="" src="../resources/upload/review/${files.re_fileName}" style="width: 400px;">
				<br>
			</div>		
		</c:if>
	</c:forEach>
	<div class="review_btnGroup">
		<c:if test="${not empty tuser.id and tuser.id eq dto.re_writer}">
			<button class="review_update" data-review-num="${dto.re_num}">수정하기</button>
		</c:if>
		<c:if test="${not empty tuser.id and tuser.id eq dto.re_writer or tuser.id eq 'test' }">
			<button class="review_delete" data-review-num="${dto.re_num}">삭제하기</button>
		</c:if>
	</div>
</div>