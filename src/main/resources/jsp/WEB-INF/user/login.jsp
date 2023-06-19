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
<link href="/css/login.css" rel="stylesheet" type="text/css">


<title>login.jsp</title>
</head>
<body>
<a href="/">HOME</a>
<%-- <section class="container"> --%>
<!-- 	<form  action="/user/login" method="post"> -->
<%-- 		<input class="form-control" name="username" value="${param.username}"/> --%>
<!-- 		<hr> -->
<%-- 		<input class="form-control" name="password" type="password" value="${param.password}"/> --%>
<!-- 		<hr> -->
<!-- 		<input name="remember-me" type="checkbox" checked="checked"> Remember me<br> -->
<!-- 		<input class="btn btn-primary" type="submit"/> -->
<!-- 		<a href="/user/join" class="btn btn-primary">회원가입</a> -->
<!-- 	</form> -->
<%-- </section> --%>
<c:if test="${exception ne null}">
	<h1>${exception.message}</h1>
</c:if>
<div class="container">
    <div class="row">
        <div class="offset-md-2 col-lg-5 col-md-7 offset-lg-4 offset-md-3">
            <div class="panel border bg-white">
                <div class="panel-heading">
                    <h3 class="pt-3 font-weight-bold">Login</h3>
                </div>
                <div class="panel-body p-3">
                    <form action="/user/login" method="POST">
                        <div class="form-group py-2">
                            <div class="input-field"> <span class="far fa-user p-2"></span> 
                            <input type="text" placeholder="Id or Email" name="username" value="${param.username}"> </div>
                        </div>
                        <div class="form-group py-1 pb-2">
                            <div class="input-field"> <span class="fas fa-lock px-2"></span> 
                            <input type="password" placeholder="Password" name="password" value="${param.password}"> 
                            <button class="btn bg-white text-muted"> <span class="far fa-eye-slash"></span> 
                            </button> 
                            </div>
                        </div>
                        <div class="form-inline"> 
<!--                         <input type="checkbox" name="remember" id="remember">  -->
                        <input name="remember-me" type="checkbox" checked="checked" class="text-muted">Remember me</input> 
                        <a href="#" id="forgot" class="font-weight-bold">Forgot password?</a> </div>
                        <input class="btn btn-primary btn-block mt-3" type="submit" value="Login"/>
                        <div class="text-center pt-4 text-muted">Don't have an account? 
                        <a href="/user/join">Sign up</a> </div>
                    </form>
                </div>
                <div class="mx-3 my-2 py-2 bordert">
                    <div class="text-center py-3"> <a href="https://wwww.facebook.com" target="_blank" class="px-2"> <img src="https://www.dpreview.com/files/p/articles/4698742202/facebook.jpeg" alt=""> </a> <a href="https://www.google.com" target="_blank" class="px-2"> <img src="https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png" alt=""> </a> <a href="https://www.github.com" target="_blank" class="px-2"> <img src="https://www.freepnglogos.com/uploads/512x512-logo-png/512x512-logo-github-icon-35.png" alt=""> </a> </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>