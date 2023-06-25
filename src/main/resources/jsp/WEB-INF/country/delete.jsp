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


<!-- template -->
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Vesperr
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/vesperr-free-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->



<title>delete.jsp</title>
</head>
<body>

 <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="/">Databox</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="/">Home</a></li>
          <li><a class="nav-link scrollto" href="/#about">About</a></li>
          <li><a class="nav-link scrollto" href="/#features">Data</a></li>
          <li><a class="nav-link scrollto " href="/#pricing">Board</a></li>
<!--           <li><a class="nav-link scrollto" href="#team">Team</a></li> -->
          <li class="dropdown "><a href="#"><span>List</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li class="dropdown "><a href="#"><span>Employee</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="/dept/list">Dept</a></li>
                  <li><a href="/emp/list">Emp</a></li>
                  <li><a href="/salgrade/list">Salgrade</a></li>
                </ul>
              </li>
              <li class="dropdown "><a href="#"><span>World</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="/country/list">Country</a></li>
                  <li><a href="/city/list">City</a></li>
                  <li><a href="/language/list">Language</a></li>
                </ul>
              </li>
             <li><a href="/board/list"><span>Board</span></a></li>
             <li><a href="/user/list"><span>User</span></a></li>              
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="/#contact">Contact</a></li>
          <sec:authorize access="isAnonymous()">
          <li><a class="getstarted scrollto" href="/user/login">&nbsp;Login&nbsp;</a></li>
          </sec:authorize>
<%--           <sec:authorize access="isAnonymous()"> --%>
<!--           <li><a class="getstarted scrollto" href="/user/logout">&nbsp;&nbsp;Logout&nbsp;&nbsp;</a></li> -->
<%--           </sec:authorize> --%>
          <sec:authorize access="isAnonymous()">
          <li><a class="join scrollto" href="/user/join">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></li>
          </sec:authorize>	
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header>
<h1>&nbsp;</h1>
<h1>&nbsp;</h1>
<!-- End Header -->

     <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact ">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <h2>Country 삭제</h2>
        </div>
        <div class="row  justify-content-center">
          <div class="col-lg-10 col-md-12" data-aos="fade-up" data-aos-delay="300">
            <form action="/country/delete" method="post" role="form">
            <div class="form-group">
	            <label class="form-lable mb-2" for="boardIdx">code</label>
				<input class="form-control"    id="code"  			name="code"  value="${country.code}" disabled="disabled"/>
			<input class="form-control"    id="code"  			name="code"  value="${country.code}" type="hidden"/>
			</div>
			<div class="form-group">
			 	<label class="form-lable mb-2" for="boardIdx">name</label>
                <input class="form-control"    id="name"  			name="name" value="${country.name}" disabled="disabled"/>
			<input class="form-control"    id="name"  			name="name" value="${country.name}" type="hidden"/>
            </div>
			<div class="form-group">
			 	<label class="form-lable mb-2" for="writer">continent</label>
                <input class="form-control"    id="continent"	   	name="continent"  value="${country.continent}" disabled="disabled"/>
			<input class="form-control"    id="continent"	   	name="continent"  value="${country.continent}" type="hidden"/>
            </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">region</label>
                <input class="form-control"    id="region"	   	name="region" value="${country.region}" disabled="disabled"/>
			<input class="form-control"    id="region"	   	name="region" value="${country.region}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">surfaceArea</label>
                <input class="form-control"    id="surfaceArea"	   	name="surfaceArea" value="${country.surfaceArea}" disabled="disabled"/>
			<input class="form-control"    id="surfaceArea"	   	name="surfaceArea" value="${country.surfaceArea}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">indepYear</label>
                <input class="form-control"    id="indepYear"	   	name="indepYear" value="${country.indepYear}" disabled="disabled"/>
			<input class="form-control"    id="indepYear"	   	name="indepYear" value="${country.indepYear}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">population</label>
                <input class="form-control"    id="population"	   	name="population" value="${country.population}" disabled="disabled"/>
			<input class="form-control"    id="population"	   	name="population" value="${country.population}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">lifeExpectancy</label>
                <input class="form-control"    id="lifeExpectancy"	   	name="lifeExpectancy" value="${country.lifeExpectancy}" disabled="disabled"/>
			<input class="form-control"    id="lifeExpectancy"	   	name="lifeExpectancy" value="${country.lifeExpectancy}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">gnp</label>
                <input class="form-control"    id="gnp"	   	name="gnp"value="${country.gnp}" disabled="disabled"/>
			<input class="form-control"    id="gnp"	   	name="gnp"value="${country.gnp}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">gnpOld</label>
                <input class="form-control"    id="gnpOld"	   	name="gnpOld" value="${country.gnpOld}" disabled="disabled"/>
			<input class="form-control"    id="gnpOld"	   	name="gnpOld" value="${country.gnpOld}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">localName</label>
                <input class="form-control"    id="localName"	   	name="localName" value="${country.localName}" disabled="disabled"/>
			<input class="form-control"    id="localName"	   	name="localName" value="${country.localName}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">governmentForm</label>
               <input class="form-control"    id="governmentForm"	   	name="governmentForm" value="${country.governmentForm}" disabled="disabled"/>
			<input class="form-control"    id="governmentForm"	   	name="governmentForm" value="${country.governmentForm}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">headOfState</label>
                <input class="form-control"    id="headOfState"	   	name="headOfState" 	value="${country.headOfState}" disabled="disabled"/>
			<input class="form-control"    id="headOfState"	   	name="headOfState" 	value="${country.headOfState}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">capital</label>
                <input class="form-control"    id="capital"	   	name="capital" value="${country.capital}" disabled="disabled"/>
			<input class="form-control"    id="capital"	   	name="capital" value="${country.capital}" type="hidden"/>
              </div>
              <div class="form-group">
              	<label class="form-lable mb-2" for="content">code2</label>
                <input class="form-control"    id="code2"	   	name="code2" value="${country.code2}" disabled="disabled"/>
			<input class="form-control"    id="code2"	   	name="code2" value="${country.code2}" type="hidden"/>
              </div>
              
              
              <button type="reset">삭제 준비 중..</button>
<!-- 			<button type="reset" onclick="javascript:btn()">&nbsp;&nbsp;&nbsp;&nbsp;삭제&nbsp;&nbsp;&nbsp;&nbsp;</button> -->
            </form>
          </div>
        </div>
      </div>
    </section><!-- End Contact Section -->
    



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

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="/assets/vendor/aos/aos.js"></script>
  <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/assets/js/main.js"></script>
</body>
</html>