<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>

<title>info.jsp</title>
</head>
<body>
<h1>User Info 회원정보</h1>
<hr>
<a href="/">Home</a>
<hr>
<section class="container">
	<table class="table">
		<tbody>
			<tr><th>id</th>			<td>${users.id}</td></tr>
			<tr><th>password</th> 	<td>${users.password}</td></tr>
			<tr><th>name</th>   	<td>${users.name}</td></tr>
			<tr><th>birth</th>   	<td>${users.birth}</td></tr>
			<tr><th>gender</th>   	<td>${users.gender}</td></tr>
			<tr><th>email</th>   	<td>${users.email}</td></tr>
			<tr><th>address</th>   	<td>${users.address}</td></tr>
			<tr><th>tel</th>   		<td>${users.tel}</td></tr>
		</tbody>
	</table>
	<hr>
	
	<!-- 	ADMIN 권한만 보임 -->
	<sec:authorize access="hasRole('ADMIN')">
		<menu class="btn-group">
			<a href="/user/join" class="btn btn-primary">추가</a>
			<a href="/user/modify?id=${users.id}" class="btn btn-secondary">수정</a>
			<a href="/user/delete?id=${users.id}" class="btn btn-danger">삭제</a>
		</menu>
		<hr>
	</sec:authorize>
	
	<ul>
		<li><a href="/user/join">/user/join</a></li>
		<li><a href="/user/modify?id=${users.id}">/user/modify?id=${users.id}</a></li>
		<li><a href="/user/delete?id=${users.id}">/user/delete?id=${users.id}</a></li>
	</ul>
</section>
</body>
</html>