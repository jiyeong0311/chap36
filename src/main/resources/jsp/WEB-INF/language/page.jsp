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
<title>page.jsp</title>
</head>
<body>
<h3 style="padding: 10px">Country Language Page  <span class="badge bg-info">${paging.pageNum}</span></h3>
<a href="/" class="btn btn-outline-primary btn-sm" style="margin: 10px">Home</a>
<hr>

<section class="container table-responsive" align="center">
	<table class="table table-hover table-bordered">
		<thead class="table-info">
			<tr>
				<th>countryCode</th>
				<th>language</th>
				<th>isOfficial</th>
				<th>percentage</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="e" items="${list}">
				<tr>
					<td>${e.countryCode}</td>
					<td>${e.language}</td>
					<td>${e.isOfficial}</td>
					<td align="right">${e.percentage}</td>
				</tr>			
			</c:forEach>
		</tbody>
	</table>


	<ul class="list-group list-group-horizontal justify-content-center">
		<li class="list-group-item ${paging.pageNum == 1 ? 'disabled' : ''}">
        	<a class="page-link ${paging.pageNum == 1 ? 'text-secondary' : 'text-primary'}" href="/language/page/1/${paging.pageSize}"">&lt;&lt;</a>
    	</li>
		<li class="list-group-item ${paging.pageNum == 1 ? 'disabled' : ''}">
			<a class="page-link ${paging.pageNum == 1 ? 'text-secondary' : 'text-primary'}" href="/language/page/${paging.navigateFirstPage-1}/ ${paging.pageSize}">Previous</a>
		</li>
	<c:forEach var="n" items="${paging.navigatepageNums}">
		<c:choose>
			<c:when test="${n eq paging.pageNum}">
				<li class="list-group-item active"><a href="/language/page/${n}/${paging.pageSize}" class="text-warning">${n}</a></li>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${n ne paging.pageNum}">
				<li class="list-group-item		 "><a href="/language/page/${n}/${paging.pageSize}">${n}</a></li>
			</c:when>
		</c:choose>
	</c:forEach>
		<li class="list-group-item ${paging.pageNum == paging.navigateLastPage ? 'disabled' : ''}">
			<a class="page-link ${paging.pageNum == paging.navigateLastPage ? 'text-secondary' : 'text-primary'}" href="/language/page/${paging.navigateLastPage+1}/${paging.pageSize}">Next</a>
		</li>
		<li class="list-group-item ${paging.pageNum == paging.navigateLastPage ? 'disabled' : ''}">
		    <a class="page-link ${paging.pageNum == paging.navigateLastPage ? 'text-secondary' : 'text-primary'}" href="/language/page/${paging.pages}/${paging.pageSize}">>></a>
		</li>
	</ul>



</section>
<hr>
</body>
</html>