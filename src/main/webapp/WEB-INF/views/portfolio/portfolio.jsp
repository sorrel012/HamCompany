<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<style>
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


	<section class="container-md mt-4 mb-5">

		<div class="row g-1">
			<div class="d-flex align-items-center mb-4">
				<img class="me-2 mb-0 primg" src="/resources/img/Rectangle_18.svg"
					alt="이미지"> <span class="my-text fw-bold h4 m-0">포트폴리오
					둘러보기</span>
			</div>
			<div class="jikgun mb-3">
				<button class="mybtn dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">${p_service}</button>
						<ul class="dropdown-menu">
						<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do';">전체보기</button></li>
					<c:forEach items="${getpfField}" var="fieldDTO">
							<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do?p_service=${fieldDTO.f_name}';">${fieldDTO.f_name}</button></li>
					</c:forEach>
						</ul>
<!-- 				<ul class="dropdown-menu">
					<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do';">전체보기</button></li>
					<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do?p_service=앱 개발';">앱 개발</button></li>
					<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do?p_service=웹 개발';">웹 개발</button></li>
					<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do?p_service=타일/인테리어';">타일/인테리어</button></li>
					<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do?p_service=사진/비디오 촬영';">사진/비디오 촬영</button></li>
					<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do?p_service=디자인';">디자인</button></li>
					<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do?p_service=뷰티';">뷰티</button></li>
					<li><button class="dropdown-item" type="button" onclick="location.href='/portfolio.do?p_service=공예';">공예</button></li>
				</ul> -->
				<span style="color: #BBB; margin-left: 20px;">직군을 선택해주세요.</span>
			</div>
			<div>총 ${pfcnt}개의 포트폴리오</div>
		</div>

		<div class="row row-cols-2 row-cols-md-2 row-cols-lg-4 g-1 mt-0">
			<c:forEach items="${pflist}" var="pfdto">
			<div class="col pe-3 pb-2" onclick="location.href='/portfolio_view.do?p_seq=${pfdto.p_seq}'">
				<div class="card">
					<img src="/resources/img/${pfdto.pg_name}"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title m-0">${pfdto.p_subject}</h5>
						<p class="card-text m-0">${pfdto.p_service}</p>
						<div class="m-0 d-flex">
							<img src="/resources/img/profile.jpg" style="width: 24px;">
							<span>${pfdto.m_name}</span>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
		<div class="d-flex flex-row justify-content-center">
		<c:if test="${prev}">
			<button class="btn w-10" style="margin-right: 10px;" onclick="location.href='/portfolio.do?num=${startPageNum - 1}&p_service=${p_service}';">&lt;&lt;</button>
		</c:if>
		
		<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
			<button class="btn w-10" style="margin-right: 10px;" onclick="location.href='/portfolio.do?num=${num}&p_service=${p_service}';">${num}</button>
		</c:forEach>
		
		<c:if test="${next}">
			<button class="btn w-10" style="margin-right: 10px;" onclick="location.href='/portfolio.do?num=${endPageNum + 1}&p_service=${p_service}';">&gt;&gt;</button>
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
      $(this).attr('src', '/img/jjim_hover.png');
    });
    $('.btn-jjim').mouseout(function () {
      $(this).attr('src', '/img/jjim.png');
    });

  });
</script>
</body>
</html>