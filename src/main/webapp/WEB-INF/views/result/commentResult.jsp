<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<label id="co_label">[문의 답변]</label><br>
<div class="comment_an">
	<input style="display: none;" id="oneco_num" value="${comment.oneco_num}">
	<span id="co_writer">${comment.oneco_writer} &nbsp &nbsp</span>
	<span id="co_date">답변일: ${comment.oneco_regdate}</span><br><br>
	<div class="textarea"  style="width: 880px; height:240px; border: 1px solid  #D3D3D3;">
	<textarea readonly ="readonly" id="co_con" rows="10" style="width: 880px;">${comment.oneco_contents}</textarea>
	</div><br>
	<c:if test="${tuser eq 'test' }">
		<div>
			<button type="button" id="update" class="btn btn1 bt-ho">수정하기</button>
			<button type="button" id="delete" class="btn btn1 bt-ho">삭제하기</button>
		</div>	
	</c:if>
</div>