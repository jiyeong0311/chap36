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

<title>success.jsp</title>
</head>
<body>
<h1>Emp Successful 성공</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/emp/list">/emp/list</a>
<hr>
<br>
<br>
<br>
<c:choose>
	<c:when test="${param.create ne null}"><h1>직원 추가 성공</h1></c:when>
	<c:when test="${param.update ne null}"><h1>직원 수정 성공</h1></c:when>
	<c:when test="${param.delete ne null}"><h1>직원 삭제 성공</h1></c:when>
	<c:otherwise></c:otherwise>
</c:choose>

<hr>
<section class="container">
	<table class="table">
		<tbody>
			<tr><th>empno</th> 		<td>${emp.empno}	</td></tr>
			<tr><th>ename</th> 		<td>${emp.ename}	</td></tr>
			<tr><th>gender</th>		<td>${emp.gender}	</td></tr>
			<tr><th>job</th>   		<td>${emp.job}		</td></tr>
			<tr><th>mgr</th>   		<td>${emp.mgr}		</td></tr>
			<tr><th>hiredate</th> 	<td>${emp.hiredate}	</td></tr>
			<tr><th>sal</th> 		<td>${emp.sal}		</td></tr>
			<tr><th>comm</th> 		<td>${emp.comm}		</td></tr>
			<tr><th>deptno</th> 	<td>${emp.deptno}	</td></tr>
		</tbody>
	</table>
	<hr>
</section>
</body>
</html>