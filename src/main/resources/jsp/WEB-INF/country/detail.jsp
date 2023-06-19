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
<h1>Country Detail 나라 정보</h1>
<hr>
<a href="/">Home</a>
<hr>
<c:choose>
	<c:when test="${empty param.pageNum}">
		<a href="/country/list">/coutry/list</a>
	</c:when>
	<c:when test="${not empty param.pageNum}">
		<a href="/country/page/${param.pageNum}/${param.pageSize}">
			/country/page/${param.pageNum}/${param.pageSize}
		</a>
	</c:when>
</c:choose>
<hr>
<section class="container">
	<table class="table">
		<tbody>
				<tr><th>code</th>              <td>${country.code}</td></tr>              
				<tr><th>name</th>              <td>${country.name}</td></tr>              
				<tr><th>continent</th>         <td>${country.continent.symbol}</td></tr>  
				<tr><th>region</th>            <td>${country.region}</td></tr>            
				<tr><th>surfaceArea</th>       <td>${country.surfaceArea}</td></tr>       
				<tr><th>indepYear</th>         <td>${country.indepYear}</td></tr>         
				<tr><th>population</th>        <td>${country.population}</td></tr>        
				<tr><th>lifeExpectancy</th>    <td>${country.lifeExpectancy}</td></tr>    
				<tr><th>gnp</th>               <td>${country.gnp}</td></tr>               
				<tr><th>gnpOld</th>            <td>${country.gnpOld}</td></tr>            
				<tr><th>localName</th>         <td>${country.localName}</td></tr>         
				<tr><th>governmentForm</th>    <td>${country.governmentForm}</td></tr>    
				<tr><th>headOfState</th>       <td>${country.headOfState}</td></tr>       
				<tr><th>capital</th>           <td>${country.capital}</td></tr>           
				<tr><th>code2</th>             <td>${country.code2}</td></tr>             
		</tbody>
	</table>
</section>
</body>
</html>