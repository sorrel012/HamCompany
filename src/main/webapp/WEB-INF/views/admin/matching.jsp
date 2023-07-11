<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/adminMatching.css" />
	
    <style type="text/css">
    	#list3 {
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
					<li class="breadcrumb-item">인재 매칭</li>
					<li class="breadcrumb-item" aria-current="page" style="color: tomato">매칭 관리</li>
				</ol>
			</nav>
		</section>

		<!-- sidebar -->
		<%@ include file="/WEB-INF/views/inc/admin_sidebar.jsp" %>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="row mb-4 m-0 p-0">
				<div class="text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">매칭 관리</h3>
					</div>
				</div>
			</div>

			<div id="a-statistics">
				<div>
					<div class="a-processing">
						<div class="a-title">남은 처리 건수</div>
						<div class="a-cnt">
							<span class="a-num a-red">${processingCount}</span><span class="a-kor">건</span>
						</div>
					</div>
					<div class="a-processing">
						<div class="a-title">처리 완료 건수</div>
						<div class="a-cnt">
							<span class="a-num a-blue">${completedCount}</span><span class="a-kor">건</span>
						</div>
					</div>
				</div>
				<div class="a-processing">
					<div class="a-title">일별 신청 통계</div>
					<canvas id="chApply"></canvas>
				</div>
				<div class="a-processing">
					<div class="a-title">대시보드</div>
					<canvas id="chDonut"></canvas>
					<input type="hidden" id="processingCount" value="<c:out value="${processingCount}" />" />
					<input type="hidden" id="completedCount" value="<c:out value="${completedCount}" />" />
				</div>

			</div>

			<table class="row table m-0 table-hover">
				<thead class="table-light">
					<tr class="row text-center">
						<td class="col-2">사업자</td>
						<td class="col-4">기업 정보</td>
						<td class="col-2">구직자</td>
						<td class="col-4">상태</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto" varStatus="num">
					<tr class="row text-center">
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">${dto.bdOwner}</td>
						<td
							class="col-4 text-truncate d-flex align-items-center justify-content-center">
							<div class="text-black text-decoration-none text-hover" data-bs-toggle="modal" data-bs-target="#exampleModal_${num.index}" style="cursor: pointer;">
								${dto.bdName} </div>
						</td>
						<td
							class="col-2 text-truncate d-flex align-items-center justify-content-center">${dto.m_Name}</td>
						<c:if test="${dto.o_Confirm == '대기중'}">
						<td class="col-4 d-flex justify-content-center">
							<div class="rounded p-2 bg-warning text-white w-50">
								구인 정보 전송 대기
							</div>
						</td>
						</c:if>
						<c:if test="${dto.o_Confirm == '승인'}">
						<td class="col-4 d-flex justify-content-center">
							<div class="rounded p-2 bg-primary text-white w-50">
								구인 정보 전송 승인
							</div>
						</td>
						</c:if>
						<c:if test="${dto.o_Confirm == '거절'}">
						<td class="col-4 d-flex justify-content-center">
							<div class="rounded p-2 bg-danger text-white w-50">
								구인 정보 전송 거절
							</div>
						</td>
						</c:if>
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
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">회사 정보</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <div>
	        	<div class="mb-2">
	        		<span class="fw-bold">대표이름 : </span>
	        		${dto.bdOwner}
	        	</div>
	        	<div class="mb-2">
	        		<span class="fw-bold">회사이름 : </span>
	        		${dto.bdName}
	        	</div>
	        	<div class="mb-2">
	        		<span class="fw-bold">회사주소 : </span>
	        		${dto.bdAddress} ${dto.bdAddressDetail}
	        	</div>
	        	<div class="mb-2">
	        		<span class="fw-bold">회사소개 : </span>
	        		<div>${dto.bdIntro}</div>
	        	</div>
	        </div>
	      </div>
	      <div class="modal-footer">
	      	<c:if test="${dto.o_Confirm == '대기중'}">
	        <button type="button" class="rejectBtn btn btn-secondary border-0 w-25" value="${dto.o_Seq}">거절</button>
	        <button type="button" class="approveBtn btn btn-primary border-0 w-25" value="${dto.o_Seq}">승인</button>
	        </c:if>
	      </div>
	    </div>
	  </div>
	</div>
	</c:forEach>

	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="/resources/js/adminMatching.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
//일별
const ctx = document.getElementById('chApply');
const chApply = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: [
    	'${dateCount[4].o_ConfDate}',
    	'${dateCount[3].o_ConfDate}',
    	'${dateCount[2].o_ConfDate}',
    	'${dateCount[1].o_ConfDate}',
    	'${dateCount[0].o_ConfDate}'], //sysdate로 바꿔주세요
    datasets: [{
      label: '일별 신청 통계',
      data: [
    	  '${dateCount[4].dateCount}',
    	  '${dateCount[3].dateCount}',
    	  '${dateCount[2].dateCount}',
    	  '${dateCount[1].dateCount}',
    	  '${dateCount[0].dateCount}'],
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 159, 64, 0.2)'
      ],
      borderColor: [
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 159, 64, 1)'
      ],
      borderWidth: 1
    }]
  },

  options: {
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: true,
          fontFamily: 'SUITE-Regular'
        }
      }],
      xAxes: [{
        ticks: {
          beginAtZero: true,
          fontFamily: 'SUITE-Regular'
        }
      }]
    },
    legend: {
      position:'bottom', 
      labels: {
        padding: 20,
        fontSize: 15,
        fontFamily: 'SUITE-Regular'
      }
  }
  }
});

$(".rejectBtn").click(function() {
	let oSeq = event.target.value;
	sendRequest("거절", oSeq);
});

$(".approveBtn").click(function() {
	let oSeq = event.target.value;
	sendRequest("승인", oSeq);
});

function sendRequest(action, oSeq) {
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

	  $.ajax({
	    type: "POST",
	    url: "/matching.do",
	    data: { action: action, oSeq: oSeq, ${_csrf.parameterName}: "${_csrf.token}" },
	    success: function(data) {
	      console.log(action);
	      console.log(oSeq);
	    }
	  });
	}

</script>
</body>
</html>