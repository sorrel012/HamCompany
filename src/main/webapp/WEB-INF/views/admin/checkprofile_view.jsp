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
    <link rel="stylesheet" href="/resources/css/checkprofile.css" />
    
    <style type="text/css">
    	#list1 {
    	    color: tomato !important; 
    		font-weight: bold;
    	}
    </style>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	    <div class="container-fluid row align-items-sm-start pt-4 p-0 m-0">

        <section class="container-lg mb-4">
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">관리자페이지</li>
                    <li class="breadcrumb-item" aria-current="page">회원 관리</li>
                    <li class="breadcrumb-item" aria-current="page">인재 프로필</li>
                </ol>
            </nav>
        </section>

		<!-- sidebar -->
		<%@ include file="/WEB-INF/views/inc/admin_sidebar.jsp" %>

        <div class="col-10 container-lg">
            <div class="container-lg mb-4 p-0">
                <div class="text-start border-bottom border-2 border-dark d-flex">
                    <div class="text-start">
                        <h3 class="h3 pb-2 m-0 fw-bold">새 인재 프로필</h3>
                    </div>

                </div>
                <div class="profile-view">
                    <div class="profile-content">
                        <h3 class="h3 pb-2 m-0 fw-bold mt-4 mb-4">몸도 마음도 건강한 인재입니다.</h3>
                        <div class="d-flex align-items-center p-4 rounded">
                            <img class="profile-img" src="/resources/img/Frame 684.png">
                            <table class="user userinfo w-100 m-0 ms-3">
                                <tr class="d-flex w-100 justify-content-between">
                                    <td class="col-4">이름</td>
                                    <td class="col-4">생년월일</td>
                                    <td class="col-5">주소</td>
                                </tr>
                                <tr class="d-flex w-100 justify-content-between">
                                    <td class="col-4">${dto.m_Name}</td>
                                    <td class="col-4">${dto.m_Birth}</td>
                                    <td class="col-5">${dto.m_Address}<br>${dto.m_AddressDetail}</td>
                                </tr>
                                <tr class="d-flex w-100 mt-3">
                                    <td class="col-4">연락처</td>
                                    <td class="col-4">이메일</td>
                                    <td class="col-5"></td>
                                </tr>
                                <tr class="d-flex w-100">
                                    <td class="col-4">${dto.m_Tel}</td>
                                    <td class="col-4">${dto.m_Email}</td>
                                    <td class="col-5"></td>
                                </tr>

                            </table>
                        </div>

                        <div class="eduinfo p-4">
                            <table class="mb-4">
                                <tr>
                                    <td class="tbltitle">학력</td>
                                </tr>
                                <c:forEach items="${jaeList}" var="dto">
                                <tr>
                                    <td>${dto.jaeContent} 
                                    	<span class="fw-bold">(${dto.jaeGraduation})</span>
                                    </td>
                                </tr>
                                </c:forEach>
                            </table>

                            <table class="mb-4">
                                <tr>
                                    <td class="tbltitle">경력</td>
                                </tr>
                                <c:forEach items="${jacList}" var="dto">
                                <tr>
                                    <td><sapn>${dto.jacPeriod} : ${dto.jacContent}</td>
                                </tr>
                                </c:forEach>
                            </table>
                            <table class="table table-borderless mb-4">
                                <tr>
                                    <td class="tbltitle" colspan="2">희망 근무 조건</td>
                                </tr>
                                <tr>
                                    <td class="fw-bold">근무지 :</td>
                                    <td>${dto.jaLocation}</td>
                                </tr>
                                <tr>
                                    <td class="fw-bold">업종 :</td>
                                    <td>${dto.fdName}</td>
                                </tr>
                                <tr>
                                    <td class="fw-bold">근무기관 :</td>
                                    <td>${dto.jaBeginDate} ~ ${dto.jaEndDate}</td>
                                </tr>
                                <tr>
                                    <td class="fw-bold">근무일시 :</td>
                                    <td>${dto.jaTime}</td>
                                </tr>

                            </table>
                            <table class="mb-4">
                                <tr>
                                    <td class="tbltitle">자기소개서</td>
                                </tr>
                                <tr>
                                    <td>
                                    	${dto.jaIntro}
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="ckpro-btns" class="mt-4 text-end">
                        	<c:if test="${dto.jaStatus == '대기중'}">
                            <button id="reject-btn" class="btn btn2" style="width: 80px;">거절</button>
                            <button id="approve-btn" class="btn" style="width: 80px;">승인</button>
                            </c:if>
                            <button class="btn btn3" onclick="location.href='/checkprofile.do'">목록으로</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


		<!-- footer -->
		<%@ include file="/WEB-INF/views/inc/footer.jsp"%>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>

	// 거절 버튼 클릭 이벤트 리스너
	$("#reject-btn").click(function() {
	    sendRequest("거절", "${dto.jaSeq}");
	});
	
	// 승인 버튼 클릭 이벤트 리스너
	$("#approve-btn").click(function() {
	    sendRequest("승인", "${dto.jaSeq}");
	});
	
	// AJAX를 사용하여 POST 요청을 보내는 함수
	function sendRequest(action, jaSeq) {
	  $.post("/checkprofile_view.do", { action: action, jaSeq: jaSeq, ${_csrf.parameterName}: "${_csrf.token}"},
	    function(data) {
	      console.log(action);
	      console.log(jaSeq);
	
	      var title = '';
	      var icon = '';
	      
	      if (action === '거절') {
	        title = '거절되었습니다.';
	        icon = 'error';
	      } else if (action === '승인') {
	        title = '승인되었습니다.';
	        icon = 'success';
	      }
	
	      Swal.fire({
	        position: 'center',
	        icon: icon,
	        title: title,
	        showConfirmButton: false,
	        timer: 1500,
		    onClose: function() {
		        location.reload(); // 새로고침
	      	}
	      });
	    }
	  );
	}
	
</script>
</body>
</html>