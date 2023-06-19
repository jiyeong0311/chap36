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

<title>delete.jsp</title>
</head>
<body>
<h1>City Delete 도시 삭제</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/city/list">/city/list</a>
<hr>
<section class="container">
	<form action="/city/delete" method="post">
		<div class="mb-3">
			<label class="form-lable mb-2" for="id">id<span>*</span></label>
			<input class="form-control"    id="id"  			name="id" value="${city.id}" disabled="disabled"/>
			<input class="form-control"    id="id"  			name="id" value="${city.id}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="name">name<span>*</span></label>
			<input class="form-control"    id="name"  			name="name"  		value="${city.name}" disabled="disabled"/>
			<input class="form-control"    id="name"  			name="name"  		value="${city.name}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="countryCode">countryCode</label>
			<input class="form-control"    id="countryCode"	   	name="countryCode"  value="${city.countryCode}" disabled="disabled"/>
			<input class="form-control"    id="countryCode"	   	name="countryCode"  value="${city.countryCode}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="district">district</label>
			<input class="form-control"    id="district"	   	name="district"    	value="${city.district}" disabled="disabled"/>
			<input class="form-control"    id="district"	   	name="district"    	value="${city.district}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="population">population</label>
			<input class="form-control"    id="population"	   	name="population"   value="${city.population}" disabled="disabled"/>
			<input class="form-control"    id="population"	   	name="population"   value="${city.population}" type="hidden"/>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>	
</section>
<hr>
<c:if test="${binding.hasErrors()}">
<h2>Error Massage</h2>
<hr>
<c:forEach var="g" items="${binding.globalErrors}">
	<div>${g.code} ${g.defaultMessage}</div>
</c:forEach>
<hr>
<c:forEach var="f" items="${binding.fieldErrors}">
	<div>${f.field} ${f.defaultMessage}</div>
</c:forEach>

</c:if>

</body>
</html>