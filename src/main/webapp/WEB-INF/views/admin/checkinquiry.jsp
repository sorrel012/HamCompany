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
					<li class="breadcrumb-item" aria-current="page">고객 문의</li>
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
				<div class="fw-bold mb-2">인재 매칭</div>
				<div class="fw-bold mb-2 active">고객 문의</div>

			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div class="text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">문의 내역 관리</h3>
						<a>총 1,565건</a>
					</div>
				</div>
			</div>
			<table class="table table-hover">
				<thead class="table-light">
					<tr class="row text-center">
						<td class="col-2">문의자</td>
						<td class="col-6">문의 내역</td>
						<td class="col-2">상태</td>
						<td class="col-2">신고일자</td>
					</tr>
				</thead>
				<tbody>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
					</tr>
					<tr class="row text-center">
						<td class="col-2 text-truncate">홍길동</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								문의입니다. </a></td>
						<td class="col-2 text-truncate">처리 대기중</td>
						<td class="col-2 text-truncate">2023-06-28</td>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>