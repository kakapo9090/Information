<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	<c:forEach items="${dto.files}" var="files">
		<c:if test="${not empty files.re_oriName}">
			<div>
				<img alt="" src="../resources/upload/review/${files.re_fileName}" style="width: 400px;">
			</div>		
		</c:if>
	</c:forEach>
	<div>
		${dto.re_contents}
	</div>
</div>