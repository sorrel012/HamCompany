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

   <section class="container-md d-flex justify-content-center">
      <div class="row d-flex align-content-center vh-100 w-100 m-5">

         <div
            class="img-box col-lg-7 p-0 rounded-start d-lg-flex d-md-none d-sm-none">
         </div>

         <div
            class="col-sm-12 col-md-12 col-lg-5 p-0 bg-white d-flex align-items-center rounded-end pt-4 pb-4">
            <div class="container-md d-flex flex-column align-items-center">
               <h1 class="h2 text-center fw-bold title">사업자 회원가입</h1>
               <p class="fs-6 text-center">회원가입 후 다양한 서비스를 이용하세요.</p>
               <form class="w-75" method="POST" action="/business_signup.do" id="formregister">
                  <div class="mb-1">아이디</div>
                  <div class="form-floating mb-3">
                     <input type="text" class="form-control" id="userid"
                        placeholder="userid" name="b_id" required> <label
                        for="floatingInput">4~15자 이내로 입력해주세요</label>
                  </div>
                  <div class="mb-1">비밀번호</div>
                  <div class="form-floating mb-3">
                     <input type="password" class="form-control" id="password"
                        placeholder="Password" name="b_pw" required> <label for="floatingPassword">최소
                        6자 이상(알파벳, 숫자 필수)</label>
                  </div>
                  <div class="mb-1">비밀번호 확인</div>
                  <div class="form-floating mb-3">
                     <input type="password" class="form-control" id="passwordcheck"
                        placeholder="Password" required> <label for="floatingPassword">비밀번호를
                        다시 입력하세요</label>
                  </div>
                  <div class="mb-1">연락처</div>
                  <div class="form-floating mb-3">
                     <input type="text" class="form-control" id="tel"
                        placeholder="tel"  name="b_tel" required> <label for="floatingPassword">"-"
                        없이 입력해주세요</label>
                  </div>
                  <div>이메일</div>
                  <div class="form-floating mb-3">
                     <input type="email" class="form-control" id="email"
                        placeholder="tel" name="b_email" required> <label for="floatingPassword">user@gmail.com</label>
                  </div>
                  <div>사업자 등록 번호</div>
                  <div class="form-floating">
                     <input type="text" class="form-control" id="bnum"
                        placeholder="tel" name="b_num" required> <label for="floatingPassword">"-"
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
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>

   //유효성 검사
   var idIsValid = false;
   var pwIsValid = false;
   var pwcIsValid = false;
   var emailIsValid = false;
   var bnumIsValid = false;
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
            $('#userid + label').text('');
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
     
     //생년월일 유효성 검사
     var bnumInput = document.getElementById('bnum');
     var bnumPattern =  /^\d{10}$/;
     
     bnumInput.addEventListener('input', function() {
         var bnumValue = bnumInput.value;
         bnumIsValid = bnumPattern.test(bnumValue);
         
         if (bnumIsValid) {
            bnumInput.classList.remove('is-invalid');
            bnumInput.classList.add('is-valid');
         } else {
            bnumInput.classList.remove('is-valid');
            bnumInput.classList.add('is-invalid');
         }
     });
     
     $('#btnregister').click(function() {
        
        if (  idIsValid &&
            pwIsValid &&
            pwcIsValid &&
            emailIsValid &&
             telIsValid &&
            bnumIsValid) {
           /*
           if (!confirm('작성한 내용으로 회원가입을 하시겠습니까?')) {
              event.preventDefault();
              return false;
           } 
           */
           
           event.preventDefault();
           
           Swal.fire({
                   title: '작성한 내용으로 회원가입을 하시겠습니까?',
                   text: " ",
                   icon: 'warning',
                   showCancelButton: true,
                   confirmButtonColor: '#3085d6',
                   cancelButtonColor: '#d33',
                   confirmButtonText: 'Yes'
                 }).then((result) => {
                     
                   if (result.isConfirmed) {
                     Swal.fire(
                       'Register Success',
                       '회원가입이 완료되었습니다.',
                       'success'
                     ).then(() => {
                        document.getElementById("formregister").submit();
                     });
                     
                   }
                   
                 })
           
           
        } else {
           
           event.preventDefault();
           Swal.fire({
              position: 'center',
              icon: 'error',
              title: '유효하지 않은 항목이 있습니다.',
              showConfirmButton: false,
              timer: 1500
         }).then(() => {
            return false;
         });   
           
        }
        
     });
     
     
</script>
</body>
</html>





