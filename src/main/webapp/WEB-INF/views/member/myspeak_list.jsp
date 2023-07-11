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
					<li class="breadcrumb-item bold text-danger" aria-current="page">말해볼텨</li>
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
						class="text-decoration-none text-dark" href="/mycs_list.do">문의 내역</a></li>
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
						<td class="col-4 text-wrap"><a class="text-dark text-wrap text-decoration-none text-hover" href="/speakmdetail.do?seq=${dto.sm_seq}"> ${dto.sm_subject} </a></td>
						<td class="col-2 text-wrap">${dto.sm_regdate}</td>
						<td class="col-2 text-wrap">${dto.sm_hit}</td>
						<td class="col-2 text-wrap">${dto.sm_comment}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="d-flex justify-content-center mt-4 l-matop">
				<div id="pagination-buttons">
					<button class="btn w-10" id="previous-button">&lt;&lt;</button>
				</div>
			</div>
			
		</div>
		
	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

//페이지 번호와 총 페이지 수를 설정.
var currentPage = ${page};
var totalPages = Math.ceil(${size}/9);

//페이지 버튼을 동적으로 생성하는 함수.
function createPaginationButtons() {
	var paginationButtons = $("#pagination-buttons");
	paginationButtons.empty();
	
	//이전 버튼을 생성.
	paginationButtons.append('<button class="btn w-10" id="previous-button">&lt;&lt;</button>');
	
	//숫자 버튼을 생성.
	for (var i = 1; i <= totalPages; i++) {
	var buttonId = "numbtn" + i;  // id 값 동적 생성
	
	paginationButtons.append('<button class="btn w-10 page-button" id="' + buttonId + '">' + i + '</button>');

	}
	
	//다음 버튼을 생성.
	paginationButtons.append('<button class="btn w-10" id="next-button">&gt;&gt;</button>');
	
	
	//각 버튼에 클릭 이벤트를 추가.
	$("#previous-button").click(previousPage);
	$("#next-button").click(nextPage);
	$(".page-button").click(changePage).click(function() {
		$(".page-button").removeClass("bg-info");
		$(this).addClass("bg-info");
	});
}

//이전 페이지로 이동하는 함수
function previousPage() {
	if (currentPage > 1) {
		currentPage--;
		navigateToPage();
	} else {
		showModal("첫번째 페이지입니다.");
	}
}

//다음 페이지로 이동하는 함수
function nextPage() {
	if (currentPage < totalPages) {
		currentPage++;
		navigateToPage();
	} else {
		showModal("마지막 페이지입니다.");
	}
}

//모달 창을 열어 메시지를 표시하는 함수
function showModal(message) {
	$("#modalMessage").text(message);
	$("#modalBtn").click();
}

//특정 페이지로 이동하는 함수.
function changePage() {
	var selectedPage = $(this).text();
	currentPage = parseInt(selectedPage);
	navigateToPage();
}

//페이지 이동 함수.
function navigateToPage() {
	var url = "/mylisten_list.do?page=" + currentPage;
	//페이지 이동을 수행하는 코드를 추가.
	window.location.href = url;
}

//초기화 함수를 호출하여 페이지 버튼을 생성.
createPaginationButtons();

</script>
</body>

</html>