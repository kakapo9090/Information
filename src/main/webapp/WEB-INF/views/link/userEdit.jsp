<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 상세조회 페이지</title>
<%@ include file="../temp/userHeader.jsp" %>
</head>
<body>
<%@ include file="../temp/userMenu.jsp" %>
	<h2>회원 상세 정보</h2>
	<form name="form1" action="userList" method="post">
		<table border="1" width="400px">
			<tr>
				<td>관리자</td>
				<td><input name="master" value="${dto.master}" class="put"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" value="${dto.name}" class="put"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input name="email" value="${dto.email}" class="put"></td>
			</tr>
			<tr>
				<td>핸드폰 번호</td>
				<td><input name="phone" value="${dto.phone}" class="put"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input name="address" value="${dto.address}" class="put"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button id="btnu" type="submit">수정</button>
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript" src="../resources/login/js/user.js"></script>
</body>
</html>