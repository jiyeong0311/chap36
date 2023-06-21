<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href = "/favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<title>list.jsp</title>
</head>
<body>
<h3 style="padding: 10px">Salgrade List  <span class="badge bg-info"><c:out value="${cnt}" /></span></h3>
<a href="/" class="btn btn-outline-primary btn-sm" style="margin: 10px">Home</a>
<hr>

<section class="container" align="center">
	<table class="table table-hover table-bordered">
		<thead class="table-info">
			<tr>
				<th>grade</th>
				<th>losal</th>
				<th>hisal</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="e" items="${list}">
				<tr>
					<td><a href="/salgrade/detail/${e.grade}">${e.grade}</a></td>
					<td>${e.losal}</td>
					<td>${e.hisal}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</section>

</body>
</html>