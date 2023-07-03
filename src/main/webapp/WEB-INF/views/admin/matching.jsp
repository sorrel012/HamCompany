<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/adminMatching.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">관리자 페이지</li>
					<li class="breadcrumb-item" aria-current="page">인재 매칭</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원 관리</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">인재 프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">불량 회원</a></li>
				</ul>
				<div class="fw-bold mb-2 a-active">인재 매칭</div>
				<div class="fw-bold mb-2">고객 문의</div>

			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div class="text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">매칭 관리</h3>
					</div>
				</div>
			</div>

			<div id="a-statistics">
				<div>
					<div class="a-processing">
						<div class="a-title">남은 처리 건수</div>
						<div class="a-cnt">
							<span class="a-num a-red">6</span><span class="a-kor">건</span>
						</div>
					</div>
					<div class="a-processing">
						<div class="a-title">처리 완료 건수</div>
						<div class="a-cnt">
							<span class="a-num a-blue">10</span><span class="a-kor">건</span>
						</div>
					</div>
				</div>
				<div class="a-processing">
					<div class="a-title">일별 신청 통계</div>
					<canvas id="chApply"></canvas>
				</div>
				<div class="a-processing">
					<div class="a-title">대시보드</div>
					<canvas id="chDonut"></canvas>
				</div>

			</div>

			<table class="table table-hover">
				<thead class="table-light">
					<tr class="row text-center">
						<td class="col-2">사업자</td>
						<td class="col-4">기업 정보</td>
						<td class="col-2">구직자</td>
						<td class="col-4">상태</td>
					</tr>
				</thead>
				<tbody>
					<tr class="row text-center">
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-primary">구인 정보 전송
								대기</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncat d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-danger">구인 정보 전송 완료</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-primary">구인 정보 전송
								대기</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncat d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-danger">구인 정보 전송 완료</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-primary">구인 정보 전송
								대기</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncat d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-danger">구인 정보 전송 완료</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-primary">구인 정보 전송
								대기</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncat d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-danger">구인 정보 전송 완료</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-primary">구인 정보 전송
								대기</button>
						</td>
					</tr>
					<tr class="row text-center">
						<td
							class="col-2 text-truncat d-flex align-items-center justify-content-center">홍길동</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<a class="text-black text-decoration-none text-hover" href="#">
								SIS 컴퍼니 </a>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">이순신</td>
						<td class="col-4 text-truncate">
							<button type="button" class="btn btn-danger">구인 정보 전송 완료</button>
						</td>
					</tr>
				</tbody>
			</table>
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

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>    
<script src="/resources/js/adminMatching.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>