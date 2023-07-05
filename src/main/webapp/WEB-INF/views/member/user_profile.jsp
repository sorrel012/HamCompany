<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/myprofile.css" />
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
					<li class="breadcrumb-item" aria-current="page">프로필</li>
				</ol>
			</nav>
		</section>

		<div class="col-3 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1 active"><a
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
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/myspeak_list.do">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-9 container-lg">
			<div class="container-lg mb-4 p-0">
				<h3 class="h3 mb-3 pb-2 fw-bold border-bottom border-2 border-dark">프로필</h3>
			</div>
			<form id="editform1" method="POST" class="form-control p-4 bg-secondary bg-opacity-10" action="/user_profile_update.do">
				<%-- <input type="hidden" id="b_pw" name="b_id" value="${dto.b_id}"> --%>
				<div class="fw-bold d-lg-flex align-items-center">
					<div class="w-50 me-5 a-email">
						<p class="m-0 mb-2 w-auto">이메일</p>
						<input class="form-control" type="email" id="email" name="u_email" value="user@gmail.com">
					</div>
					<div class="w-50">
						<p class="m-0 mt-sm-2 mt-md-2 mt-lg-0 mb-2 w-auto">주소</p>
						<div class="d-flex btn-group">
							<input class="form-control" id="sample6_address" name="u_address" style="border-top-right-radius: 0px; border-bottom-right-radius: 0px;" type="text" value="서울시 강남구" readonly>
							<input type="button" class="btn w-25 search-btn" value="주소 검색" onclick="sample6_execDaumPostcode()">
						</div>
						<div class="d-flex btn-group a-detail">							
							<input class="form-control mt-2" id="address_detail" name="u_address_detail"							
								style="border-top-right-radius: 0px; border-bottom-right-radius: 0px;"
								type="text" value="상세주소" required onchange="checkFields()">
						</div>
					</div>
				</div>
				<div class="fw-bold d-lg-flex align-items-center mt-4">
					<div class="w-50 me-5">
						<p class="m-0 mb-2 w-auto">연락처</p>
						<input class="form-control" type="text" id="phone" name="u_tel" value="010-1234-1234">
					</div>
					<div class="w-50">
						<p class="m-0 mt-sm-2 mt-md-2 mt-lg-0 mb-2 w-auto">생년월일</p>
						<input class="form-control" type="date" value="1995-07-04" readonly>
					</div>
				</div>
				<div class="mt-4 text-end">
	            	<button type="button" class="btn" id="editbtn2" style="width: 80px;" disabled onclick="showConfirmationModal2()">수정</button>
	            </div>
			</form>
			<form id="editform2" method="POST" class="form-control p-4 bg-secondary bg-opacity-10 border-top-0" action="/user_profile_updatepw.do">
				<div class="fw-bold mt-4">
					<div class="w-100">
						<p class="m-0 mb-2 w-auto">비밀번호 변경</p>
						<input class="form-control mb-2" type="password" placeholder="현재 비밀번호" id="nowpw"> 
                  		<input class="form-control mb-2" type="password" placeholder="새 비밀번호" id="newpw"> 
                  		<input class="form-control mb-2" type="password" name="b_pw" placeholder="새 비밀번호 확인" id="newpw2">
						<%-- <input type="hidden" id="correct_pw" value="${dto.b_pw}"> --%>
						<p id="status-message"></p>
                  		<p id="status-message2"></p>						
					</div>
				</div>
				<div class="mt-4 text-end">
					<button type="button" class="btn" id="editbtn" style="width: 80px;" disabled onclick="showConfirmationModal()">수정</button>
				</div>
			</form>
		</div>
		
		<!-- 모달 창 1 -->
		<div class="modal fade" id="confirmationModal" tabindex="-1"
			aria-labelledby="confirmationModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="confirmationModalLabel">수정 확인</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">수정을 진행하시겠습니까?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary"
							onclick="submitForm()">확인</button>
					</div>
				</div>
			</div>
		</div>

		<!-- 모달 창 2 -->
		<div class="modal fade" id="confirmationModal2" tabindex="-1"
			aria-labelledby="confirmationModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="confirmationModalLabel">수정 확인</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">수정을 진행하시겠습니까?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary"
							onclick="submitForm2()">확인</button>
					</div>
				</div>
			</div>
		</div>

	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

	//주소 검색하는 api
	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            /* document.getElementById('sample6_postcode').value = data.zonecode; */
	            document.getElementById("sample6_address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("address_detail").focus();
	        }
	    }).open();
	}
	
	//현재 비밀번호가 올바른지 확인
	document.getElementById('nowpw').addEventListener('keyup', function() {
	    var enteredPassword = document.getElementById('nowpw').value;
	    var correctPassword = document.getElementById('correct_pw').value; // 여기에 실제 사용자의 비밀번호를 입력해야 합니다.
	    var statusElement = document.getElementById('status-message');
	    
	    if (enteredPassword === correctPassword) {
	        showStatusMessage('올바른 비밀번호입니다.');
	        statusElement.style.color = 'blue';
	        
	    } else {
	        showStatusMessage('올바르지 않은 비밀번호입니다.');
	        statusElement.style.color = 'red'; 
	    }
	    checkbtn();
	});

	function showStatusMessage(message) {
	    var statusElement = document.getElementById('status-message');
	    statusElement.textContent = message;
	}

	//새로운 비밀번호가 알맞은지 확인
	document.getElementById('newpw2').addEventListener('keyup', function() {
	    var newPassword = document.getElementById('newpw').value;
	    var newPasswordConfirm = document.getElementById('newpw2').value;
	    var statusElement = document.getElementById('status-message2');

	    if (newPassword === newPasswordConfirm) {
	        showStatusMessage2('비밀번호가 일치합니다.');
	        statusElement.style.color = 'blue';
	    } else {
	        showStatusMessage2('비밀번호가 일치하지 않습니다.');
	        statusElement.style.color = 'red';
	    }
	    checkbtn();
	});

	function showStatusMessage2(message) {
	    var statusElement = document.getElementById('status-message2');
	    statusElement.textContent = message;
	}

	function checkbtn() {
	    var statusElement1 = document.getElementById('status-message');
	    var statusElement2 = document.getElementById('status-message2');
	    var editButton = document.getElementById('editbtn');
	    
	    if (statusElement1.innerText === '올바른 비밀번호입니다.' && statusElement2.innerText === '비밀번호가 일치합니다.') {
	        editButton.disabled = false;
	    } else {
	        editButton.disabled = true;
	    }
	}

	//폰 유효성 검사
	var phoneInput = document.getElementById('phone');
	var phonePattern = /^\d{3}-\d{4}-\d{4}$/;

	phoneInput.addEventListener('input', function() {
	    var phoneValue = phoneInput.value;
	    var isValid = phonePattern.test(phoneValue);
	    
	    if (isValid) {
	        phoneInput.classList.remove('is-invalid');
	        phoneInput.classList.add('is-valid');
	    } else {
	        phoneInput.classList.remove('is-valid');
	        phoneInput.classList.add('is-invalid');
	    }
	});

	//이메일 유효성 검사
	var emailInput = document.getElementById('email');
	var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

	emailInput.addEventListener('input', function() {
	    var emailValue = emailInput.value;
	    var isValid = emailPattern.test(emailValue);
	    
	    if (isValid) {
	        emailInput.classList.remove('is-invalid');
	        emailInput.classList.add('is-valid');
	    } else {
	        emailInput.classList.remove('is-valid');
	        emailInput.classList.add('is-invalid');
	    }
	});

	//이메일, 폰, 상세주소 모두 올바르면 버튼 활성화
	var editButton2 = document.getElementById('editbtn2');

	function checkValidity() {
	    var isEmailValid = emailPattern.test(emailInput.value);
	    var isPhoneValid = phonePattern.test(phoneInput.value);

	    if (isEmailValid && isPhoneValid) {
	        editButton2.disabled = false;
	    } else {
	        editButton2.disabled = true;
	    }
	}

	emailInput.addEventListener('input', checkValidity);
	phoneInput.addEventListener('input', checkValidity);

	//상세주소 컬럼이 null이 아니면 활성화
	function checkFields() {
	  var addressDetail = document.getElementById('address_detail').value;
	  var editButton2 = document.getElementById('editbtn2');

	  if (addressDetail !== null && addressDetail !== '') {
	    editButton2.disabled = false;
	  } else {
	    editButton2.disabled = true;
	  }
	}

	//모달 창 띄우기
	function showConfirmationModal() {
	  $('#confirmationModal').modal('show');
	}

	function showConfirmationModal2() {
	  $('#confirmationModal2').modal('show');
	}
	  
	function submitForm() {
	  $('#confirmationModal').modal('hide');
	  document.getElementById('editbtn').disabled = true; // 비활성화
	  document.getElementById('editform2').submit(); // 폼 제출
	}
	  
	function submitForm2() {
	  $('#confirmationModal2').modal('hide');
	  document.getElementById('editbtn2').disabled = true; // 비활성화
	  document.getElementById('editform1').submit(); // 폼 제출
	}


</script>
</body>
</html>