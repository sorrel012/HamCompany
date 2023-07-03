<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/shopping.css" />
	<script src="/js/popper.min.js"></script>
	
	<link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<section class="container-lg mt-4">
		<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">채용 게시판</li>
				<li class="breadcrumb-item" aria-current="page">타일공</li>
			</ol>
		</nav>
	</section>

	<section class="container-lg mb-5">
		<div class="d-lg-flex justify-content-center">
			<div class="container-lg">
				<img class="img-fluid rounded-3" src="/resources/img/singuppng.png"
					alt="이미지">
			</div>
			<div
				class="container-lg d-flex align-items-center mt-sm-4 mt-md-4 mt-lg-0">
				<div class="container-md">
					<h1 class="h1 mb-0">고급 타일공</h1>
					<div class="m-0 d-flex align-items-center">
						<img src="/resources/img/Vector.svg"> <img
							src="/resources/img/Vector.svg"> <img
							src="/resources/img/Vector.svg"> <img
							src="/resources/img/Vector.svg"> <img
							src="/resources/img/Vector.svg"> <span class="samll me-2">(30)</span>
						<hr class="vr">
						<span class="small ms-2 fw-bold" style="color: #DB4444">구직중</span>
					</div>
					<div>
						<div class="fs-5 fw-bold">200,000원</div>
					</div>
					<hr>
					<div class="d-flex flex-column mt-2">
						<h3 class="h3 fw-bold">회원정보</h3>
						<p class="fs-5 mb-2">이름 : 김대환</p>
						<p class="fs-5 mb-2">카테고리 : 타일공</p>
						<p class="fs-5 mb-2">경력 : 5년</p>
					</div>
					<div class="mt-5">
						<h3 class="h3 fw-bold">자기소개</h3>
						<p class="fs-5 mb-2">고급타일공 일만 5년차 최고의... 타일공!</p>
						<p class="fs-5 mb-2">the best tiler in the world</p>
						<p class="fs-5 mb-2">어쩌구 저쩌구</p>
						<hr>
						<div class="d-flex">
							<button class="btn w-100 me-3">결제하기</button>
							<button class="my-btn bg-white d-flex align-items-center">
								<img src="/resources/img/button/Vector-no.png" alt="하트이미지"><span
									class="small ms-2 fw-bold">0</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	</section>

	<section class="container-lg mb-5">
		<div class="d-flex align-items-center mb-4">
			<img class="me-2 mb-0" src="/resources/img/Rectangle 18.svg"
				alt="이미지"> <span class="my-text fw-bold h4 m-0">비슷한 구직자</span>
		</div>
		<div class="row">
			<div class="col-6 col-md-6 col-lg-3 pb-2">
				<div class="card">
					<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
						class="card-img-top" alt="...">
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
			<div class="col-6 col-md-6 col-lg-3 pb-2">
				<div class="card">
					<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
						class="card-img-top" alt="...">
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
			<div class="col-6 col-md-6 col-lg-3 pb-2">
				<div class="card">
					<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
						class="card-img-top" alt="...">
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
			<div class="col-6 col-md-6 col-lg-3 pb-2">
				<div class="card">
					<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
						class="card-img-top" alt="...">
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
	</section>

	<section class="container-lg">
		<div class="d-flex align-items-center mb-4">
			<img class="me-2 mb-0" src="/resources/img/Rectangle 18.svg"
				alt="이미지"> <span class="my-text fw-bold h4 m-0">구직자 정보</span>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<h3 class="h3">학 력</h3>
			<hr>
			<p>서울 OO 고등학교 졸업</p>
			<p>서울 OO 대학교 졸업</p>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<h3 class="h3">경 력</h3>
			<hr>
			<p>
				2018.09 ~ 2019.03 <small class="small text-primary">(7개월)</small> :
				타일팀 관리
			</p>
			<p>
				2022.01 ~ 2022.04 <small class="small text-primary">(4개월)</small> :
				타일마켓 관리(생활/건강)
			</p>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<h3 class="h3">희망 근무 조건</h3>
			<hr>
			<div class="d-flex flex-column">
				<p>근무지 : 경기도 수원시</p>
				<p>업종 : 타일공</p>
				<p>근무 기간 : 기간 무관</p>
				<p>근무 일시 : 주4일(월,화,수,목) / 풀타임(8시간이상)</p>
			</div>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<h3 class="h3">자기소개서</h3>
			<hr>
			<div class="d-flex flex-column">
				<p>안녕하세요 저는 김대환입니다. 고급 타일공입니다. 일 잘합니다.</p>
				<p>이번주 토요일 가능합니다 불러만 주십쇼 ........</p>
				<p>자기소개서.. 포트폴리오..... 넣긔 긔 가 뭐임? 긔 왜 몰라</p>
				<p>긔엽긔 ヾ(≧▽≦*)oφ(゜▽゜*)♪ 밥 먹었긔? 당근빠따~</p>
				<p>φ(゜▽゜*)♪(´▽`ʃ♡ƪ) 민지 mz (min zi)</p>
			</div>
		</div>
	</section>


	<section class="container-lg">
		<div class="d-flex align-items-center mb-4">
			<img class="me-2 mb-0" src="/resources/img/Rectangle 18.svg"
				alt="이미지"> <span class="my-text fw-bold h4 m-0">리 뷰</span>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<div class="d-flex">
				<div class="container d-flex align-items-center">
					<img class="userimg" src="/resources/img/Frame 684.png" alt="프로핑">
					<div class="ms-4">
						<p class="fs-6 fw-bold mb-0">user.1</p>
						<small class="text-secondary">2023-06-27</small>
						<div class="m-0 mt-1 d-flex">
							<img src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img class="me-1"
								src="/resources/img/Vector.svg">
						</div>
					</div>
				</div>
				<div>
					<button type="button"
						class="btn btn-secondary bg-white text-dark border-0"
						data-bs-html="true" data-bs-container="body"
						data-bs-trigger="focus" data-bs-toggle="popover"
						data-bs-placement="bottom"
						data-bs-content="<a href='#' class='text-danger text-decoration-none'>댓글 신고하기</a><br><a href='#' class='text-danger text-decoration-none'>사용자 신고하기</a>">
						<span class="material-symbols-outlined"> more_horiz </span>
					</button>
				</div>
			</div>
			<div class="container mt-3 border p-3">
				<p class="m-0">리뷰입니다.</p>
				<p class="m-0">좋은 회사 같아요....</p>
			</div>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<div class="d-flex">
				<div class="container d-flex align-items-center">
					<img class="userimg" src="/resources/img/Frame 684.png" alt="프로핑">
					<div class="ms-4">
						<p class="fs-6 fw-bold mb-0">user.1</p>
						<small class="text-secondary">2023-06-27</small>
						<div class="m-0 mt-1 d-flex">
							<img src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img class="me-1"
								src="/resources/img/Vector.svg">
						</div>
					</div>
				</div>
				<div>
					<button type="button"
						class="btn btn-secondary bg-white text-dark border-0"
						data-bs-html="true" data-bs-container="body"
						data-bs-trigger="focus" data-bs-toggle="popover"
						data-bs-placement="bottom"
						data-bs-content="<a href='#' class='text-danger text-decoration-none'>댓글 신고하기</a><br><a href='#' class='text-danger text-decoration-none'>사용자 신고하기</a>">
						<span class="material-symbols-outlined"> more_horiz </span>
					</button>
				</div>
			</div>
			<div class="container mt-3 border p-3">
				<p class="m-0">리뷰입니다.</p>
				<p class="m-0">좋은 회사 같아요....</p>
			</div>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<div class="d-flex">
				<div class="container d-flex align-items-center">
					<img class="userimg" src="/resources/img/Frame 684.png" alt="프로핑">
					<div class="ms-4">
						<p class="fs-6 fw-bold mb-0">user.1</p>
						<small class="text-secondary">2023-06-27</small>
						<div class="m-0 mt-1 d-flex">
							<img src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img
								src="/resources/img/Vector.svg"> <img class="me-1"
								src="/resources/img/Vector.svg">
						</div>
					</div>
				</div>
				<div>
					<button type="button"
						class="btn btn-secondary bg-white text-dark border-0"
						data-bs-html="true" data-bs-container="body"
						data-bs-trigger="focus" data-bs-toggle="popover"
						data-bs-placement="bottom"
						data-bs-content="<a href='#' class='text-danger text-decoration-none'>댓글 신고하기</a><br><a href='#' class='text-danger text-decoration-none'>사용자 신고하기</a>">
						<span class="material-symbols-outlined"> more_horiz </span>
					</button>
				</div>
			</div>
			<div class="container mt-3 border p-3">
				<p class="m-0">리뷰입니다.</p>
				<p class="m-0">좋은 회사 같아요....</p>
			</div>
		</div>
	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

$(document).ready(function() {
    $('.my-btn').click(function() {
        if ($(this).hasClass('active')) {
        $(this).removeClass('active'); // 클래스 제거

        // 이미지 변경
        $(this).find('img').attr('src', '/img/button/Vector-no.png');
        } else {
        $(this).addClass('active'); // 클래스 추가

        // 이미지 변경
        $(this).find('img').attr('src', '/img/button/Vector-yes.png');
        }
    });
});

const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))

var popover = new bootstrap.Popover(document.querySelector('.example-popover'), {
    container: 'body'
})

</script>
</body>
</html>