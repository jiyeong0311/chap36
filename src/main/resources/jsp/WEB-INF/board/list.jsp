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
<h1>Board List</h1>
<hr>
<a href="/">Home</a>
<hr>
 <section class="container">
	<table class="table table-striped table-bordered table-hover">
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
			<tr>
				<td>${e.boardIdx}</td>
				<td><a href="/board/detail?key=${e.boardIdx}">${e.title}</a></td>
				<td>${e.content}</td>
				<td>${e.writer}</td>
				<td>${e.hitCnt}</td>
				<td>${e.createDatetime}</td>
				<td>${e.createDate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<a href="/board/write">게시글 등록</a>
</section>
</body>
</html>