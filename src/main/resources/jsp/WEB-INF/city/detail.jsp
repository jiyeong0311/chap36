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
<h1>City Detail 도시 정보</h1>
<hr>
<a href="/">Home</a>
<hr>
<c:choose>
	<c:when test="${empty param.pageNum}">
		<a href="/city/list">/city/list</a>
	</c:when>
	<c:when test="${not empty param.pageNum}">
		<a href="/city/page/${param.pageNum}/${param.pageSize}">
			/city/page/${param.pageNum}/${param.pageSize}
		</a>
	</c:when>
</c:choose>
<hr>
<section class="container">
	<table class="table">
		<tbody>
			<tr><th>id</th> 		<td>${city.id}			</td></tr>
			<tr><th>name</th> 		<td>${city.name}		</td></tr>
			<tr><th>countryCode</th><td>${city.countryCode}	</td></tr>
			<tr><th>district</th>	<td>${city.district}	</td></tr>
			<tr><th>population</th>	<td>${city.population}	</td></tr>
		</tbody>
	</table>
	<hr>
	<menu class="btn-group">
		<a href="/city/create" class="btn btn-primary">추가</a>
		<a href="/city/update?id=${city.id}" class="btn btn-secondary">수정</a>
		<a href="/city/delete?id=${city.id}" class="btn btn-danger">삭제</a>
	</menu>
	<hr>
	<ul>
		<li><a href="/city/create              ">/city/create</a></li>
		<li><a href="/city/update?id=${city.id}">/city/update?id=${city.id}</a></li>
		<li><a href="/city/delete?id=${city.id}">/city/delete?id=${city.id}</a></li>
	</ul>
</section>
</body>
</html>