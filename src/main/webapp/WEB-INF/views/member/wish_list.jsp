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
					<li class="breadcrumb-item" aria-current="page">위시리스트</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_profile.do">사업자 프로필</a></li>
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/wish_list.do">위시리스트</a></li>
				</ul>
				<div class="mb-1 fw-bold">주문 정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/order_list.do">주문 내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">커뮤니티</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/mylisten_list.do">작성한 글</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">나의 위시리스트</h3>
					</div>
				</div>
			</div>

			<!-- wish -->
			<section class="container-md mt-4 mb-5 p-0">

				<div class="row g-1">
					<div class="row row-cols-2 row-cols-md-2 row-cols-lg-4 g-1 mt-0">
						<div class="col pe-3 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-lg-3 pe-md-0 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-3 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-lg-0 pe-md-0 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-3 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-lg-3 pe-md-0 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-3 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-lg-0 pe-md-0 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-3 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-lg-3 pe-md-0 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-3 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col pe-lg-0 pe-md-0 pb-2">
							<div class="card">
								<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
									class="card-img-top" alt="..."> <img
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body">
									<h5 class="card-title m-0">고급 타일공</h5>
									<p class="card-text m-0" style="color: #DB4444;">$375</p>
									<div class="m-0 d-flex">
										<img src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img
											src="/resources/img/Vector.svg"> <img class="me-1"
											src="/resources/img/Vector.svg"> <span class="small">(30)</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<div class="d-flex justify-content-center mt-4">
				<div>
					<button class="btn w-10" style="margin-right: 10px;">1</button>
					<button class="btn w-10" style="margin-right: 10px;">2</button>
					<button class="btn w-10" style="margin-right: 10px;">3</button>
					<button class="btn w-10" style="margin-right: 10px;">4</button>
					<button class="btn w-10" style="margin-right: 10px;">5</button>
					<button class="btn w-10" style="margin-right: 10px;">&gt;&gt;</button>
				</div>
			</div>
		</div>

	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 <script>
   $(document).ready(function () {
     $('.list-group-item').click(function () {
       $('.list-group-item').each((index, item) => {
         $(item).removeClass('active'); // 클래스 제거
       })
       $(this).addClass('active');
     });

     $('.btn-trash').mouseover(function () {
       $(this).attr('src', '/resources/img/trash_hover.png');
     });
     $('.btn-trash').mouseout(function () {
       $(this).attr('src', '/resources/img/trash.png');
     });

   });
 </script>
</body>
</html>