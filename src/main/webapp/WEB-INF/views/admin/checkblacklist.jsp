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
	   	#list2 {
	   	    color: tomato !important; 
	   		font-weight: bold;
	   	}
    </style>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">관리자페이지</li>
					<li class="breadcrumb-item" aria-current="page">회원 관리</li>
					<li class="breadcrumb-item" aria-current="page">불량 회원</li>
				</ol>
			</nav>
		</section>

		<!-- sidebar -->
		<%@ include file="/WEB-INF/views/inc/admin_sidebar.jsp" %>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="row mb-4 m-0 p-0">
				<div class="text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">불량 회원 관리</h3>
						<a>총 ${list[0].count}건</a>
					</div>
				</div>
			</div>
			<table class="row table table-hover m-0">
				<thead class="table-light">
					<tr class="row text-center">
						<td class="col-2">불량 회원</td>
						<td class="col-4">신고 제목</td>
						<td class="col-2">상태</td>
						<td class="col-2">신고자</td>
						<td class="col-2">신고일자</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto" varStatus="num">
					<tr class="row text-center">
						<td class="col-2 text-truncate">${dto.blBadmember}</td>
						<td class="col-4 text-truncate">
							<div class="text-hover" style="cursor: pointer;" data-bs-toggle="modal" data-bs-target="#exampleModal_${num.index}">
								${dto.blTitle} 
							</div>
						</td>
						<c:if test="${dto.blStatus == '경고'}">
						<td class="col-2 text-warning fw-bold text-truncate">${dto.blStatus}</td>
						</c:if>
						<c:if test="${dto.blStatus == '차단'}">
						<td class="col-2 text-danger fw-bold text-truncate">${dto.blStatus}</td>
						</c:if>
						<c:if test="${dto.blStatus == '처리중'}">
						<td class="col-2 text-success fw-bold text-truncate">${dto.blStatus}</td>
						</c:if>
						<c:if test="${dto.blStatus == '반려'}">
						<td class="col-2 text-primary fw-bold text-truncate">${dto.blStatus}</td>
						</c:if>
						<c:if test="${dto.blStatus == '차단해제'}">
						<td class="col-2 text-primary fw-bold text-truncate">${dto.blStatus}</td>
						</c:if>
						<td class="col-2 text-truncate">${dto.blWriter}</td>
						<td class="col-2 text-truncate">${dto.blRegdate}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="d-flex justify-content-center mt-4">
				<div>
					<button class="btn w-10" style="margin-right: 10px;">1</button>
					<button class="btn w-10" style="margin-right: 10px;">2</button>
					<button class="btn w-10" style="margin-right: 10px;">3</button>
					<button class="btn w-10" style="margin-right: 10px;">4</button>
					<button class="btn w-10" style="margin-right: 10px;">5</button>
					<button class="btn w-10" style="margin-right: 10px;">&gt;&gt;</button>
				</div>
			</div>
		</div>

	</div>
	
	<!-- Modal -->
	<c:forEach items="${list}" var="dto" varStatus="num">
	<div class="modal fade" id="exampleModal_${num.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">신고자: ${dto.blWriter}</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      	<h5 class="h5 fw-bold">신고내용</h5>
	      	<div class="ps-3 pt-0">${dto.blContent}</div>
	      </div>
	      <div class="modal-footer">
	      	<c:if test="${dto.blStatus == '차단해제' or dto.blStatus == '처리중' }">
	        <button type="button" class="btn bg-primary reject" value="${dto.blSeq}, ${dto.blBadmember}, 0">반 려</button>
	        <button type="button" class="btn bg-warning warning" value="${dto.blSeq}, ${dto.blBadmember}, 0">경	고</button>
	        <button type="button" class="btn blocked" value="${dto.blSeq}, ${dto.blBadmember}, 1">차 단</button>
	        </c:if>
	        <c:if test="${dto.blStatus == '차단' }">
	        	<button type="button" class="btn bg-primary unblock" value="${dto.blSeq}, ${dto.blBadmember}, 0">차단해제</button>
	        </c:if>
	      </div>
	    </div>
	  </div>
	</div>
	</c:forEach>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
$(".reject").click(function() {
	  let list = event.target.value.split(", ");
	  let num = list[2];
	  sendRequest("반려", list[0], list[1], num);
	});

$(".warning").click(function() {
	let list = event.target.value.split(", ");
	let num = list[2];
	sendRequest("경고", list[0], list[1], num);
});

$(".blocked").click(function() {
	let list = event.target.value.split(", ");
	let num = list[2];
	sendRequest("차단", list[0], list[1], num);
});

$(".unblock").click(function() {
	let list = event.target.value.split(", ");
	let num = list[2];
	sendRequest("차단해제", list[0], list[1], num);
});

function sendRequest(action, blSeq, blBadmember, num) {
	  var title = '';
	  var icon = '';

	  if (action === '차단') {
	    title = '차단되었습니다.';
	    icon = 'success';
	  } else if (action === '반려') {
	    title = '반려되었습니다.';
	    icon = 'success';
	  } else if (action === '경고') {
		title = '경고처리 되었습니다.';
		icon = 'success';
	  } else if (action === '차단해제') {
		title = '차단해제 되었습니다.';
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

	  $.ajax({
	    type: "POST",
	    url: "/checkblacklist.do",
	    data: { action: action, blSeq: blSeq, blBadmember: blBadmember, num: num, ${_csrf.parameterName}: "${_csrf.token}" },
	    success: function(data) {
	      console.log(action);
	      console.log(blSeq);
	      console.log(blBadmember);
	      console.log(num);
	    }
	  });
	}
</script>
</body>
</html>