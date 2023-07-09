<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/signup.css" />
</head>
<body>

	<section class="row container-md d-flex justify-content-center p-5">
		<div class="d-flex align-content-center w-100 m-5 p-5">

			<div
				class="img-box col-lg-7 p-0 rounded-start d-lg-flex d-md-none d-sm-none" style="width: 850px;">
			</div>

			<div
				class="col-sm-12 col-md-12 col-lg-5 p-0 bg-white d-flex align-items-center rounded-end pt-4 pb-4">
				<div class="container-md d-flex flex-column align-items-center">
					<h1 class="h2 text-center fw-bold title">개인 회원가입</h1>
					<p class="fs-6 text-center">회원가입 후 다양한 서비스를 이용하세요.</p>
					
					<form class="w-75" method="POST" action="/member_signup.do">
					
						<div class="mb-1">아이디</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="userid"
								placeholder="name@example.com" name="m_id" required> <label
								for="floatingInput">4~15자 이내로 입력해주세요</label>
						</div>
						<div class="mb-1">비밀번호</div>
						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="password"
								placeholder="Password" name="m_pw" required> <label for="floatingPassword">최소
								6자 이상(알파벳, 숫자 필수)</label>
						</div>
						<div class="mb-1">비밀번호 확인</div>
						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="passwordcheck"
								placeholder="Password" required> <label for="floatingPassword">비밀번호를
								다시 입력하세요</label>
						</div>
						<div class="mb-1">이름</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="name"
								placeholder="name" name="m_name" required> <label for="floatingPassword">한글 2~5자</label>
						</div>
						<div class="mb-1">생년월일</div>
						<div class="form-floating mb-3">
							<input type="date" class="form-control" id="birth"
								placeholder="name" name="m_birth" required> <label for="floatingPassword">날짜를
								골라주세요</label>
						</div>
						<div class="mb-1">주소</div>
						<div class="form-floating btn-group mb-3 w-100">
							<input type="text" class="form-control" id="sample6_address"
								placeholder="name" name="m_address" readonly required> 
								<label for="floatingPassword">주소를 검색해주세요</label>
							<input type="button" class="btn" value="주소 검색" onclick="sample6_execDaumPostcode();">
						</div>
						<div class="mb-1">상세 주소</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="address_detail"
								placeholder="name" name="m_address_detail" required> <label for="floatingPassword">상세 주소를 입력해주세요</label>
						</div>
						<div class="mb-1">이메일</div>
						<div class="form-floating mb-3">
							<input type="email" class="form-control" id="email"
								placeholder="tel" name="m_email" required> <label for="floatingPassword">user@ham.com</label>
						</div>
						<div class="mb-1">연락처</div>
						<div class="form-floating">
							<input type="text" class="form-control" id="tel"
								placeholder="tel" name="m_tel" required> <label for="floatingPassword">"-"
								없이 입력해주세요</label>
						</div>
						<div class="container-fluid p-0 mt-3">
							<button type="submit" class="btn w-100" id="btnregister">회원가입</button>
						</div>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>
					
				</div>
			</div>

		</div>
	</section>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	
	var idIsValid = false;
	var pwIsValid = false;
	var pwcIsValid = false;
	var nameIsValid = false;
	var emailIsValid = false;
	var telIsValid = false;
	
	//아이디 유효성 검사
	  var idInput = document.getElementById('userid');
	  var idPattern = /^(?=.*[a-zA-Z])(?=.*[0-9]).{4,15}$/;
	
	  idInput.addEventListener('input', function() {
	      var idValue = idInput.value;
	      idIsValid = idPattern.test(idValue);
	      
	       $.ajax({
	    	  url: '/idcheck',
	    	  type: 'GET',
	    	  data: {id : idValue},
	    	  dataType: 'json',
	    	  success: (result) => {
	    		  
	    		  console.log(result);
			    		  
			      if (idIsValid && result == 0) {
				      $('#userid + label').text('사용할 수 있는 아이디입니다.');
			          idInput.classList.remove('is-invalid');
			          idInput.classList.add('is-valid');
			      } else {
			    	  if (result > 0) {
				    	  $('#userid + label').text('아이디가 중복됩니다.');
			    	  } else {
				    	  $('#userid + label').text('4~15자 이내로 입력해주세요');
			    	  }
			    	  
			          idInput.classList.remove('is-valid');
			          idInput.classList.add('is-invalid');
			      }
			    	  
	    	  },
	    	  error: (a,b,c) => console.log(a,b,c)
	    	  
	      }); 
	      
	  });	  
	    
	  //이메일 유효성 검사
	    var emailInput = document.getElementById('email');
	    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

	    emailInput.addEventListener('input', function() {
	        var emailValue = emailInput.value;
	        emailIsValid = emailPattern.test(emailValue);
	        
	        if (emailIsValid) {
	            emailInput.classList.remove('is-invalid');
	            emailInput.classList.add('is-valid');
	        } else {
	            emailInput.classList.remove('is-valid');
	            emailInput.classList.add('is-invalid');
	        }
	    });
	  //비밀번호 유효성 검사
	    var pwInput = document.getElementById('password');
	    var pwPattern =  /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,25}$/

	    pwInput.addEventListener('input', function() {
	        var pwValue = pwInput.value;
	        pwIsValid = pwPattern.test(pwValue);
	        
	        if (pwIsValid) {
	            pwInput.classList.remove('is-invalid');
	            pwInput.classList.add('is-valid');
	        } else {
	            pwInput.classList.remove('is-valid');
	            pwInput.classList.add('is-invalid');
	        }
	    });
	  //비밀번호 확인 유효성 검사
		var pwcInput = document.getElementById('passwordcheck');

	    pwcInput.addEventListener('input', function() {
	    	var pwValue = pwInput.value;
	        var pwcValue = pwcInput.value;
	        
	        pwcIsValid = (pwValue == pwcValue);
	        
	        if (pwcIsValid) {
	            pwcInput.classList.remove('is-invalid');
	            pwcInput.classList.add('is-valid');
	        } else {
	            pwcInput.classList.remove('is-valid');
	            pwcInput.classList.add('is-invalid');
	        }
	    });
	  //연락처 유효성 검사
	    var telInput = document.getElementById('tel');
	    var telPattern =  /^\d{2,3}\d{3,4}\d{4}$/;
	    
	    telInput.addEventListener('input', function() {
	        var telValue = telInput.value;
	        telIsValid = telPattern.test(telValue);
	        
	        if (telIsValid) {
	            telInput.classList.remove('is-invalid');
	            telInput.classList.add('is-valid');
	        } else {
	            telInput.classList.remove('is-valid');
	            telInput.classList.add('is-invalid');
	        }
	    });
	  //이름 유효성 검사
	    var nameInput = document.getElementById('name');
	    var namePattern = /^[가-힣]{2,5}$/;

	    nameInput.addEventListener('input', function() {
	        var nameValue = nameInput.value;
	        nameIsValid = namePattern.test(nameValue);
	        
	        if (nameIsValid) {
	        	nameInput.classList.remove('is-invalid');
	        	nameInput.classList.add('is-valid');
	        } else {
	        	nameInput.classList.remove('is-valid');
	        	nameInput.classList.add('is-invalid');
	        }
	    });
	    
		  $('#btnregister').click(function() {
			  
			  if (  idIsValid &&
					pwIsValid &&
					pwcIsValid &&
					emailIsValid &&
				    telIsValid &&
					nameIsValid) {
				  
				  if (!confirm('작성한 내용으로 회원가입을 하시겠습니까?')) {
					  event.preventDefault();
					  return false;
				  } 
				  
			  } else {
				  event.preventDefault();
				  alert('유효하지 않은 항목이 있습니다');
				  return false;
			  }
			  
		  });
	    
	    
	    
	    
</script>
</body>
</html>






