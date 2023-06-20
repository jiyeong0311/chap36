<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
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

<link href="/css/detail.css" rel="stylesheet" type="text/css">

<!-- template -->
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Vesperr
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/vesperr-free-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<title>home.jsp</title>
</head>
<body>

<!-- <div> -->
<!-- <header> -->
<!-- <div class="service_header"> -->
<!-- 	<div class="wrap_inner"> -->
<!-- 		<div class="f_l"> -->
<!-- 			<img class="nav_png f_l" alt="메뉴" src="/img/nav.png" data-bs-toggle="offcanvas" data-bs-target="#demo"> -->
<!-- 			<a href="/"><img class="write_png f_l" alt="메뉴" src="/img/write.png"></a> -->
<!-- 		</div> -->
<!-- 		<div class="f_r"> -->
<!-- 		   <a href="/user/join" -->
<!-- 		   id="join" -->
<!-- 		   class="f_r btn_request btn_default">회원가입</a> -->
<!-- 		   <a href="/user/login" -->
<!-- 		   id="login" -->
<!-- 		   class="f_r btn_request btn_default btn_login">시작하기</a> -->
<!-- 		</div>		 -->
<!-- 	</div> -->
<!-- </div> -->


<!-- <!-- Offcanvas Sidebar -->
<!-- <div class="offcanvas offcanvas-start" data-bs-scroll="true" id="demo"> -->
<!-- 	 <div class="offcanvas-back"> -->
<!-- 	 	<div class="offcanvas-header"> -->
<!-- 	 	<img class="logo_offcanvas" alt="로고" src="/img/write_512.png"> -->
<!-- 		</div> -->
<!-- 		<p class="slogan">The Story of<br>Future Writers</p> -->
		
<!-- 		<a href="/user/login" -->
<!-- 		   id="login2" -->
<!-- 		   class="btn_request_side btn_default ">시작하기</a> -->
<!-- 	</div> -->
  
<!--   <div class="offcanvas-body"> -->
<!--     <p>- 스토리 홈 -</p> -->
<!--     <p>- 최근 스토리 -</p> -->
<!--     <button class="btn btn-secondary" type="button">A Button</button> -->
<!--   </div> -->
<!-- </div> -->
<!-- </header> -->
<!-- <main> -->
<!-- </main> -->
<!-- <footer> -->
<!-- </footer> -->
<!-- </div> -->



  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="index.html">Vesperr</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="/">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#team">Team</a></li>
          <li><a class="nav-link scrollto" href="#pricing">Pricing</a></li>
          <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          <li><a class="getstarted scrollto" href="/user/login">&nbsp;Login&nbsp;</a></li>
          <li><a class="getstarted scrollto" href="/user/join">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->




  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
          <h1 data-aos="fade-up">Grow your business with Vesperr</h1>
          <h2 data-aos="fade-up" data-aos-delay="400">We are team of talented designers making websites with Bootstrap</h2>
          <div data-aos="fade-up" data-aos-delay="800">
            <a href="/user/join" class="btn-get-started scrollto">Get Started</a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
          <img src="assets/img/login.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->














<hr>
<sec:authorize access="isAuthenticated()">
name = <sec:authentication property="name"/>
</sec:authorize>
<hr>
<i class="fas fa-camera-retro"></i>
<a href="/board/list">/board/list</a>
<a href="/board/write">/board/write</a>
<a href="/board/update">/board/update</a>
<br>
<hr>
<ul>
	<li><a href="/user/list    ">/user/list</a></li>
	<li><a href="/user/detail">/user/detail</a></li>
	<li><a href="/user/update?id='java'    ">/user/update</a></li>
	<li><a href="/user/delete">/user/delete</a></li>
</ul>

<ul>
	<sec:authorize access="isAnonymous()">
	<li><a href="/user/login    ">/user/login</a></li>
	</sec:authorize>
	
	<sec:authorize access="isAuthenticated()">
	<li><a href="/user/logout   ">/user/logout</a></li>
	</sec:authorize>
</ul>
<hr>
<ul>
	<li><a href="/dept/list    ">/dept/list</a></li>
	<li><a href="/emp/list     ">/emp/list</a></li>
	<li><a href="/salgrade/list">/salgrade/list</a></li>
</ul>
<hr>
<ul>
	<li><a href="/dept/detail/10   ">/dept/detail/10</a></li>
	<li><a href="/emp/detail/1001  ">/emp/detail/1001</a></li>
	<li><a href="/salgrade/detail/1">/salgrade/detail/1</a></li>
</ul>
<hr>
<ul>
	<li><a href="/dept/create    ">/dept/create</a></li>
	<li><a href="/emp/create     ">/emp/create</a></li>
	<li><a href="/salgrade/create">/salgrade/create</a></li>
</ul>
<hr>
<ul>
	<li><a href="/dept/update?deptno=10  ">/dept/update?deptno=10</a></li>
	<li><a href="/emp/update?empno=1001">/emp/update?empno=1001</a></li>
	<li><a href="/salgrade/update?grade=1">/salgrade/update?grade=1</a></li>
</ul>
<hr>
<ul>
	<li><a href="/user/delete">/user/delete</a></li>
	<li><a href="/dept/delete?deptno=10  ">/dept/delete?deptno=10</a></li>
	<li><a href="/emp/delete?empno=1001  ">/emp/delete?empno=10001</a></li>
	<li><a href="/salgrade/delete?grade=1">/salgrade/delete?grade=1</a></li>
</ul>
<hr>
<ul>
	<li><a href="/city/list">/city/list</a></li>
	<li><a href="/city/page/1/10">/city/page</a></li>
	<li><a href="/country/list">/country/list</a></li>
	<li><a href="/country/page/1/10">/country/page</a></li>
	<li><a href="/language/list">/language/list</a></li>
	<li><a href="/language/page/1/10">/language/page</a></li>
</ul>
<hr>
<ul>
	<li><a href="/city/create">/city/create</a></li>
	<li><a href="/city/update?id=2331">/city/update?id=2331</a></li>
	<li><a href="/city/delete?id=2331">/city/delete?id=2331</a></li>
</ul>











<!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="row d-flex align-items-center">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Copyright <strong>Vesperr</strong>. All Rights Reserved
          </div>
          <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/vesperr-free-bootstrap-template/ -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
        </div>
        <div class="col-lg-6">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <a href="#intro" class="scrollto">Home</a>
            <a href="#about" class="scrollto">About</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms of Use</a>
          </nav>
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>








 




</body>
</html>