<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HamCompany</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/myprofile.css" />
	<link rel="stylesheet" href="/resources/css/myportfolio.css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
					<li class="breadcrumb-item" aria-current="page">회원정보</li>
					<li class="breadcrumb-item" aria-current="page">포트폴리오</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/user_profile.do">프로필</a></li>
					<li class="nav-item pb-1 active"><a
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
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/myspeak_list.do">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class=" container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="w-75 text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">포트폴리오 수정하기</h3>
					</div>
				</div>
			</div>
			
			<form method="POST" class="form-control p-3 bg-secondary bg-opacity-10" action="/updateportfolio.do" enctype="multipart/form-data" id="p-form">
			<c:forEach items="${list}" var="dto">
			<div class="container-lg">
				<div class="mb-3">
					<div class="mb-2 fw-bold">제목</div>
					<input type="text" class="form-control" name="p_subject" required value="${dto.p_subject}">
				</div>
				<div class="mb-2 fw-bold p-matop p-mabottom">작업정보</div>				
					<div class="d-flex flex-column mb-2">
						<div class="mb-1">서비스 종류</div>
						<input type="text" class="form-control" name="p_service" required value="${dto.p_service}">
					</div>
					<div class="d-flex flex-column mb-2">
						<div class="mb-1">지역정보</div>
						<input type="text" class="form-control" name="p_location" required value="${dto.p_location}">
					</div>
					<div class="d-flex flex-column mb-2">
						<div class="mb-1">작업 소요 시간</div>
						<input type="text" class="form-control" name="p_time" required value="${dto.p_time}">
					</div>
					<div class="d-flex flex-column mb-2">
						<div class="mb-1">작업 년도</div>
						<input type="text" class="form-control" name="p_year" required value="${dto.p_year}">
					</div>
					<div class="mb-3 w-100 p-matop">
						<label for="formFile" class="form-label fw-bold">이미지 첨부</label> 
						 <div class="file-input">
			                <span aria-hidden="true"></span>
			                <c:forEach items="${dto.gallery}" var="pgallery">
				                <c:set var="fileNameArray" value="${pgallery.pg_name.split('_')}" />
	 								<div class="p-vertical">
	 									<span class="material-symbols-outlined p-maright-small">photo_camera</span>
	 									<span class="p-maright p-patop-small">${fileNameArray[1]}</span>
	 									<input type="hidden" name="pg_name" value="${pgallery.pg_name}">
			                			<a href='#this' class="delTag">삭제</a>
			                		</div>
						   	</c:forEach>	
						</div>
						<input class="form-control p-matop-small" type="file" id="formFile" name="attach" multiple>
					</div>									
				</div>
				<div class="p-right p-matop">
					<button type="button" class="btn bg-secondary w-5 fs-5 p-maright" onclick="location.href='/myportfolio.do';">취소</button>
					<button type="submit" class="btn btn-primary w-5 fs-5 p-maright" style="background-color: #5179D9;">수정</button>
				</div>
			<input type="hidden" name="p_seq" value="${dto.p_seq}">		
			</c:forEach>		
			</form>
		</div>

	</div>

	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

	$(".delTag").on("click", function(e){
	   e.preventDefault();
	   deleteFile($(this));
	});
	
	function deleteFile(obj) {
	    obj.parent().remove();
	}
	
	$(document).ready(function() {
	    $("#p-form").on("submit", function(e) {
	      var orgFiles = $("input[name='pg_name']").length; //기존 파일 개수
	      var newFiles = document.getElementById('formFile').files.length; //새로 첨부한 파일 개수

	      if (orgFiles + newFiles === 0) {
	        alert("파일을 한 개 이상 첨부해주세요.");
	        e.preventDefault();
	      }
	    });
	  });
	
</script>
</body>
</html>