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

<title>detail.jsp</title>
</head>
<body>
<h1>게시글 상세 페이지</h1>
<hr>
<a href="/">Home</a>
<hr>
<section class="container">
	<table class="table">
		<tbody>
			<tr><th>boardIdx</th><td>${board.boardIdx}</td></tr>
			<tr><th>title</th> <td>${board.title}</td></tr>
			<tr><th>content</th>   <td>${board.content}</td></tr>
			<tr><th>writer</th>   <td>${board.writer}</td></tr>
			<tr><th>hitCnt</th>   <td>${board.hitCnt}</td></tr>
			<tr><th>createDatetime</th>   <td>${board.createDatetime}</td></tr>
			<tr><th>createDate</th>   <td>${board.createDate}</td></tr>
		</tbody>
	</table>
	<hr>
	
	<!-- 	ADMIN 권한만 보임 -->
<%-- 	<sec:authorize access="hasRole('ADMIN')"> --%>
		<menu class="btn-group">
			<a href="/board/write" class="btn btn-primary">게시글 작성</a>
			<a href="/board/update?boardIdx=${board.boardIdx}" class="btn btn-secondary">수정</a>
			<a href="/board/delete?boardIdx=${board.boardIdx}" class="btn btn-danger">삭제</a>
		</menu>
		<hr>
<%-- 	</sec:authorize> --%>
	
	<ul>
		<li><a href="/dept/create">/dept/create</a></li>
		<li><a href="/dept/update?deptno=${dept.deptno}">/dept/update?deptno=${dept.deptno}</a></li>
		<li><a href="/dept/delete?deptno=${dept.deptno}">/dept/delete?deptno=${dept.deptno}</a></li>
	</ul>
</section>
</body>
</html>