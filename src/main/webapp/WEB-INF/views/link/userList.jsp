<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록 페이지</title>
<%@ include file="../temp/userHeader.jsp" %>
</head>
<body>
<%@ include file="../temp/userMenu.jsp" %>
	<h2>회원 목록</h2>
	<table border="1" width="700px">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>핸드폰 번호</th>
			<th>주소</th>
		</tr>
		<c:forEach var="row" items="${list}">
		<tr>
			<th>${row.id}</th>
			<th><a href="${path}/link/userView?id=${row.id}">${row.name}</a></th>
			<th>${row.email}</th>
			<th>${row.phone}</th>
			<th>${row.address}</th>
		</tr>
		</c:forEach>
	</table>

</body>
</html>