<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>	
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style type="text/css">
	.card {
		margin-top: 15px;
		margin-bottom: 25px;
	}
		
	.mybtn {
		border: none;
		border-radius: 5px;
		padding: 7px 15px;
		color: white;
		background-color: #DB4444;
	}
	
	.rcs {
		margin-right: 20px;
	}
	
	.scroll::-webkit-scrollbar {
		display: none;
	}
</style>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<!-- list -->
	<section class="container-md mt-4 mb-5">

		<div class="row g-1">
			<div class="d-flex align-items-center mb-4">
				<img class="me-2 mb-0 primg" src="/resources/img/Rectangle_18.svg"
					alt="이미지"> <span class="my-text fw-bold h4 m-0">인재 둘러보기</span>
			</div>
			<div class="jikgun mb-3">
				<button class="mybtn dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false" id="droptitle">전체</button>
				<ul class="dropdown-menu">
						<li><button class="dropdown-item" type="button"
						onclick="location.href='/shop/shopping_list.do?f_seq=&page=1';">전체</button></li>
					<c:forEach items="${flist}" var="fdto">
						<li><button class="dropdown-item" type="button" value="${fdto.f_seq}"
						onclick="location.href='/shop/shopping_list.do?f_seq=${fdto.f_seq}&page=1';">${fdto.f_name}</button></li>
					</c:forEach>
				</ul>
				<span style="color: #BBB; margin-left: 20px;">직군을 선택해주세요.</span>
			</div>
		</div>

		<div class="row row-cols-2 row-cols-md-2 row-cols-lg-4 g-1 mt-0">
			
			<c:forEach items="${list}" var="dto" varStatus="status">
			
			<div 
				<c:if test="${status.count % 2 != 0}">class="col pe-3 pb-2"</c:if>
				<c:if test="${status.count % 2 == 0 && status.count % 4 != 0}">class="col pe-lg-3 pe-md-0 pb-2"</c:if>
				<c:if test="${status.count % 4 == 0}">class="col pe-lg-0 pe-md-0 pb-2"</c:if>
			>
				<div class="card" >
					<img src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg"
						class="card-img-top" alt="..." data-seq="${dto.jaSeq}" data-rate="${dto.rate}"> 
					<div class="card-body">
						<h5 class="card-title m-0">${dto.fdName}</h5>
						<p class="card-text m-0" style="color: #DB4444;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dto.salary}" />원</p>
						<div class="m-0 d-flex">
							
							<c:if test="${dto.rate - 1 > 0}">
								<c:forEach begin="0" end="${dto.rate - 1 }">
									<img src="/resources/img/Vector.svg">
								</c:forEach> 
							</c:if>
							
							<c:if test="${dto.rate - 1 == 0}">
								
								<img src="/resources/img/Vector.svg">
							</c:if>

							<span class="small ms-1">${dto.rate}</span>
						</div>
					</div>
				</div>
			</div>
			
		</c:forEach>
			
			
		</div>
		
		
		
		
		<div class="d-flex flex-row justify-content-center">
			<c:forEach begin="0" end="${totalPage}" varStatus="status">
				<button class="btn w-10" style="margin-right: 10px;"
				onclick="location.href='/shop/shopping_list.do?f_seq=${f_seq}&page=${status.count}';">${status.count}</button>
			</c:forEach>
			<c:if test="${totalPage > 5}">
				<button class="btn w-10" style="margin-right: 10px;">&gt;&gt;</button>
			</c:if>
		</div>
	</section>

	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	$(document).ready(function () {
		
	   $('.list-group-item').click(function () {
	     $('.list-group-item').each((index, item) => {
	       $(item).removeClass('active'); // 클래스 제거
	     })
	     $(this).addClass('active');
	   });
	
	   $('.btn-jjim').mouseover(function () {
	     $(this).attr('src', '/resources/img/jjim_hover.png');
	   });
	   $('.btn-jjim').mouseout(function () {
	     $(this).attr('src', '/resources/img/jjim.png');
	   });
	
	});
	
	$('.card-img-top').click(function() {
		

		location.href = "/shop/shopping_view.do?seq=" + event.target.dataset.seq + "&rate=" + event.target.dataset.rate;
	});
	
	$('.dropdown-item').click(function() {
		
		console.log(event.target.value);
		console.log('dsds');
	});
</script>
</body>
</html>






