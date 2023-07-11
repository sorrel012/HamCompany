<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/profile.css" />
	<link rel="stylesheet" href="/resources/css/business.css" />
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
					<li class="breadcrumb-item" aria-current="page">주문 정보</li>
					<li class="breadcrumb-item text-danger bold" aria-current="page">주문 내역</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_profile.do">사업자 프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_profile_detail.do">사업자 상세 프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/wish_list.do">위시리스트</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_inquiry.do">나의 문의내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">주문 정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/order_list.do">주문 내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">커뮤니티</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_myspeak_list.do">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class=" container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">나의 주문정보</h3>
					</div>
				</div>
			</div>
			<table class="container-lg table table-hover">
				<thead class="table-light">
					<tr class="text-center">
						<td class="col-2 text-wrap bold">주문번호</td>
						<td class="col-5 text-wrap bold">주문정보</td>
						<td class="col-2 text-wrap bold">결제금액</td>
						<td class="col-2 text-wrap bold">주문일</td>
						<td class="col-2 text-wrap bold">상태</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${list}">
					<tr class="text-center align-middle">
						<td class="col-2 text-wrap">${dto.o_seq}</td>
						<td class="col-5 text-wrap">
						<a class="text-black text-decoration-none text-hover w-auto custom-link" href="/order_list_select.do?seq=${dto.o_seq}"> 
						${dto.fd_name} 
						</a></td>
						<td class="col-2 text-wrap">
						<fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.ja_salary}" />원
						</td>
						<td class="col-2 text-wrap">${dto.p_regdate.substring(0, 10)}</td>
						<td class="col-2 text-wrap">
							<div class="p-2">
							  <!-- 대기중 상태 -->
							  <span class="${dto.o_confirm == '대기중' ? 'text-warning' : (dto.o_confirm == '거절' ? 'text-danger' : (dto.o_confirm == '승인' ? 'text-success' : ''))} bold">${dto.o_confirm}</span>
							</div>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>	
			
			
		</div>
		<div class="d-flex justify-content-center mt-4">
				<div id="pagination-buttons">
				  <button class="btn w-10" id="previous-button">&lt;&lt;</button>
				</div>
			</div>
			
			<!-- modal로 띄우기 -->
			<!-- 버튼을 클릭하면 모달이 표시됩니다. -->
			  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="modalBtn" style="display: none;">
			    모달 창 열기
			  </button>
			
			  <!-- 모달 창 -->
			  <div class="modal" id="myModal">
			    <div class="modal-dialog">
			      <div class="modal-content">
			        <!-- 모달 내용 -->
			        <div class="modal-body">
			          <p id="modalMessage"></p>
			        </div>
			        <!-- 닫기 버튼 -->
			        <div class="modal-footer">
			          <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
			        </div>
			      </div>
			    </div>
			  </div>
		
	</div>
	
	


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
//페이징 기능 구현
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
var url = "/order_list.do?page=" + currentPage;
//페이지 이동을 수행하는 코드를 추가.
window.location.href = url;
}

//초기화 함수를 호출하여 페이지 버튼을 생성.
createPaginationButtons();
</script>
</body>
</html>