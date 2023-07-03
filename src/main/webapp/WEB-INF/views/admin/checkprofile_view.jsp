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
    <link rel="stylesheet" href="/resources/css/checkprofile.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">관리자페이지</li>
					<li class="breadcrumb-item" aria-current="page">회원 관리</li>
					<li class="breadcrumb-item" aria-current="page">인재 프로필</li>
				</ol>
			</nav>
		</section>

		<div class="col-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원 관리</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="#">인재 프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">불량 회원</a></li>
				</ul>
				<div class="fw-bold mb-2">인재 매칭</div>
				<div class="fw-bold mb-2">고객 문의</div>

			</nav>
		</div>

		<div class="col-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div class="text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">새 인재 프로필</h3>
					</div>

				</div>
				<div class="profile-view">
					<div class="profile-content">
						<h3 class="h3 pb-2 m-0 fw-bold mt-4 mb-5">몸도 마음도 건강한 인재입니다.</h3>
						<div class="profile-top">
							<img class="profile-img ms-3 mt-2" src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg">
							<table class="user userinfo">
								<tr>
									<td>이름</td>
									<td>생년월일</td>
									<td>주소</td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>1992.05.14</td>
									<td>서울시 강남구 역삼동</td>
								</tr>
								<tr>
									<td>연락처</td>
									<td>이메일</td>
								</tr>
								<tr>
									<td>010-1111-1111</td>
									<td>hong@gmail.com</td>
								</tr>

							</table>
						</div>
						<div class="eduinfo">
							<table class="user careertbl">
								<tr>
									<td class="tbltitle">학력</td>
								</tr>
								<tr>
									<td>서울 ㅇㅇ 고등학교 졸업</td>
								</tr>
								<tr>
									<td>서울 ㅇㅇ 대학교 졸업</td>
								</tr>


							</table>
							<table class="user careertbl">
								<tr>
									<td class="tbltitle">경력</td>
								</tr>
								<tr>
									<td>2018.09 ~ 2019.03 (<span>7개월</span>) : 타일팀 관리
									</td>
								</tr>
								<tr>
									<td>2022.01 ~ 2022.04 (<span>4개월</span>) : 타일마켓 관리(생활/건강)
									</td>
								</tr>
								<tr>
									<td>2022.05 ~ 2022.08 (<span>4개월</span>) : 타일 온라인팀 교육 및
										컨설팅
									</td>
								</tr>
								<tr>
									<td>2022.05 ~ 2023.04 (<span>1년</span>) : 타일 기획, 온라인 시스템,
										CS 시스템
									</td>
								</tr>
							</table>
							<table class="user careertbl worktbl">
								<tr>
									<td class="tbltitle" colspan="2">희망 근무 조건</td>
								</tr>
								<tr>
									<td>근무지</td>
									<td>경기도 수원시</td>
								</tr>
								<tr>
									<td>업종</td>
									<td>타일공</td>
								</tr>
								<tr>
									<td>근무기관</td>
									<td>기관 무관</td>
								</tr>
								<tr>
									<td>근무일시</td>
									<td>주4일(월,화,수,목)/풀타임(8시간이상)</td>
								</tr>

							</table>
							<table class="user careertbl">
								<tr>
									<td class="tbltitle">자기소개서</td>
								</tr>
								<tr>
									<td>안녕하세요 저는 김대환입니다. <br>고급 타일공입니다. 일 잘합니다. <br>
										이번주 토요일 가능합니다 불러만 주십쇼 ........<br> 자기소개서.. 포트폴리오..... 넣긔
										긔 가 뭐임? 긔 왜 몰라 긔엽긔 <br> ヾ(≧▽≦*)oφ(゜▽゜*)♪ 밥 먹었긔? 당근빠따~
										φ(゜▽゜*)♪(´▽`ʃ♡ƪ) 민지 mz (min zi)
									</td>
								</tr>

							</table>
						</div>
						<div id="ckpro-btns" class="mt-4 text-end">
							<button class="btn btn2" style="width: 80px;">삭제</button>
							<button class="btn" style="width: 80px;">승인</button>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- footer -->
		<%@ include file="/WEB-INF/views/inc/footer.jsp"%>

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
		<script>

</script>
</body>
</html>