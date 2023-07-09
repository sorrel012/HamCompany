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
			<div class="container-lg">
				<img class="img-fluid rounded-3" src="/resources/img/singuppng.png"
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
						<div class="fs-5 fw-bold">${dto.salary}원</div>
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
					<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
						class="card-img-top" alt="..." data-seq="${simDto.jaSeq}" data-rate="${simDto.rate}">
					<div class="card-body">
						<h5 class="card-title m-0">${simDto.fdName}</h5>
						<p class="card-text m-0" style="color: #DB4444;">${simDto.salary}원</p>
						<div class="m-0 d-flex">
							<c:set var="simRate" value="${simDto.rate}"/>
							<c:if test="${simRate - 1 > 0}">
								<c:forEach begin="0" end="${(simRate+((rate%1>=0.5)?(1-(simRate%1))%1:-(simRate%1)))-1}">
									<img src="/resources/img/Vector.svg">
									
								</c:forEach> 
							</c:if>
							
							 <span class="small">${simDto.rate}</span>
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
		
		<c:forEach items="${rlist}" var="rdto">
		<div class="container-md p-3 rounded-1 mb-5 box-shadow">
			<div class="d-flex">
				<div class="container d-flex align-items-center">
					<div>
						<small class="text-secondary">${rdto.er_regdate}</small>
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
				<div>
					<button type="button"
						class="btn btn-secondary bg-white text-dark border-0"
						data-bs-html="true" data-bs-container="body"
						data-bs-trigger="focus" data-bs-toggle="popover"
						data-bs-placement="bottom"
						data-bs-content="<a href='#' class='text-danger text-decoration-none'>댓글 신고하기</a><br><a href='#' class='text-danger text-decoration-none'>사용자 신고하기</a>">
						<span class="material-symbols-outlined"> more_horiz </span>
					</button>
				</div>
			</div>
			<div class="container mt-3 border p-3">
				${rdto.er_content }
			</div>
			
		</div>
		
		
		</c:forEach>
	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

	$(document).ready(function() {
		
		let isJjim = ${isJjim};
		
		if (isJjim == 1) {
			$('.my-btn').addClass('active');
			
	        $('.my-btn').find('img').attr('src', '/resources/img/button/Vector-yes.png');
		}
		
	    $('.my-btn').click(function() {
	    	
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

</script>
</body>
</html>