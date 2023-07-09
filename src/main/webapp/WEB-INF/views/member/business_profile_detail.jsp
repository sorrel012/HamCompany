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
					<li class="breadcrumb-item text-danger bold" aria-current="page">사업자 상세 프로필</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_profile.do">사업자 프로필</a></li>
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/business_profile_detail.do">사업자 상세 프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/wish_list.do">위시리스트</a></li>
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
		
		<div class="col-9 container-lg">
            <div class="container-lg mb-4 p-0">
                <h3 class="h3 mb-3 pb-2 fw-bold border-bottom border-2 border-dark">사업자 상세 프로필</h3>
            </div>
            <form id="editform" method="POST" class="form-control p-4 bg-secondary bg-opacity-10" action="/business_detail_edit.do" >
            	<input type="hidden" id="b_pw" name="b_id" value="${dto.b_id}">
                <div class="fw-bold d-lg-flex align-items-center">
                    <div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto">회사명</p>
                        <input class="form-control" name="bd_name" type="text" value="${dto.bd_name}" readonly required>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">대표명</p>
                        <input class="form-control" name="bd_owner" type="text" value="${dto.bd_owner}" required>
                    </div>
                </div>
                <div class="fw-bold mt-4">
                    <div class="w-100">
                        <p class="m-0 mb-2 w-auto">회사주소</p>
                        <div class="d-flex btn-group mb-2">
                            <input class="form-control" id="sample6_address" name="bd_address"
                                style="border-top-right-radius: 0px; border-bottom-right-radius: 0px;" type="text"
                                value="${dto.bd_address}" readonly>
                            <input type="button" class="btn w-25 search-btn" value="주소 검색" onclick="sample6_execDaumPostcode()">
                        </div>
                        <input class="form-control mb-2" id="sample6_detailAddress" name="bd_address_detail" type="text" placeholder="상세 주소" value="${dto.bd_address_detail}" required>
                    </div>
                </div>
                <div class="fw-bold mt-4 d-flex">
                    <div class="me-3 text-center">
                        <div>
                            <img style="height: 230px; width: 290px; object-fit: cover;" name="bd_pic"
                                class="img-fluid border border-2 mt-4" src="resources/img/KakaoTalk_20230623_174314018.png"
                                alt="회사이미지">
                        </div>
                        <div>
                            <button class="btn mt-2">회사사진 수정</button>
                        </div>
                    </div>
                    <div class="w-100">
                        <div class="mb-2">
                            <p class="m-0 mb-2">분야</p>
                            <select class="form-control" id="fieldSelect" name="f_seq">
							    <option value="1">개발</option>
							    <option value="2">경영·비즈니스</option>
							    <option value="3">마케팅·광고</option>
							    <option value="4">디자인</option>
							    <option value="5">영업</option>
							    <option value="6">고객서비스·리테일</option>
							    <option value="7">미디어</option>
							    <option value="8">게임 제작</option>
							    <option value="9">엔지니어링·설계</option>
							    <option value="10">HR</option>
							    <option value="11">금융</option>
							    <option value="12">제조·생산</option>
							    <option value="13">물류·무역</option>
							    <option value="14">의료·제약·바이오</option>
							    <option value="15">교육</option>
							    <option value="16">법률·법집행기관</option>
							    <option value="17">식·음료</option>
							    <option value="18">건설·시설</option>
							    <option value="19">공공·복지</option>
							</select>
                        </div>
                        <div class="mb-2">
                            <p class="m-0 mb-2">세부 분야</p>
                            <select class="form-control" id="fieldDetailSelect" name="fd_seq" disabled>
                            	<option value="${dto.fd_seq}" selected>${dto.fd_name}</option>
                            </select>
                        </div>
                        <div class="mb-2">
                            <p class="m-0 mb-2">회사 소개</p>
                            <input type="text" class="form-control" name="bd_intro" value="${dto.bd_intro}" required>
                        </div>
                        <div>
                            <p class="m-0 mb-2">사업자 등록번호</p>
                            <input class="form-control" type="text" name="b_num" value="${dto.b_num}" readonly required>
                        </div>
                    </div>
                </div>
                <div class="mt-4 text-end">
					<button type="button" class="btn" id="editbtn" style="width: 80px;" onclick="showConfirmationModal()">수정</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
        	</form>
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
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
			        <button type="submit" class="btn btn-primary" onclick="submitForm()">확인</button>
			      </div>
			    </div>
			  </div>
			</div>
		</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

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
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

var selectElement = document.getElementById("fieldSelect");
var fieldDetailSelectElement = document.getElementById("fieldDetailSelect");
var selectedValue1 = "${dto.f_seq}"; // fieldSelect의 초기 값
var selectedValue2 = "${dto.fd_seq}"; // fieldDetailSelect의 초기 값

// selectElement의 초기 값을 설정
for (var i = 0; i < selectElement.options.length; i++) {
  if (selectElement.options[i].value === selectedValue1) {
    selectElement.options[i].selected = true;
    break;
  }
}

<c:forEach var="dto2" items="${list}">
	var option = document.createElement("option");
	option.value = "${dto2.fd_seq}";
	option.text = "${dto2.fd_name}";
	
	// fieldDetailSelect의 초기 값을 설정
	if ("${dto2.fd_seq}" === selectedValue2) {
	  option.selected = true;
	}
	
	fieldDetailSelectElement.appendChild(option);
</c:forEach>

// 이벤트 리스너를 등록하여 selectElement의 값이 변경될 때마다 동작하도록 설정
selectElement.addEventListener("change", function() {
	
  var selectedValue = selectElement.value;

  fieldDetailSelectElement.disabled = false;
  
  // 기존의 옵션들을 모두 제거
  while (fieldDetailSelectElement.firstChild) {
    fieldDetailSelectElement.removeChild(fieldDetailSelectElement.firstChild);
  }

	// 선택된 값과 동일한 dto2.fd_seq 값을 가진 옵션들을 추가
	<c:forEach var="dto2" items="${list}">
	  if ("${dto2.f_seq}" === selectedValue) {
	    var option = document.createElement("option");
	    option.value = "${dto2.fd_seq}";
	    option.text = "${dto2.fd_name}";
	    fieldDetailSelectElement.appendChild(option);
	  } 
	    
	</c:forEach>
	
});

//모달 창 띄우기
function showConfirmationModal() {
  $('#confirmationModal').modal('show');
}

//폼 제출
function submitForm() {
  document.getElementById("fieldDetailSelect").removeAttribute("disabled");
  $('#confirmationModal').modal('hide');
  document.getElementById('editform').submit(); // 폼 제출
}




</script>
</body>
</html>