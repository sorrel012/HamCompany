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
					<li class="breadcrumb-item" aria-current="page">커뮤니티</li>
					<li class="breadcrumb-item" aria-current="page">들어볼텨</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_profile.do">사업자 프로필</a></li>
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
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/mylisten_list.do">들어볼텨</a></li>
				</ul>
			</nav>
		</div>
		
		<div class="col-9 container-lg">
            <div class="container-lg mb-4 p-0">
                <h3 class="h3 mb-3 pb-2 fw-bold border-bottom border-2 border-dark">사업자 프로필</h3>
            </div>
            <form class="form-control p-4 bg-secondary bg-opacity-10">
                <div class="fw-bold d-lg-flex align-items-center">
                    <div class="w-50 me-5">
                        <p class="m-0 mb-2 w-auto">회사명</p>
                        <input class="form-control" type="email" value="SG컴퍼니" readonly>
                    </div>
                    <div class="w-50">
                        <p class="m-0 mb-2 w-auto mt-md-3 mt-sm-3 mt-lg-0">대표명</p>
                        <input class="form-control" type="email" value="김성준" readonly>
                    </div>
                </div>
                <div class="fw-bold mt-4">
                    <div class="w-100">
                        <p class="m-0 mb-2 w-auto">회사주소</p>
                        <div class="d-flex btn-group mb-2">
                            <input class="form-control"
                                style="border-top-right-radius: 0px; border-bottom-right-radius: 0px;" type="text"
                                value="서울시 강남구" readonly>
                            <button class="btn" style="width: 120px;">검색</button>
                        </div>
                        <input class="form-control mb-2" type="text" placeholder="상세 주소">
                    </div>
                </div>
                <div class="fw-bold mt-4 d-flex">
                    <div class="me-3 text-center">
                        <div>
                            <img style="height: 230px; width: 290px; object-fit: cover;"
                                class="img-fluid border border-2" src="/img/ec488ead716906761e43e0e6c459956b.jpg"
                                alt="회사이미지">
                        </div>
                        <div>
                            <button class="btn mt-2">회사사진 수정</button>
                        </div>
                    </div>
                    <div class="w-100">
                        <div class="mb-2">
                            <p class="m-0 mb-2">분야</p>
                            <input type="text" class="form-control" value="분야">
                        </div>
                        <div class="mb-2">
                            <p class="m-0 mb-2">회사 소개</p>
                            <input type="text" class="form-control" value="소개내용">
                        </div>
                        <div>
                            <p class="m-0 mb-2">사업자 등록번호</p>
                            <input class="form-control" type="text" value="220-85-62517">
                        </div>
                    </div>
                </div>
                <div class="mt-4 text-end">
                    <button class="btn" style="width: 80px;">취소</button>
                    <button class="btn" style="width: 80px;">수정</button>
                </div>
        	</form>
    	</div>

	</div>

	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>