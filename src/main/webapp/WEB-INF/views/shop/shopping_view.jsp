<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sec" uri = "http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/shopping.css" />
	<script src="/js/popper.min.js"></script>
	<link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        
        
    <style>
    
    	.breadcrumb:hover {
    		cursor: pointer;
    	}
    	
    </style>    
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<section class="container-lg mt-4">
		<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">채용 게시판</li>
				<li class="breadcrumb-item" aria-current="page">${dto.f_name}</li>
			</ol>
		</nav>
	</section>

	<section class="container-lg mb-5">
		<div class="d-lg-flex justify-content-center">
			<div class="container-lg align-items-center d-flex">
				<img class="img-fluid rounded-3 w-100" src="/resources/img/job/${dto.ja_pic}"
					alt="이미지">
			</div>
			<div
				class="container-lg d-flex align-items-center mt-sm-4 mt-md-4 mt-lg-0">
				<div class="container-md">
					<h1 class="h1 mb-0">${dto.fdName}</h1>
					<div class="m-0 d-flex align-items-center">
						<c:if test="${rate - 1 > 0}">
							<c:forEach begin="0" end="${rate - 1 }">
								<img src="/resources/img/Vector.svg">
							</c:forEach> 
						</c:if>
						
						<c:if test="${rate - 1 == 0}">
							
							<img src="/resources/img/Vector.svg">
						</c:if>

						<span class="small ms-1">${rate}</span>
					</div>
					<div>
						<div class="fs-5 fw-bold"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.salary}" />원</div>
					</div>
					<hr>
					<div class="d-flex flex-column mt-2">
						<h3 class="h3 fw-bold">회원정보</h3>
						<p class="fs-5 mb-2">이름 : ${dto.m_name}</p>
						<p class="fs-5 mb-2">카테고리 : ${dto.f_name}</p>
					</div>
					<div class="mt-5">
						<h3 class="h3 fw-bold">자기소개</h3>
						<p class="fs-5 mb-2">${summary}</p>
						<hr>
						<div class="d-flex">
						<form action="/shop/payment.do" method="POST" class="w-100 me-3">
							<input type="submit" class="btn w-100 me-3" value="결제하기">
							
							<input type="hidden" value="${dto.jaSeq}" name="jaSeq">
							<input type="hidden" value="${dto.mk_seq}" name="mk_seq">
							<input type="hidden" value="${dto.f_name}" name="f_name">
							<input type="hidden" value="${dto.fdName}" name="fdName">
							<input type="hidden" value="${dto.salary}" name="salary">
							<input type="hidden" value="${dto.jaBegindate} ~ ${dto.jaEnddate}" name="date">
							<input type="hidden" value="${dto.m_name}" name="m_name">
							<input type="hidden" value="${dto.ja_pic}" name="ja_pic">
							<input type="hidden" name="${_csrf.parameterName }"
value="${_csrf.token }">
							
						</form>
						<button class="my-btn bg-white d-flex align-items-center">
								<img src="/resources/img/button/Vector-no.png" alt="하트이미지">
						</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="container-lg mb-5">
		<div class="d-flex align-items-center mb-4">
			<img class="me-2 mb-0" src="/resources/img/Rectangle_18.svg"
				alt="이미지"> <span class="my-text fw-bold h4 m-0">비슷한 구직자</span>
		</div>
		<div class="row">
			<c:forEach items="${simList}" var="simDto">
			<div class="col-6 col-md-6 col-lg-3 pb-2">
				<div class="card">
					<img src="/resources/img/job/${simDto.ja_pic}"
						class="card-img-top" alt="..." data-seq="${simDto.jaSeq}" data-rate="${simDto.rate}">
					<div class="card-body">
						<h5 class="card-title m-0">${simDto.fdName}</h5>
						<p class="card-text m-0" style="color: #DB4444;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${simDto.salary}" />원</p>
						<div class="m-0 d-flex">
							<c:set var="simRate" value="${simDto.rate}"/>
							<c:if test="${simRate - 1 > 0}">
								<c:forEach begin="0" end="${(simRate+((rate%1>=0.5)?(1-(simRate%1))%1:-(simRate%1)))-1}">
									<img src="/resources/img/Vector.svg">
									
								</c:forEach> 
							</c:if>
							
							 <span class="small fw-bold">(${simDto.rate}점)</span>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</section>

	<section class="container-lg">
		<div class="d-flex align-items-center mb-4">
			<img class="me-2 mb-0" src="/resources/img/Rectangle_18.svg"
				alt="이미지"> <span class="my-text fw-bold h4 m-0">구직자 정보</span>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<h3 class="h3">학 력</h3>
			<hr>
			<c:forEach varStatus="status" begin="0" end="${elist.size()}">
				<p>${elist[status.index]}</p>
			</c:forEach>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<h3 class="h3">경 력</h3>
			<hr>
			<c:forEach varStatus="status" begin="0" end="${clist.size()}">
				<p>${clist[status.index]}</p>
			</c:forEach>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<h3 class="h3">희망 근무 조건</h3>
			<hr>
			<div class="d-flex flex-column">
				<p>근무지 : ${dto.jaLocation}</p>
				<p>업종 : ${dto.f_name}</p>
				<p>근무 기간 : ${dto.jaBegindate} ~ ${dto.jaEnddate}</p>
				<p>근무 일시 : ${dto.jaTime }</p>
			</div>
		</div>
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<h3 class="h3">자기소개서</h3>
			<hr>
			<div class="d-flex flex-column">
				${dto.intro}
			</div>
		</div>
	</section>


	<section class="container-lg">
		<div class="d-flex align-items-center mb-4">
			<img class="me-2 mb-0" src="/resources/img/Rectangle_18.svg"
				alt="이미지"> <span class="my-text fw-bold h4 m-0">리 뷰</span>
		</div>
		
		<c:forEach items="${rlist}" var="rdto" varStatus="status">
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<div class="d-flex">
				<div class="container d-flex align-items-center">
					<div>
						${rdto.er_id}<small class="text-secondary ms-3">${rdto.er_regdate}</small>
						<div class="m-0 mt-1 d-flex">
							<c:set var="rate" value="${rdto.er_rate}"/>
							
							<c:if test="${rate - 1 > 0}">
								<c:forEach begin="0" end="${(rate+((rate%1>=0.5)?(1-(rate%1))%1:-(rate%1)))-1}">
									<img src="/resources/img/Vector.svg">
									
								</c:forEach> 
							</c:if>
							
							
							<span class="small ms-1">${rate}</span>
						</div>
					</div>
				</div>
				<div class="w-25 text-center">
					<button type="button" class="btn btn-primary border-0" data-bs-toggle="modal" data-bs-target="#csModal${status.index}">댓글 신고하기</button>
				</div>
			</div>
			<div class="container mt-3 border p-3">
				${rdto.er_content }
			</div>
			
		</div>
		
		<div class="modal fade" id="csModal${status.index}" tabindex="-1" aria-labelledby="csModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">댓글 신고하기</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      		<form method="POST" action="/shop/blacklist.do" id="blackForm">
		      			<div>
		      			신고 대상 : 
		      			<input type="text" name="bl_badmember" value="${rdto.er_id}" id="bl_badmember" disabled class="border-0 text-dark mb-2">
		      			</div>
						<div>
						<p>신고 댓글 내용 : <p> 
		      			<input type="text" name="er_content" value="${rdto.er_content}" id="er_content" disabled class="border-0 text-dark w-100">
						</div>
						<div>
							신고 제목 : <input type="text" name="bl_title" id="bl_title" class="w-100 mb-1 rounded-2 border-1">
						</div>
						<div>
							신고 내용 : <textarea name="bl_content" id="bl_content" class="w-100 mb-1 rounded-2 border-1" style="height: 200px; resize: none;"></textarea>
						</div>
						<input type="hidden" value="${id}" name="bl_writer">
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
						<input type="hidden" name="bl_badmember" value="${rdto.er_id}">
						<input type="hidden" name="er_content" value="${rdto.er_content}">
					</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn bg-secondary" data-bs-dismiss="modal">취소</button>
		        <button type="submit" class="btn bg-primary" id="blackBtn">신고</button>
		      </div>
		      
		    </div>
		  </div>
		</div>
		
		</c:forEach>
		
		
		
	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>

	$(document).ready(function() {
		
		let isJjim = ${isJjim};
		
		if (isJjim == 1) {
			$('.my-btn').addClass('active');
			
	        $('.my-btn').find('img').attr('src', '/resources/img/button/Vector-yes.png');
		}
		
	    $('.my-btn').click(function() {
	    	
	        if ($(this).hasClass('active')) {
		        $(this).removeClass('active'); // 클래스 제거
		
		        // 이미지 변경
		        $(this).find('img').attr('src', '/resources/img/button/Vector-no.png');
				isJjim = 1;	        
		        
	        } else {
		        $(this).addClass('active'); // 클래스 추가
		
		        // 이미지 변경
		        $(this).find('img').attr('src', '/resources/img/button/Vector-yes.png');
		        isJjim = 0;
	        }
	        
	        $.ajax({
	        	type : 'POST',
            	url : '/shop/jjim.do',
            	data : {
            		mk_seq : '${dto.mk_seq}',
            		id : '${id}',
            		isJjim : isJjim,
            		${_csrf.parameterName} : "${_csrf.token}"
            	}
            	
	        });
	    });
	});
	
	const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
	const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
	
	/* var popover = new bootstrap.Popover(document.querySelector('.example-popover'), {
	    container: 'body'
	}) */

	$('.card-img-top').click(function() {
		
		console.log(event.target);
		location.href = "/shop/shopping_view.do?seq=" + event.target.dataset.seq + "&rate=" + event.target.dataset.rate;
	});
	
	$('.breadcrumb').click(function() {
		
		location.href = "/shop/shopping_list.do?f_seq=&page=1";
	})

	window.onload = function() {
	    $('#blackBtn').click(function() {
	    	
	    	if($('#bl_title').val() != "" && $('#bl_content').val() != "") {

	    		swal("신고 성공!.", "신고가 완료되었습니다.", "success");
                setTimeout(function() {
                	document.getElementById('blackForm').submit();
                }, 1500);
	    		
	    		
	    		
	    		
	    	} else {
	    		alert('제목과 내용을 입력해주세요.');
	    	}
	    	
	    });
	};

</script>
</body>
</html>