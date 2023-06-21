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
<h1>language Detail 부서 정보</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/language/list">/language/list</a>
<hr>
<section class="container">
	<table class="table">
		<thead>
		<tr>
                    <th scope="col">글번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">내용</th>
                    <th scope="col">작성자</th>
                    <th scope="col">조회수</th>
                    <th scope="col">작성시간</th>
                    <th scope="col">작성일자</th>
			</tr>
		</thead>
		<tbody>
		  <c:forEach var="e" items="${list}">
			<tr><th>countryCode</th><td>${e.countryCode}</td></tr>
			<tr><th>language</th> <td>${e.language}</td></tr>
			<tr><th>isOfficial</th>   <td>${e.isOfficial}</td></tr>
			<tr><th>percentage</th>   <td>${e.percentage}</td></tr>
			</c:forEach>
		</tbody>
	</table>
	<hr>
	
	<!-- 	ADMIN 권한만 보임 -->
	<sec:authorize access="hasRole('ADMIN')">
		<menu class="btn-group">
			<a href="/dept/create" class="btn btn-primary">추가</a>
			<a href="/dept/update?deptno=${dept.deptno}" class="btn btn-secondary">수정</a>
			<a href="/dept/delete?deptno=${dept.deptno}" class="btn btn-danger">삭제</a>
		</menu>
		<hr>
	</sec:authorize>
	
	<ul>
		<li><a href="/dept/create">/dept/create</a></li>
		<li><a href="/dept/update?deptno=${dept.deptno}">/dept/update?deptno=${dept.deptno}</a></li>
		<li><a href="/dept/delete?deptno=${dept.deptno}">/dept/delete?deptno=${dept.deptno}</a></li>
	</ul>
</section>
</body>
</html>