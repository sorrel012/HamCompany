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
					<li class="breadcrumb-item" aria-current="page">회원 정보</li>
					<li class="breadcrumb-item" aria-current="page">포트폴리오</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">프로필</a></li>
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="#">포트폴리오</a></li>
				</ul>
				<div class="mb-1 fw-bold">지원 정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="#">지원 내역</a></li>
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

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex justify-content-between pb-2">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">나의 포트폴리오</h3>
					</div>
					<div>
						<button class="btn">포트폴리오 등록</button>
					</div>
				</div>
			</div>
			<table class="container-lg table table-hover">
				<thead class="table-light">
					<tr class="text-center">
						<td class="col-2">번호</td>
						<td class="col-6">포트폴리오 제목</td>
						<td class="col-2">작성날짜</td>
						<td class="col-2">관리</td>
					</tr>
				</thead>
				<tbody>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
						</td>
					</tr>
					<tr class="text-center align-middle">
						<td class="col-2 text-truncate" style="height: 60px;">1</td>
						<td class="col-6 text-truncate" style="height: 60px;"><a
							class="text-black text-decoration-none text-hover" href="#">
								타일공의 삶 </a></td>
						<td class="col-2 text-truncate" style="height: 60px;">2023-04-01</td>
						<td class="col-2 text-truncate" style="height: 60px;">
							<button class="btn">수정</button>
							<button class="btn bg-secondary">삭제</button>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>