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
	<form name="form1" method="post">
		<table border="1" width="400px">
			<tr>
				<td>관리자</td>
				<td><input name="master" value="${dto.master}"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input name="id" value="${dto.id}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" value="${dto.name}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input name="email" value="${dto.email}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>핸드폰 번호</td>
				<td><input name="phone" value="${dto.phone}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input name="address" value="${dto.address}" readonly="readonly"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="수정" id="btnUpdate">
					<input type="button" value="삭제" id="btnUpdate">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>