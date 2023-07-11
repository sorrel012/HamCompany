<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/profile.css" />
	<link rel="stylesheet" href="/resources/css/business.css" />
</head>
<style>
.flexy {
    display: flex !important;
    flex-direction: column;
    align-items: center;
    flex-wrap: nowrap;
}
</style>
<body>

	<%@ include file="/WEB-INF/views/inc/header.jsp" %>

	<div class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">
		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">함 해볼텨</li>
					<li class="breadcrumb-item" aria-current="page">고객 센터</li>
					<li class="breadcrumb-item text-danger bold" aria-current="page">문의하기</li>
				</ol>
			</nav>
		</section>
	
		<div class="col-9 container-lg">
			<div class="container-lg mb-4 p-0">
				<h3 class="h3 mb-3 pb-2 fw-bold border-bottom border-2 border-dark">문의 하기</h3>
			</div>
			<form id="questionform" method="POST" class="form-control p-4 bg-secondary bg-opacity-10 flexy justify-content-center">
			 
				<div class="w-50 me-5 mb-4">
					<p class="m-0 mb-2 w-auto bold">문의 제목</p>
					<input class="form-control" name="csc_subject" id="subject" type="text" required onchange="checkFields()">
				</div>
				<div class="w-50 me-5 mb-4">
					<p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0 bold">문의 사항</p>
					<textarea class="form-control" name="csc_content" id="content" required style="height: 300px; resize: none;" onchange="checkFields()"></textarea>
				</div>
				<div class="w-50 me-5 d-flex justify-content-end">
					<button id="submitButton" type="button" class="btn btn-primary border-0 me-2" disabled onclick="showConfirmationModal()">문의하기</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			</form>
		</div>
	</div>
	
	<!-- 모달 창 1 -->
	<div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="confirmationModalLabel">수정 확인</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        수정을 진행하시겠습니까?
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary border-0" data-bs-dismiss="modal">취소</button>
	        <button type="submit" class="btn btn-primary border-0" onclick="submitForm()">확인</button>
	      </div>
	    </div>
	  </div>
	</div>




	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
//컬럼이 null이 아니면 활성화
function checkFields() {
  var subject = document.getElementById('subject').value;
  var content = document.getElementById('content').value;
  var submit = document.getElementById('submitButton');

  if (subject !== null && subject !== '' && content !== null && content != '') {
	  submit.disabled = false;
  } else {
	  submit.disabled = true;
  }
}



//모달 창 띄우기
function showConfirmationModal() {
  $('#confirmationModal').modal('show');
}

function submitForm() {
  $('#confirmationModal').modal('hide');
  document.getElementById('questionform').submit(); // 폼 제출
  alert("문의가 완료되었습니다.");
}


<sec:authorize access="hasRole('ROLE_BUSINESS')">
$('#questionform').attr('action', '/question_add.do');
</sec:authorize>



<sec:authorize access="hasRole('ROLE_MEMBER')">
$('#questionform').attr('action', '/question_add2.do');
</sec:authorize>



</script>
</body>
</html>