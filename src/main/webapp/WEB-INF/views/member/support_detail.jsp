<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/myprofile.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">

		<section class="container-lg mb-4">
			<nav style="-bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">마이페이지</li>
					<li class="breadcrumb-item" aria-current="page">지원 정보</li>
					<li class="breadcrumb-item" aria-current="page">지원 내역</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/user_profile.do">프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/myportfolio.do">포트폴리오</a></li>
				</ul>
				<div class="mb-1 fw-bold">지원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/support_detail.do">지원 내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">커뮤니티</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/mylisten_list.do">들어볼텨</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/myspeak_list.do">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class=" container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">지원 내역 확인</h3>
					</div>
				</div>
			</div>
			<table class="container-lg table table-hover">
				<thead class="table-light">
					<tr class="text-center">
						<td class="col-1">번호</td>
						<td class="col-3">지원 내역 확인</td>
						<td class="col-2">근무 시작</td>
						<td class="col-2">근무 종료</td>
						<td class="col-2">금액</td>
						<td class="col-2">승인 여부</td>
					</tr>
				</thead>
				<tbody>
					<tr class="text-center align-middle">
						<td class="col-1 text-wrap" style="height: 60px;">1</td>
						<td class="col-3 text-wrap" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-wrap" style="height: 60px;">2023-04-01
							<div>09:00</div>
						</td>
						<td class="col-2 text-wrap" style="height: 60px;">2023-04-03
							<div class="text-truncate">12:00</div>
						</td>
						<td class="col-2 text-wrap" style="height: 60px;">250,000</td>
						<td class="col-2" style="height: 60px;">
							<button class="btn">승인</button>
							<button class="btn bg-secondary">거절</button>
						</td>
					</tr>
				</tbody>
			</table>

		</div>

	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>