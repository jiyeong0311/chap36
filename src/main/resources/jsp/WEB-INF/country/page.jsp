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

<title>page.jsp</title>
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

<!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <h2>Country Page</h2>
          <p>방향키를 눌러 페이지를 넘겨 보세요!</p>
        </div>
        <div class="row" data-aos="fade-up" data-aos-delay="300">
<div class="container-fluid py-4">
  <div class="row">
    <div class="col-12">
      <div class="card mb-4">
        <div class="card-header pb-0">
          <h6>Employee Table</h6>
        </div>
        <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
            <table class="table align-items-center mb-0">
              <thead>
                <tr>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">code</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">name</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">continent</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">region</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">surfaceArea</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">indepYear</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">population</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">lifeExpectancy</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">gnp</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">gnpOld</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">localName</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">governmentForm</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">headOfState</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">capital</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">code2</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="e" items="${list}">
                  <tr>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.code}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm"><a href="/country/detail/${e.code}">${e.name}</a></h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.continent}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.region}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.surfaceArea}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.indepYear}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.population}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.lifeExpectancy}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.gnp}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.gnpOld}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.localName}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.governmentForm}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.headOfState}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.capital}</h6>
                        </div>
                      </div>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <div class="d-flex px-2 py-1">
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-sm">${e.code2}</h6>
                        </div>
                      </div>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
      </div>
      </div>
      </div>
	<ul class="list-group list-group-horizontal justify-content-center">
		<li class="list-group-item ${paging.pageNum == 1 ? 'disabled' : ''}">
			<a class="page-link ${paging.pageNum == 1 ? 'text-secondary' : 'text-primary'}" href="/country/page/1/${paging.pageSize}">&lt;&lt;</a>
			</li>
		<li class="list-group-item ${paging.pageNum == 1 ? 'disabled' : ''}">
			<a class="page-link ${paging.pageNum == 1 ? 'text-secondary' : 'text-primary'}" href="/country/page/${paging.navigateFirstPage-1}/ ${paging.pageSize}">&lt</a>
		</li>			
	<c:forEach var="n" items="${paging.navigatepageNums}">
		<c:choose>
			<c:when test="${n eq paging.pageNum}">
				<li class="list-group-item active"><a href="/country/page/${n}/${paging.pageSize}" class="text-danger">${n}</a></li>
			</c:when>
		</c:choose>
		<c:choose>			
			<c:when test="${n ne paging.pageNum}">
				<li class="list-group-item       "><a href="/country/page/${n}/${paging.pageSize}">${n}</a></li>
			</c:when>
		</c:choose>
	</c:forEach>
		<li class="list-group-item ${paging.pageNum == paging.navigateLastPage ? 'disabled' : ''}">
		<a  class="page-link ${paging.pageNum == paging.navigateLastPage ? 'text-secondary' : 'text-primary'}" href="/country/page/${paging.navigateLastPage+1}/${paging.pageSize}">&gt</a>
		</li>
		<li class="list-group-item ${paging.pageNum == paging.navigateLastPage ? 'disabled' : ''}">
        	<a class="page-link ${paging.pageNum == paging.navigateLastPage ? 'text-secondary' : 'text-primary'}" href="/country/page/${paging.pages}/${paging.pageSize}">>></a>
    	</li>
	</ul>
    </div>
  </div>
</div>
        </div>
      </div>
    </section><!-- End Features Section -->


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