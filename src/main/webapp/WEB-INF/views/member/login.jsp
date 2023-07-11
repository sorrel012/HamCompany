<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/login.css" />
</head>
<body>

	<section class="container-md d-flex justify-content-center">
		<div class="row d-flex align-content-center vh-100 w-75">

			<div
				class="img-box col-lg-7 p-0 rounded-start d-lg-flex d-md-none d-sm-none">
			</div>

			<div
				class="col-sm-12 col-md-12 col-lg-5 p-0 bg-white d-flex align-items-center rounded-end h-75">
				<div class="container-md d-flex flex-column align-items-center">
					<h1 class="h1 text-center fw-bold title">로그인</h1>
					<p class="fs-6 text-center">로그인 후 다양한 서비스를 이용하세요.</p>
					<form method="POST" action="/login">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="name@example.com" name="username"> <label
								for="floatingInput">아이디</label>
						</div>
						<div class="form-floating">
							<input type="password" class="form-control" id="floatingPassword"
								placeholder="Password" name="password"> <label for="floatingPassword">패스워드</label>
						</div>
						<div class="container-fluid mt-2 d-flex justify-content-between">
							<div class="form-check">
								<!-- <input class="form-check-input" type="checkbox" value=""
									id="flexCheckDefault"> <label class="form-check-label"
									for="flexCheckDefault"> 아이디 저장 </label> -->
							</div>
							<div class="d-flex">
							
								<!-- <a href="#" class="nav-link link-primary ms-3">아이디/비밀번호 찾기</a> -->
								<!-- <span class="text-primary me-2 ms-2">/</span> -->
									<a href="/index.do" class="nav-link link-primary">메인으로 이동</a>
							</div>
						</div>
						<div class="container-fluid p-0 mt-3">
							<button class="btn w-100">로그인</button>
						</div>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
					</form>
					<div class="mt-2">
						<p class="fs-6 text-center">
							회원이 아니신가요? <a href="/signup.do" class="">회원가입</a>
						</p>
					</div>
				</div>
			</div>

		</div>
	</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
	var login = '${login}';
	
	if (login === 'fail') {
		Swal.fire({
			  position: 'center',
			  icon: 'error',
			  title: '로그인에 실패했습니다.',
			  showConfirmButton: false,
			  timer: 1500
		}).then(() => {
			location.href="/login.do";
		});	
	} else if (login === 'success') {
		Swal.fire({
			  position: 'center',
			  icon: 'success',
			  title: '로그인에 성공했습니다.',
			  showConfirmButton: false,
			  timer: 1500
		}).then(() => {
			location.href="/index.do";
		});	
	}
</script>
</body>
</html>






