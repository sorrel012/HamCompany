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
					<li class="breadcrumb-item" aria-current="page">회원정보</li>
					<li class="breadcrumb-item text-danger bold" aria-current="page">위시리스트</li>
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
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/wish_list.do">위시리스트</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_inquiry.do">나의 문의내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">주문 정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
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
			<div class="container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">나의 위시리스트</h3>
					</div>
				</div>
			</div>

			<!-- wish -->
			<section class="container-md mt-4 mb-5 p-0">
				<div class="row g-1">
					<div class="row row-cols-2 row-cols-md-2 row-cols-lg-4 g-1 mt-0">
					<c:forEach var="dto" items="${list}">
						<div class="col pe-3 pb-2">
							<div class="card" id="${dto.ja_seq}">
								<img src="/resources/img/job/${dto.ja_pic}"
									class="card-img-top" alt="..."> <img id="${dto.w_seq}"
									src="/resources/img/trash.png"
									class="img-fluid position-absolute btn-trash"
									style="right: 5px; top: 5px; width: 30px;">
								<div class="card-body" onclick="window.location.href='/shop/shopping_view.do?seq=${dto.ja_seq}&rate=${dto.rate}'">
									<h6 class="card-title m-0 bold">${dto.fd_name}</h6>
									<fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.ja_salary}" />원
									<div class="m-0 d-flex">
									  <!-- 이미지 태그를 동적으로 생성하는 스크립트 -->
									  <script>
									    var rate = ${dto.rate}; // ${dto.rate} 값 가져오기	
									    
									    for (var i = 0; i < rate; i++) {
									      document.write('<img src="/resources/img/Vector.svg">');
									    }
									  </script>
									  <span class="small bold mt-1">&nbsp;(${dto.rate}점)</span>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
					
				</div>
			</section>

		</div>
		<!-- 모달창 -->
		<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
			aria-labelledby="deleteModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="deleteModalLabel">삭제 확인</h5>
					</div>
					<div class="modal-body">
						<p>정말로 삭제하시겠습니까?</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary border-0"
							data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-danger" id="confirmDeleteBtn">삭제</button>
					</div>
				</div>
			</div>
		</div>	

	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 <script>
   $(document).ready(function () {
     $('.list-group-item').click(function () {
       $('.list-group-item').each((index, item) => {
         $(item).removeClass('active'); // 클래스 제거
       })
       $(this).addClass('active');
     });

     $('.btn-trash').mouseover(function () {
       $(this).attr('src', '/resources/img/trash_hover.png');
     });
     $('.btn-trash').mouseout(function () {
       $(this).attr('src', '/resources/img/trash.png');
     });

   });
   
   $('.btn-trash').click(function() {
	   var seq = $(this).attr('id');
	   
	   // 모달 창 보이기
	   $('#deleteModal').modal('show');

	   // 삭제 버튼 클릭 시 동작
	   $('#confirmDeleteBtn').click(function() {
	     var url = '/wish_list_delete.do?seq=' + seq;  // URL 생성
	     location.href = url;  // 페이지 이동
	   });
	   
		// 취소 버튼 클릭 시 동작
	   $('.modal-footer .btn-secondary').click(function() {
	     $('#deleteModal').modal('hide');
	     var seq = "";
	   });
	 });
   
  


 </script>
</body>
</html>