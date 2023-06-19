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
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>

<title>register.jsp</title>
</head>
<body>
<h3>회원가입</h3>
<a href="/">Home</a>
<hr>
<section class="container">
<form action="/user/register" method="post">
<div class="input-form-backgroud row">
	<div class="input-form col-md-12 mx-auto">
		
<div class="mb-3">
	<label for="id" >아이디</label> <input type="text"
		class="form-control" name="id" value="${users.id}" />
</div>
<div class="mb-3">
	<label for="password">비밀번호</label> <input type="password"
		class="form-control" name="password" value="${users.password}" />
</div>
<!-- <div class="mb-3"> -->
<!-- 	<label for="password">비밀번호 재확인</label> <input type="hidden" -->
<!-- 		class="form-control" name="password" value="" /> <input -->
<!-- 		type="password" class="form-control" name="password" value="" /> -->
<!-- </div> -->
<div class="mb-3">
	<label for="name">이름</label> <input type="text"
		class="form-control" name="name" value="${users.name}"/>
	<div class="invalid-feedback">이름을 입력해주세요.</div>
</div>

		<div class="mb-3">
			<label class="form-lable mb-2" for="birth">생년월일</label>
			<input class="form-control"    id="birth" name="birth" placeholder="2010-01-01" value="${users.birth}"/>
		</div>

		<div class="form-group">
			<label for="gender">성별</label>
			<div>
				<input type="radio" class="form-check-input" id="genderMale" name="gender" value="M"
					${users.gender == 'M' ? 'checked' : ''}>
				<label class="form-check-label" for="genderMale">남자</label>
				<input type="radio" class="form-check-input" id="genderFemale" name="gender" value="F"
					${users.gender == 'F' ? 'checked' : ''}>
				<label class="form-check-label" for="genderFemale">여자</label>
			</div>
		</div><br>



		<div class="mb-3">
			<label for="email">이메일</label>
			<input type="email" class="form-control" id="email" name="email" placeholder="you@example.com" value="${users.email}" />
			<div class="invalid-feedback">이메일을 입력해주세요.</div>
		</div>

		<div class="mb-3">
			<label for="address">주소</label>
			<input type="text" class="form-control" id="address" name="address" placeholder="서울특별시 강남구" value="${users.address}" required>
			<div class="invalid-feedback">주소를 입력해주세요.</div>
		</div>

<!-- 							<div class="mb-3"> -->
<!-- 								<label for="address2">상세주소<span class="text-muted">&nbsp;(필수 -->
<!-- 										아님)</span></label> <input type="text" class="form-control" id="address2" -->
<!-- 									placeholder="상세주소를 입력해주세요."> -->
<!-- 							</div> -->

<!-- 							<div class="row"> -->
<!-- 								<div class="col-md-8 mb-3"> -->
<!-- 									<label for="root">가입 경로</label> <select class="form-control"> -->
<!-- 										<option>검색</option> -->
<!-- 										<option>카페</option> -->
<!-- 									</select> -->
<!-- 									<div class="invalid-feedback">가입 경로를 선택해주세요.</div> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4 mb-3"> -->
<!-- 									<label for="code">추천인 코드</label> <input type="text" -->
<!-- 										class="form-control" id="code" placeholder="" required> -->
<!-- 									<div class="invalid-feedback">추천인 코드를 입력해주세요.</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<hr class="mb-4"> -->
<!-- 							<div class="custom-control custom-checkbox"> -->
<!-- 								<input type="checkbox" class="custom-control-input" -->
<!-- 									id="aggrement" required> <label -->
<!-- 									class="custom-control-label" for="aggrement">개인정보 수집 및 -->
<!-- 									이용에 동의합니다.</label> -->
		</div>
	</div>
</div>




<!-- 			<script> -->
<!-- //     window.addEventListener('load', () => { -->
<!-- //       const forms = document.getElementsByClassName('validation-form'); -->

<!-- //       Array.prototype.filter.call(forms, (form) => { -->
<!-- //         form.addEventListener('submit', function (event) { -->
<!-- //           if (form.checkValidity() === false) { -->
<!-- //             event.preventDefault(); -->
<!-- //             event.stopPropagation(); -->
<!-- //           } -->

<!-- //           form.classList.add('was-validated'); -->
<!-- //         }, false); -->
<!-- //       }); -->
<!-- //     }, false); -->
<!--   </script> -->

			<div class="text-center">
				<button type="submit" class="btn btn-primary">회원가입</button>
			</div>
		</form>

	</section>




	<hr>
	<c:if test="${exception ne null}">
		<h1>${exception.message}</h1>
	</c:if>





</body>
</html>