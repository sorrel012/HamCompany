<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	
<style type="text/css">
	.card {
		margin-top: 15px;
		margin-bottom: 25px;
	}
	
	.mybtn {
		border: none;
		border-radius: 5px;
		padding: 7px 15px;
		color: white;
		background-color: #DB4444;
	}
	
	.rcs {
		margin-right: 20px;
	}
	
	.scroll::-webkit-scrollbar {
		display: none;
	}
</style>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<!-- list -->
	<section class="container-md mt-4 mb-5">

		<div class="row g-1">
			<div class="d-flex align-items-center mb-4">
				<img class="me-2 mb-0" src="/resources/img/Rectangle 18.svg"
					alt="이미지"> <span class="my-text fw-bold h4 m-0">인재
					둘러보기<span>
			</div>
			<div class="jikgun mb-3">
				<button class="mybtn dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">전체</button>
				<ul class="dropdown-menu">
					<li><button class="dropdown-item" type="button">앱 개발</button></li>
					<li><button class="dropdown-item" type="button">웹개발</button></li>
					<li><button class="dropdown-item" type="button">인테리어</button></li>
					<li><button class="dropdown-item" type="button">사진/비디오
							촬영</button></li>
					<li><button class="dropdown-item" type="button">디자인</button></li>
					<li><button class="dropdown-item" type="button">뷰티</button></li>
				</ul>
				<span style="color: #BBB; margin-left: 20px;">직군을 선택해주세요.</span>
			</div>
		</div>

		<div class="row row-cols-2 row-cols-md-2 row-cols-lg-4 g-1 mt-0">
			<div class="col pe-3 pb-2">
				<div class="card">
					<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
						class="card-img-top" alt="..."> <img
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
						src="/resources/img/jjim.png"
						class="img-fluid position-absolute btn-jjim"
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
		<div class="d-flex flex-row justify-content-center">
			<button class="btn w-10" style="margin-right: 10px;">1</button>
			<button class="btn w-10" style="margin-right: 10px;">2</button>
			<button class="btn w-10" style="margin-right: 10px;">3</button>
			<button class="btn w-10" style="margin-right: 10px;">4</button>
			<button class="btn w-10" style="margin-right: 10px;">5</button>
			<button class="btn w-10" style="margin-right: 10px;">&gt;&gt;</button>
		</div>
	</section>

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
	
	   $('.btn-jjim').mouseover(function () {
	     $(this).attr('src', '/resources/img/jjim_hover.png');
	   });
	   $('.btn-jjim').mouseout(function () {
	     $(this).attr('src', '/resources/img/jjim.png');
	   });
	
	});
</script>
</body>
</html>






