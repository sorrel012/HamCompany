<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/signup.css" />
</head>
<body>

	<section class="container-md d-flex justify-content-center">
		<div class="row d-flex align-content-center vh-100 w-100 m-5">

			<div
				class="img-box col-lg-7 p-0 rounded-start d-lg-flex d-md-none d-sm-none">
			</div>

			<div
				class="col-sm-12 col-md-12 col-lg-5 p-0 bg-white d-flex align-items-center rounded-end h-100">
				<div class="container-md d-flex flex-column align-items-center">
					<h1 class="h1 text-center fw-bold title">사업자 회원가입</h1>
					<p class="fs-6 text-center">회원가입 후 다양한 서비스를 이용하세요.</p>
					<form class="w-75">
						<div class="mb-1">아이디</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="name@example.com"> <label
								for="floatingInput">4~15자 이내로 입력해주세요</label>
						</div>
						<div class="mb-1">비밀번호</div>
						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="floatingPassword"
								placeholder="Password"> <label for="floatingPassword">최소
								6자 이상(알파벳, 숫자 필수)</label>
						</div>
						<div class="mb-1">비밀번호 확인</div>
						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="floatingPassword"
								placeholder="Password"> <label for="floatingPassword">비밀번호를
								다시 입력하세요</label>
						</div>
						<div class="mb-1">연락처</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingPassword"
								placeholder="tel"> <label for="floatingPassword">"-"
								없이 입력해주세요</label>
						</div>
						<div>이메일</div>
						<div class="form-floating mb-3">
							<input type="email" class="form-control" id="floatingPassword"
								placeholder="tel"> <label for="floatingPassword">user@gmail.com</label>
						</div>
						<div>사업자 등록 번호</div>
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingPassword"
								placeholder="tel"> <label for="floatingPassword">"-"
								없이 입력해주세요</label>
						</div>
						<div class="container-fluid p-0 mt-3">
							<button class="btn w-100">회원가입</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</section>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>






