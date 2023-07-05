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
	<link rel="stylesheet" href="/resources/css/mypage.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4 p-height">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">마이페이지</li>
					<li class="breadcrumb-item" aria-current="page">커뮤니티</li>
					<li class="breadcrumb-item" aria-current="page">말해볼텨</li>
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
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/support_detail.do">지원 내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">커뮤니티</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/mylisten_list.do">들어볼텨</a></li>
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/myspeak_list.do">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">말해볼텨 <small style="font-size : 18px;">작성한 글</small></h3>
					</div>
				</div>
			</div>
			<table class="container-lg table table-hover">
				<thead class="table-light">
					<tr class="text-center">
						<td class="col-2 text-wrap">번호</td>
						<td class="col-4 text-wrap">제목</td>
						<td class="col-2 text-wrap">날짜</td>
						<td class="col-2 text-wrap">조회수</td>
						<td class="col-2 text-wrap">댓글</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto">
					<tr class="text-center">
						<td class="col-2 text-wrap">${dto.sm_seq}</td>
						<td class="col-4 text-wrap"><a class="text-dark text-wrap text-decoration-none text-hover" href="/speaklist.do?sm_seq=${dto.sm_seq}"> ${dto.sm_subject} </a></td>
						<td class="col-2 text-wrap">${dto.sm_regdate}</td>
						<td class="col-2 text-wrap">${dto.sm_hit}</td>
						<td class="col-2 text-wrap">${dto.sm_comment}</td>
					</tr>
					</c:forEach>
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