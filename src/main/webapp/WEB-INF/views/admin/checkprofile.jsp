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
    	#list1 {
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
					<li class="breadcrumb-item" aria-current="page">인재 프로필</li>
				</ol>
			</nav>
		</section>

		<!-- sidebar -->
		<%@ include file="/WEB-INF/views/inc/admin_sidebar.jsp" %>

		<div class="col-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div class="text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">새 인재 프로필</h3>
						<a>총 ${list[0].count}건</a>
					</div>
				</div>
			</div>
			<table class="row table table-hover m-0">
				<thead class="table-light">
					<tr class="row text-center">
						<td class="col-2">이름</td>
						<td class="col-6">자기소개서</td>
						<td class="col-2">분야</td>
						<td class="col-2">등록일</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto">
					<tr class="row text-center">
						<td class="col-2 text-truncate">${dto.m_Name}</td>
						<td class="col-6 text-truncate"><a
							class="text-black text-decoration-none text-hover" href="#">
								${dto.jaIntro} </a></td>
						<td class="col-2 text-truncate">${dto.f_Name}</td>
						<td class="col-2 text-truncate">${dto.jaRegDate}</td>
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