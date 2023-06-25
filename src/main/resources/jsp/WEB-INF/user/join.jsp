<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/join.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>

<title>Join.jsp</title>
</head>
<body>
<a href="/">Home</a>

    <div class="registration-form">
        <form action="/user/join" method="post">
            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" name="id" value="${users.id}" placeholder="아이디">
            </div>
            <div class="form-group">
                <input type="password" class="form-control item"  name="password" value="${users.password}" placeholder="비밀번호">
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" name="name" value="${users.name}" placeholder="이름">
            </div>
            <div class="form">
                <input type="text" class="form-control item" name="birth" value="${users.birth}" placeholder="1990-01-01">
            </div>
			<div class="form-group">
			    <div class="radio-group">
			        <input type="radio" class="form-control" id="genderMale" name="gender" value="M" ${users.gender == 'M' ? 'checked' : ''}>
			        <label class="form-check-label" for="genderMale">Male</label>
			        <input type="radio" class="form-control" id="genderFemale" name="gender" value="F" ${users.gender == 'F' ? 'checked' : ''}>
			        <label class="form-check-label" for="genderFemale">Female</label>
			    </div>
			</div>
            <div class="form-group">
                <input type="text" class="form-control item" id="email" name="email" placeholder="you@example.com" value="${users.email}" >
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="address" name="address" placeholder="서울특별시 강남구" value="${users.address}">
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="tel" name="tel" placeholder="010-1234-5678" value="${users.tel}">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-block create-account">회원가입</button>
                <hr>
                <a href="/user/login" class="btn btn-block login">로그인</a>
            </div>
        </form>
        <div class="social-media">
            <h5>Sign up with social media</h5>
            <div class="social-icons">
                <a href="https://github.com/" target="_blank"><i class="icon-social-github" title="GitHub"></i></a>
                <a href="https://www.google.com/" target="_blank"><i class="icon-social-google" title="Google"></i></a>
                <a href="https://www.instagram.com/" target="_blank"><i class="icon-social-instagram" title="Instagram"></i></a>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="/css/join.css"></script>


<hr>
<c:if test="${exception ne null}">
	<h1>${exception.message}</h1>
</c:if>

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