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

<title>list.jsp</title>
</head>
<body>
<h1>Emp List</h1>
<hr>
<a href="/">Home</a>
<hr>
<section class="container">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>empno</th>
				<th>ename</th>
				<th>gender</th>
				<th>job</th>
				<th>mgr</th>
				<th>hiredate</th>
				<th>sal</th>
				<th>comm</th>
				<th>deptno</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="e" items="${list}">
			<tr>
				<td>${e.empno}</td>
				<td><a href="/emp/detail/${e.empno}">${e.ename}</a></td>
				<td>${e.gender}</td>
				<td>${e.job}</td>
				<td>${e.mgr}</td>
				<td>${e.hiredate}</td>
				<td align="right">${e.sal}</td>
				<td align="right">${e.comm}</td>
				<td>${e.deptno}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</section>
</body>
</html>