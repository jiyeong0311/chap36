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
<h1>게시글 작성 성공</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/board/list">/board/list</a>
<hr>
<br>
<br>
<br>
<c:choose>
	<c:when test="${param.create ne null}"><h1>게시글 작성 성공</h1></c:when>
	<c:when test="${param.update ne null}"><h1>게시글 수정 성공</h1></c:when>
	<c:when test="${param.delete ne null}"><h1>게시글 삭제 성공</h1></c:when>
	<c:otherwise></c:otherwise>
</c:choose>

<hr>
<section class="container">
	<table class="table">
		<tbody>
			<tr><th>boardIdx</th><td>${board.boardIdx}</td></tr>
			<tr><th>title</th> <td>${board.title}</td></tr>
			<tr><th>content</th>   <td>${board.content}</td></tr>
			<tr><th>writer</th>   <td>${board.writer}</td></tr>
			<tr><th>hitCnt</th>   <td>${board.hitCnt}</td></tr>
			<tr><th>createDatetime</th>   <td>${fn:substring(board.createDatetime, 11, 19)}</td></tr>
			<tr><th>createDate</th>   <td>${board.createDate}</td></tr>
		</tbody>
	</table>
	<hr>
</section>
</body>
</html>