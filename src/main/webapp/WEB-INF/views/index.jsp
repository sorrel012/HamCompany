<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	
	<link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
	
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>

	<!-- Best -->
	<section class="container-md mt-4 mb-5">
		<div class="mb-5">
			<img class="img-fluid" src="/resources/img/KakaoTalk_20230623_174314018.png"
				alt="배너이미지">
		</div>
		<div class="row g-1">
			<div class="d-flex align-items-center mb-4">
				<img class="me-2 mb-0" src="/resources/img/Rectangle 18.svg" alt="이미지">
				<span class="my-text fw-bold h4 m-0">Best</span>
			</div>
			<div class="row row-cols-2 row-cols-md-2 row-cols-lg-4 g-1 mt-0">
				<div class="col pe-3 pb-2">
					<div class="card">
						<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title m-0">고급 타일공</h5>
							<p class="card-text m-0" style="color: #DB4444;">$375</p>
							<div class="m-0 d-flex">
								<img src="/resources/img/Vector.svg"> <img src="/resources/img/Vector.svg">
								<img src="/resources/img/Vector.svg"> <img src="/resources/img/Vector.svg">
								<img class="me-1" src="/resources/img/Vector.svg"> <span
									class="small">(30)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col pe-lg-3 pe-md-0 pb-2">
					<div class="card">
						<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title m-0">고급 타일공</h5>
							<p class="card-text m-0" style="color: #DB4444;">$375</p>
							<div class="m-0 d-flex">
								<img src="/resources/img/Vector.svg"> <img src="/resources/img/Vector.svg">
								<img src="/resources/img/Vector.svg"> <img src="/resources/img/Vector.svg">
								<img class="me-1" src="/resources/img/Vector.svg"> <span
									class="small">(30)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col pe-3 pb-2">
					<div class="card">
						<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title m-0">고급 타일공</h5>
							<p class="card-text m-0" style="color: #DB4444;">$375</p>
							<div class="m-0 d-flex">
								<img src="/resources/img/Vector.svg"> <img src="/resources/img/Vector.svg">
								<img src="/resources/img/Vector.svg"> <img src="/resources/img/Vector.svg">
								<img class="me-1" src="/resources/img/Vector.svg"> <span
									class="small">(30)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col pe-lg-0 pe-md-0 pb-2">
					<div class="card">
						<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title m-0">고급 타일공</h5>
							<p class="card-text m-0" style="color: #DB4444;">$375</p>
							<div class="m-0 d-flex">
								<img src="/resources/img/Vector.svg"> <img src="/resources/img/Vector.svg">
								<img src="/resources/img/Vector.svg"> <img src="/resources/img/Vector.svg">
								<img class="me-1" src="/resources/img/Vector.svg"> <span
									class="small">(30)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center w-100 mt-4 mb-4">
			<button class="btn w-25">모든 인재 보기</button>
		</div>
	</section>

	<!-- 기술스택 -->
	<section class="container-md mt-5">
		<div class="row g-1">
			<div class="d-flex align-items-center g-1">
				<img class="me-2 mb-0" src="/resources/img/Rectangle 18.svg" alt="이미지">
				<span class="my-text fw-bold h4 m-0">Skill</span>
			</div>
			<div class="row row-cols-7 g-1 mt-0">
				<div class="d-flex align-items-center mb-2 mt-0">
					<div class="skill-box me-4">
						<img src="/resources/img/skill/Category-CellPhone-no.png">
						<p class="fs-6 fw-bold m-0">앱 개발</p>
					</div>
					<div class="skill-box me-4">
						<img src="/resources/img/skill/Category-Computer-no.png">
						<p class="fs-6 fw-bold m-0">웹 개발</p>
					</div>
					<div class="skill-box me-4">
						<img src="/resources/img/skill/Category-Camera-no.png">
						<p class="fs-6 fw-bold m-0">사진/비디오 촬영</p>
					</div>
					<div class="skill-box me-4">
						<img src="/resources/img/skill/Category-CellPhone-no.png">
						<p class="fs-6 fw-bold m-0">앱 개발</p>
					</div>
					<div
						class="skill-box d-sm-none d-md-flex d-lg-flex me-lg-4 me-md-0">
						<img src="/resources/img/skill/Category-Computer-no.png">
						<p class="fs-6 fw-bold m-0">웹 개발</p>
					</div>
					<div class="skill-box me-4 d-sm-none d-md-none d-lg-flex">
						<img src="/resources/img/skill/Category-Camera-no.png">
						<p class="fs-6 fw-bold m-0">사진/비디오 촬영</p>
					</div>
					<div class="skill-box d-sm-none d-md-none d-lg-flex">
						<img src="/resources/img/skill/Category-CellPhone-no.png">
						<p class="fs-6 fw-bold m-0">앱 개발</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- New -->
	<section class="container-md mt-5 mb-5">
		<div class="row d-flex g-1">
			<div class="d-flex align-items-center mb-4 g-1">
				<img class="me-2 mb-0" src="/resources/img/Rectangle 18.svg" alt="이미지">
				<span class="my-text fw-bold h4 m-0">New</span>
			</div>
			<div class="row g-1">
				<div class="col-6 my-img-box-left"></div>
				<div class="col-6">
					<div class="my-img-box-right-top"></div>
					<div class="my-img-box-right-bottom"></div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
  $(document).ready(function () {
    $('.skill-box').click(function () {
      // 기존에 active 클래스를 가진 요소들의 active 클래스를 제거하고 img 태그의 src 값을 "-yes"에서 "-no"로 변경
      $('.skill-box.active').removeClass('active').find('img').attr('src', function (i, val) {
        return val.replace('-yes', '-no');
      }).siblings('p').removeClass('text-white'); // text-white 클래스도 제거합니다.

      // 클릭한 요소에 active 클래스를 추가하고 img 태그의 src 값을 "-no"에서 "-yes"로 변경
      $(this).addClass('active').find('img').attr('src', function (i, val) {
        return val.replace('-no', '-yes');
      }).siblings('p').addClass('text-white'); // text-white 클래스도 추가합니다.
    });
  });
</script>
</body>
</html>
