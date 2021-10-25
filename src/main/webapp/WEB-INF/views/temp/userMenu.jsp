<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
	<div style="text-align: center;">
		<a href="${path}/link/userList">회원관리</a>
		<a href="${pageContext.request.contextPath}/link/userLogout">Logout</a>
	</div>
	<hr>