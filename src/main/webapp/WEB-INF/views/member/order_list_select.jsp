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
			<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">마이페이지</li>
					<li class="breadcrumb-item" aria-current="page">주문 정보</li>
					<li class="breadcrumb-item text-danger bold" aria-current="page">주문 정보 상세내역</li>
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

		<div class="col-9 container-lg">
            <div class="container-lg mb-4 p-0">
                <h3 class="h3 mb-3 pb-2 fw-bold border-bottom border-2 border-dark">주문 정보 상세내역</h3>
            </div>
            	 <h5 class="h5 mb-3 pb-2 fw-bold border-bottom text-danger">1. 주문 회원 정보</h5>
                <div class="fw-bold d-lg-flex align-items-center">
                    <div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto">회원 아이디</p>
                        <input class="form-control" type="text" value="${dto.b_id}" readonly required>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">연락처</p>
                        <input class="form-control" type="text" value="${dto.p_tel}" required>
                    </div>
                </div>
                <div class="fw-bold d-lg-flex align-items-center mt-3">
                	<div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto">이메일</p>
                        <input class="form-control" type="text" value="${dto.b_email}" readonly required>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">사업자 등록번호</p>
                        <input class="form-control" type="text" value="${dto.b_num}" required>
                    </div>
                </div>
                
                <h5 class="h5 mb-3 pb-2 fw-bold border-bottom text-danger mt-5">2. 결제 상세 정보</h5>
                <div class="fw-bold d-lg-flex align-items-center">
                    <div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto">결제자 명</p>
                        <input class="form-control" type="text" value="${dto.p_name}" readonly required>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">연락처</p>
                        <input class="form-control" type="text" value="${dto.p_tel}" required>
                    </div>
                </div>
                <div class="fw-bold d-lg-flex align-items-center mt-3">
                	<div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto">주소</p>
                        <input class="form-control" type="text" value="${dto.p_address}" readonly required>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">상세 주소</p>
                        <input class="form-control" type="text" value="${dto.p_address_detail}" required>
                    </div>
                </div>
                <div class="fw-bold d-lg-flex align-items-center mt-3">
                    <div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto h-20">주문 메모</p>
                        <input class="form-control" type="text" value="${dto.p_memo}" readonly required>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">날짜</p>
                        <input class="form-control" type="text" value="${dto.p_regdate.substring(0, 10)}" required>
                    </div>
                </div>
                
                <h5 class="h5 mb-3 pb-2 fw-bold border-bottom text-danger mt-5">3. 주문 상태</h5>
                <div class="fw-bold d-lg-flex align-items-center mt-3">
                	<div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto">승인 여부</p>
                        <input id="confirm" class="form-control" type="text" value="${dto.o_confirm}" readonly required>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">승인 날짜</p>
                        <input class="form-control" type="text" value="${dto.o_confdate.substring(0, 10)}" required>
                    </div>
                </div>
             	
                <h5 class="h5 mb-3 pb-2 fw-bold border-bottom text-danger mt-5">4. 리뷰 작성</h5>
                <div class="fw-bold d-lg-flex align-items-center mt-3">
                	<div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto">리뷰 작성 여부</p>
                        <input id="review" class="form-control" type="text" value="${dto2.er_seq != null ? '리뷰 작성 완료' : '리뷰 작성 안함'}" readonly required>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">리뷰 작성 날짜</p>
                        <input class="form-control" type="text" value="${dto2.er_regdate != null ? dto2.er_regdate.substring(0, 10) : '리뷰 작성 안함'}" required>
                    </div>
 					
                </div>
                	<div id="reviewButtonContainer" class="mt-3">
                		<button id="check" type="button" class="btn btn-primary border-0" data-bs-toggle="modal">리뷰 작성</button>
                	</div>
    		</div>
			
			<!-- 리뷰 작성용 모달 창 -->
			<div class="modal fade" id="reviewModal" tabindex="-1" aria-labelledby="reviewModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			  <form id="addform" method="POST" action="/order_list_review_add.do" >
			  	<input type="hidden" id="o_seq" name="o_seq" value="${dto.o_seq}">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="reviewModalLabel">리뷰 작성</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        <div class="mb-3">
			          <label for="reviewContent" class="form-label">리뷰 내용</label>
			          <textarea class="form-control" id="reviewContent" rows="3" name="er_content" style="resize: none;"></textarea>
			        </div>
			        <div class="mb-3">
			          <label for="starRating" class="form-label">별점</label>
			          <select class="form-select" id="starRating" name="er_rate">
			            <option value="1">1점</option>
			            <option value="2">2점</option>
			            <option value="3">3점</option>
			            <option value="4">4점</option>
			            <option value="5">5점</option>
			          </select>
			        </div>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary border-0" data-bs-dismiss="modal">닫기</button>
			        <button type="button" class="btn btn-primary border-0" onclick="submitReview()">작성 완료</button>
			      </div>
			    </div>
			    </form>
			  </div>
			</div>
			
			<!-- 리뷰 보기 모달 창 -->
			<div class="modal fade" id="reviewListModal" tabindex="-1" aria-labelledby="reviewModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			  <form id="editform" method="POST" action="/order_list_review_edit.do" >
			  <input type="hidden" id="o_seq" name="o_seq" value="${dto.o_seq}">
			  <input type="hidden" id="er_seq" name="er_seq" value="${dto2.er_seq}">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="reviewModalLabel">나의 리뷰</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			      	
			        <div class="mb-3">
			          <label for="reviewContent" class="form-label">리뷰 내용</label>
			          <textarea class="form-control" id="reviewContent" rows="3" name="er_content" style="resize: none;">${dto2.er_content}</textarea>
			        </div>
			        <div class="mb-3">
					  <label for="starRating" class="form-label">별점</label>
					  <select class="form-select" id="starRating" name="er_rate">
					    <option value="1">1점</option>
					    <option value="2">2점</option>
					    <option value="3">3점</option>
					    <option value="4">4점</option>
					    <option value="5">5점</option>
					  </select>
  					  <p class="mt-2"><span class="text-danger bold">내가 부여했던 별점</span> : ${dto2.er_rate}</p>
					</div>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary border-0" data-bs-dismiss="modal">닫기</button>
			        <button type="button" class="btn btn-primary border-0" onclick="submitReview2()">수정하기</button>
			      </div>   
			    </div>
			    </form>
			  </div>
			</div>
			
			
			
	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>

var check = document.getElementById("check");
var review = document.getElementById("review");
var confirm = document.getElementById("confirm");
var reviewButtonContainer = document.getElementById("reviewButtonContainer");

// null일 경우 "리뷰 작성 하기" 버튼 생성
if (review.value === '리뷰 작성 안함' && confirm.value === '승인') {
	check.className += " reviewNo";
	check.innerHTML = "리뷰 작성 하기";
} else if (review.value === '리뷰 작성 완료') {
  // null이 아닐 경우 "내가 작성한 리뷰 보기" 버튼 생성
  check.className += " reviewYes";
  check.innerHTML = "내가 작성한 리뷰 보기";
} 

if (confirm.value === '대기중' || confirm.value === '거절'){
	check.innerHTML = "리뷰 작성 불가";
	check.disabled = true;
}

//모달 다르게 띄우기
//class가 "reviewNo"인 요소에 대한 처리
var reviewNoElements = document.getElementsByClassName("reviewNo");
for (var i = 0; i < reviewNoElements.length; i++) {
  reviewNoElements[i].setAttribute("data-bs-target", "#reviewModal");
}

// class가 "reviewYes"인 요소에 대한 처리
var reviewYesElements = document.getElementsByClassName("reviewYes");
for (var i = 0; i < reviewYesElements.length; i++) {
  reviewYesElements[i].setAttribute("data-bs-target", "#reviewListModal");
}


//리뷰 모달창 - 리뷰 추가
function submitReview() {
  // 작성된 리뷰 내용 가져오기
  var reviewContent = document.getElementById("reviewContent").value;
  
  // 선택된 별점 가져오기
  var starRating = document.getElementById("starRating").value;
  
  // TODO: 리뷰 작성 완료 후 처리하는 로직 추가
  document.getElementById('addform').submit();
  
  // 모달 닫기
  var modal = new bootstrap.Modal(document.getElementById("reviewModal"));
  modal.hide();
}

//리뷰 모달창 - 리뷰 수정
function submitReview2() {
	
  // 작성된 리뷰 내용 가져오기
  var reviewContent = document.getElementById("reviewContent").value;
  
  // 선택된 별점 가져오기
  var starRating = document.getElementById("starRating").value;
  
  // TODO: 리뷰 작성 완료 후 처리하는 로직 추가
  document.getElementById('editform').submit();
  
  // 모달 닫기
  var modal = new bootstrap.Modal(document.getElementById("reviewModal"));
  modal.hide();
}


</script>
</body>
</html>