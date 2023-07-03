<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	
	
	<!-- list -->
	<section class="container-md d-flex justify-content-center">
		<div class="row d-flex align-content-center vh-100 w-100">

			<div
				class="col-lg-7 p-0 rounded-start d-lg-flex d-md-none d-sm-none justify-content-lg-center h-75"
				style="background-color: #f5f5f5;">

				<!-- 캐러셀 -->
				<div id="carouselExampleIndicators"
					class="carousel slide w-100 carousel-dark" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner h-100">
						<div class="carousel-item active h-100" style="height: 500px;">
							<img src="/img/KakaoTalk_20230625_215455649.png"
								class="d-block ms-auto me-auto mt-5 w-75 h-75" alt="...">
						</div>
						<div class="carousel-item h-100">
							<img src="/img/portfolio2.png"
								class="d-block ms-auto me-auto mt-5 w-75 h-75" alt="...">
						</div>
						<div class="carousel-item h-100">
							<img src="/img/portfolio3.png"
								class="d-block  ms-auto me-auto mt-5 w-75 h-75" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>


			<div
				class="col-sm-12 col-md-12 col-lg-4 p-0 bg-white d-flex align-items-center rounded-end h-75 ms-auto me-auto">
				<div class="container-md d-flex flex-column">
					<h1 class="h1 fw-bold title">타일공의 삶</h1>
					<p class="fs-6">조회 3</p>
					<hr>
					<div class="d-flex">
						<img src="/img/profile.jpg" style="width: 70px;"
							class="rounded-circle">
						<div class="mt-2 h-50">
							<p class="m-0 mb-2 fw-bold">홍길동</p>
							<img src="/img/Vector.svg"> <img src="/img/Vector.svg">
							<img src="/img/Vector.svg"> <img src="/img/Vector.svg">
							<span class="small">(7)</span>
						</div>
					</div>
					<div class="w-100 mt-4">
						<button
							class="w-100 rounded-3 pt-2 pb-2 text-white border-0 fw-bold"
							style="background-color: #00C7AE;">견적 요청하기</button>
					</div>
					<div class="mt-4 fs-5">
						<div class="mb-4 justify-content-between d-flex">
							<div class="me-5 text-black-50 w-20 col-lg-4 fw-bold">서비스
								종류</div>
							<duv class="col-lg-6 fw-bold">타일/인테리어</duv>
						</div>
						<div class="mb-4 justify-content-between d-flex">
							<div class="me-5 text-black-50 w-20 col-lg-4 fw-bold">지역정보</div>
							<duv class="col-lg-6 fw-bold">서울시 강남구</duv>
						</div>
						<div class="mb-4 justify-content-between d-flex">
							<div class="me-5 text-black-50 w-20 col-lg-4 fw-bold">작업소요시간</div>
							<duv class="col-lg-6 fw-bold">1개월</duv>
						</div>
						<div class="mb-4 justify-content-between d-flex">
							<div class="me-5 text-black-50 w-20 col-lg-4 fw-bold">작업년도</div>
							<duv class="col-lg-6 fw-bold">2023</duv>
						</div>
						<div class="mt-4 fs-5">간단한 소개 내용 간단한 소개 내용간단한 소개 내용간단한 소개
							내용간단한 소개 내용간단한 소개 내용간단한 소개 내용간단한 소개 내용간단한 소개 내용간단한 소개 내용간단한 소개
							내용간단한 소개 내용간단한 소개 내용</div>
					</div>
					<div class="w-100 mt-3">
						<button
							class="bg-white w-100 rounded-3 border border-2 fs-4 fw-bold">목록</button>
					</div>
				</div>

			</div>

		</div>
	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>