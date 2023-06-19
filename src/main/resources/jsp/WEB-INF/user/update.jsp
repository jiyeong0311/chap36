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

<title>update.jsp</title>
</head>
<body>
<h1>User Update 회원정보 수정</h1>
<hr>
<a href="/">Home</a>
<hr>
<section class="container">
	<form action="/user/update" method="post">
		<div class="mb-3">
			<label class="form-lable mb-2" for="id">id<span>*</span></label>
			<input class="form-control"    id="id" name="id" value="${users.id}" disabled="disabled"/>
			<input class="form-control"    id="id" name="id" value="${users.id}" type="hidden"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="password">password<span>*</span></label>
			<input class="form-control"    id="password"  name="password" value="${users.password}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="name">name</label>
			<input class="form-control"    id="name"	   name="name" value="${users.name}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="birth">birth</label>
			<input class="form-control"    id="birth"	   name="birth" value="${users.birth}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="gender">gender</label>
			<input class="form-control"    id="gender"	   name="gender" value="${users.gender}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="email">email</label>
			<input class="form-control"    id="email"	   name="email" value="${users.email}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="address">address</label>
			<input class="form-control"    id="address"	   name="address" value="${users.address}"/>
		</div>
		<div class="mb-3">
			<label class="form-lable mb-2" for="tel">tel</label>
			<input class="form-control"    id="tel"	   name="tel" value="${users.tel}"/>
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