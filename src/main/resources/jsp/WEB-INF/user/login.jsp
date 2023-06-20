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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/login.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>


<title>login.jsp</title>
</head>
<body>

<a class="icon icon-home" href="/">HOME</a>






<c:if test="${exception ne null}">
	<h1>${exception.message}</h1>
</c:if>
    <div class="login-form">
        <form action="/user/login" method="POST">
            <div class="form-icon">
                <span><i class="icon icon-rocket"></i></span>
            </div>
            <div class="form-group">
               <input  class="form-control item"  type="text" placeholder="아이디" name="username" value="${param.username}">
            </div>
            <div class="form-group">
                <input  class="form-control item"  type="password" placeholder="비밀번호" name="password" value="${param.password}"> 
            </div>
			<div class="form-group">
			    <div class="checkbox-group">
			        <input class="form-control" id="remember-me-checkbox" name="remember-me" type="checkbox" checked="checked">
			        <label for="remember-me-checkbox"></label>
			        <span>로그인 상태 유지</span>
			    </div>
			</div>
            <div class="form-group">
                <button type="submit" class="btn btn-block create-account">로그인</button>
				<hr>
                <a class="btn btn-block login" href="/user/join">회원가입</a>
                <hr>
                <a class="btn btn-block find" href="#" id="forgot">계정 찾기</a>
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
    <script src="assets/js/script.js"></script>
</body>
</html>




</body>
</html>