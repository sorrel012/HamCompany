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
    
    <style type="text/css">
	   	#list2 {
	   	    color: tomato !important; 
	   		font-weight: bold;
	   	}
    </style>
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
					<li class="breadcrumb-item" aria-current="page">불량 회원</li>
				</ol>
			</nav>
		</section>

		<!-- sidebar -->
		<%@ include file="/WEB-INF/views/inc/admin_sidebar.jsp" %>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div class="text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">불량 회원 관리</h3>
						<a>총 1,565건</a>
					</div>
				</div>
			</div>
			<table class="table table-hover">
				<thead class="table-light">
					<tr class="row text-center">
						<td class="col-2">불량 회원</td>
						<td class="col-4">신고 제목</td>
						<td class="col-2">상태</td>
						<td class="col-2">신고자</td>
						<td class="col-2">신고일자</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto">
					<tr class="row text-center">
						<td class="col-2 text-truncate">${dto.blBadmember}</td>
						<td class="col-4 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								${dto.blTitle} </a></td>
						<c:if test="${dto.blStatus == '경고'}">
						<td class="col-2 text-danger fw-bold text-truncate">${dto.blStatus}</td>
						</c:if>
						<c:if test="${dto.blStatus == '처리중'}">
						<td class="col-2 text-success fw-bold text-truncate">${dto.blStatus}</td>
						</c:if>
						<c:if test="${dto.blStatus == '반려'}">
						<td class="col-2 text-primary fw-bold text-truncate">${dto.blStatus}</td>
						</c:if>
						<td class="col-2 text-truncate">${dto.blWriter}</td>
						<td class="col-2 text-truncate">${dto.blRegdate}</td>
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