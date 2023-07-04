<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/profile.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">마이페이지</li>
					<li class="breadcrumb-item" aria-current="page">회원정보</li>
					<li class="breadcrumb-item" aria-current="page">프로필</li>
				</ol>
			</nav>
		</section>

		<div class="col-3 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="#">프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">포트폴리오</a></li>
				</ul>
				<div class="mb-1 fw-bold">지원 정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">지원 내역 확인</a></li>
				</ul>
				<div class="mb-1 fw-bold">커뮤니티</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">들어볼텨</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-9 container-lg">
			<div class="container-lg mb-4 p-0">
				<h3 class="h3 mb-3 pb-2 fw-bold border-bottom border-2 border-dark">사업자
					프로필</h3>
			</div>
			<form class="form-control p-4 bg-secondary bg-opacity-10">
				<div class="fw-bold d-lg-flex align-items-center">
					<div class="w-50 me-5">
						<p class="m-0 mb-2 w-auto">이메일</p>
						<input class="form-control" type="email" value="user@gamil.com"
							readonly>
					</div>
					<div class="w-50">
						<p class="m-0 mt-sm-2 mt-md-2 mt-lg-0 mb-2 w-auto">주소</p>
						<div class="d-flex btn-group">
							<input class="form-control"
								style="border-top-right-radius: 0px; border-bottom-right-radius: 0px;"
								type="text" value="서울시 강남구" readonly>
							<button class="btn w-25">검색</button>
						</div>
					</div>
				</div>
				<div class="fw-bold d-lg-flex align-items-center mt-4">
					<div class="w-50 me-5">
						<p class="m-0 mb-2 w-auto">연락처</p>
						<input class="form-control" type="text" value="010-1234-1234"
							readonly>
					</div>
					<div class="w-50">
						<p class="m-0 mt-sm-2 mt-md-2 mt-lg-0 mb-2 w-auto">생년월일</p>
						<input class="form-control" type="date" value="1995-07-04">
					</div>
				</div>
				<div class="fw-bold mt-4">
					<div class="w-100">
						<p class="m-0 mb-2 w-auto">비밀번호 변경</p>
						<input class="form-control mb-2" type="password"
							placeholder="현재 비밀번호"> <input class="form-control mb-2"
							type="password" placeholder="새 비밀번호"> <input
							class="form-control mb-2" type="password" placeholder="새 비밀번호 확인">
					</div>
				</div>
				<div class="mt-4 text-end">
					<button class="btn" style="width: 80px;">취소</button>
					<button class="btn" style="width: 80px;">수정</button>
				</div>
			</form>
		</div>

	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>