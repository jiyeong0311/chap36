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
<h1>Country Delete 국가 삭제</h1>
<hr>
<a href="/">Home</a>
<hr>
<a href="/country/list">/country/list</a>
<hr>
<section class="container">
	<form action="/country/delete" method="post">
		<div class="mb-3">
			<label class="form-lable mb-2" for="code">code<span>*</span></label>
			<input class="form-control"    id="code"  			name="code"  value="${country.code}" disabled="disabled"/>
			<input class="form-control"    id="code"  			name="code"  value="${country.code}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="name">name<span>*</span></label>
			<input class="form-control"    id="name"  			name="name" value="${country.name}" disabled="disabled"/>
			<input class="form-control"    id="name"  			name="name" value="${country.name}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="continent">continent</label>
			<input class="form-control"    id="continent"	   	name="continent"  value="${country.continent}" disabled="disabled"/>
			<input class="form-control"    id="continent"	   	name="continent"  value="${country.continent}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="region">region</label>
			<input class="form-control"    id="region"	   	name="region" value="${country.region}" disabled="disabled"/>
			<input class="form-control"    id="region"	   	name="region" value="${country.region}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="surfaceArea">surfaceArea</label>
			<input class="form-control"    id="surfaceArea"	   	name="surfaceArea" value="${country.surfaceArea}" disabled="disabled"/>
			<input class="form-control"    id="surfaceArea"	   	name="surfaceArea" value="${country.surfaceArea}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="indepYear">indepYear</label>
			<input class="form-control"    id="indepYear"	   	name="indepYear" value="${country.indepYear}" disabled="disabled"/>
			<input class="form-control"    id="indepYear"	   	name="indepYear" value="${country.indepYear}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="population">population</label>
			<input class="form-control"    id="population"	   	name="population" value="${country.population}" disabled="disabled"/>
			<input class="form-control"    id="population"	   	name="population" value="${country.population}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="lifeExpectancy">lifeExpectancy</label>
			<input class="form-control"    id="lifeExpectancy"	   	name="lifeExpectancy" value="${country.lifeExpectancy}" disabled="disabled"/>
			<input class="form-control"    id="lifeExpectancy"	   	name="lifeExpectancy" value="${country.lifeExpectancy}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="gnp">gnp</label>
			<input class="form-control"    id="gnp"	   	name="gnp"value="${country.gnp}" disabled="disabled"/>
			<input class="form-control"    id="gnp"	   	name="gnp"value="${country.gnp}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="gnpOld">gnpOld</label>
			<input class="form-control"    id="gnpOld"	   	name="gnpOld" value="${country.gnpOld}" disabled="disabled"/>
			<input class="form-control"    id="gnpOld"	   	name="gnpOld" value="${country.gnpOld}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="localName">localName</label>
			<input class="form-control"    id="localName"	   	name="localName" value="${country.localName}" disabled="disabled"/>
			<input class="form-control"    id="localName"	   	name="localName" value="${country.localName}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="governmentForm">governmentForm</label>
			<input class="form-control"    id="governmentForm"	   	name="governmentForm" value="${country.governmentForm}" disabled="disabled"/>
			<input class="form-control"    id="governmentForm"	   	name="governmentForm" value="${country.governmentForm}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="headOfState">headOfState</label>
			<input class="form-control"    id="headOfState"	   	name="headOfState" 	value="${country.headOfState}" disabled="disabled"/>
			<input class="form-control"    id="headOfState"	   	name="headOfState" 	value="${country.headOfState}" type="hidden"/>
		</div>

		<div class="mb-3">
			<label class="form-lable mb-2" for="capital">capital</label>
			<input class="form-control"    id="capital"	   	name="capital" value="${country.capital}" disabled="disabled"/>
			<input class="form-control"    id="capital"	   	name="capital" value="${country.capital}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="code2">code2</label>
			<input class="form-control"    id="code2"	   	name="code2" value="${country.code2}" disabled="disabled"/>
			<input class="form-control"    id="code2"	   	name="code2" value="${country.code2}" type="hidden"/>
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