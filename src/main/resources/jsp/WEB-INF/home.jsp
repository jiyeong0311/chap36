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
        <h1><a href="index.html">Databox</a></h1>
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
          <li><a class="getstarted scrollto" href="/user/logout">&nbsp;&nbsp;Logout&nbsp;&nbsp;</a></li>
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
          <h1 data-aos="fade-up"> Experience Database with Databox</h1>
          <h2 data-aos="fade-up" data-aos-delay="400">Employee와 World의 데이터를 자유롭게 수정하고 추가해보세요.</h2>
          <h3 data-aos="fade-up" data-aos-delay="400">또한, 게시판을 통해 자유롭게 글을 작성하고 공유할 수 있습니다.</h3>
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


   <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients clients">
      <div class="container">

        <div class="row">

          <div class="col-lg-2 col-md-4 col-6">
            <img src="assets/img/clients/client-1.png" class="img-fluid" alt="" data-aos="zoom-in">
          </div>

          <div class="col-lg-2 col-md-4 col-6">
            <img src="assets/img/clients/client-2.png" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100">
          </div>

          <div class="col-lg-2 col-md-4 col-6">
            <img src="assets/img/clients/client-3.png" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="200">
          </div>

          <div class="col-lg-2 col-md-4 col-6">
            <img src="assets/img/clients/client-4.png" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="300">
          </div>

          <div class="col-lg-2 col-md-4 col-6">
            <img src="assets/img/clients/client-5.png" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="400">
          </div>

          <div class="col-lg-2 col-md-4 col-6">
            <img src="assets/img/clients/client-6.png" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="500">
          </div>

        </div>

      </div>
    </section><!-- End Clients Section -->


    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>About Databox</h2>
        </div>

        <div class="row content">
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="150">
            <p>
               Databox는 Spring을 활용하여 구현되었으며, 데이터베이스와의 원활한 연동을 제공합니다. 이 플랫폼은 데이터 생성, 수정, 삭제 작업을 테스트하고, 그 결과를 실시간으로 확인할 수 있는 기능을 제공합니다.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Databox는 실시간으로 데이터를 수집하고 분석합니다.</li>
              <li><i class="ri-check-double-line"></i> 직관적이고 사용자 친화적인 대시보드를 통해 데이터를 시각화하고 효과적으로 이해할 수 있습니다.</li>
              <li><i class="ri-check-double-line"></i> Databox는 다양한 데이터 소스를 통합하여 한 곳에서 데이터를 관리하고 활용할 수 있습니다.</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-up" data-aos-delay="300">
            <p>
              데이터 생성 기능을 사용하면 웹 페이지에서 간편하게 데이터를 추가할 수 있습니다. 데이터 수정 기능을 통해 기존 데이터의 속성을 업데이트하고, 
              데이터 삭제 기능을 통해 불필요한 데이터를 제거할 수 있습니다. 모든 작업은 실시간으로 데이터베이스와 연동되며, 변경 사항은 즉시 반영됩니다.
            </p>
            <a href="#" class="btn-learn-more">Learn More</a>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->


























<!-- salgrade list 만들어야함 ################# -->
    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Employee Data List</h2>
          <p>Employee의 Table List를 확인하고 생성, 수정, 삭제를 할 수 있습니다</p>
        </div>

        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
          
          <div class="col-lg-3 col-md-4">
            <div class="icon-box">
              <i class="ri-store-line" style="color: #ffbb2c;"></i>
              <h3><a href="/dept/list">Dept</a></h3>
            </div>
          </div>
          
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-bar-chart-box-line" style="color: #5578ff;"></i>
              <h3><a href="/emp/list">Emp</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
              <h3><a href="/">Salgrade</a></h3>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Features Section -->




    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>World Data List</h2>
          <p>World의 Table List를 확인하고 생성, 수정, 삭제를 할 수 있습니다</p>
        </div>

        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
          <div class="col-lg-3 col-md-4">
            <div class="icon-box">
              <i class="ri-store-line" style="color: #29cc61;"></i>
              <h3><a href="/country/list">Country</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-bar-chart-box-line" style="color: #ff5828;"></i>
              <h3><a href="/city/list">City</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
              <h3><a href="/language/list">CountryLanguage</a></h3>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Features Section -->






















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