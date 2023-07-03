<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	
	
	    <section class="container-lg mt-4">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">채용 게시판</li>
                <li class="breadcrumb-item" aria-current="page">타일공</li>
            </ol>
        </nav>
    </section>

	<section class="container-lg">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-6">
				<div class="border rounded box-shadow mb-5 p-5">
					<h2 class="h2 mb-4">결제 상세보기</h2>
					<form class="container">
						<div class="fs-6 mb-2">이름</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="이름"> <label for="floatingInput">홍길동</label>
						</div>
						<div class="fs-6 mb-2">연락처</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="이름"> <label for="floatingInput">"-"
								없이 입력하세요</label>
						</div>
						<div class="fs-6 mb-2">주소</div>
						<div class="d-flex align-items-center">
							<div class="input-group">
								<input class="form-control p-3" type="text" placeholder="상세주소"
									readonly>
								<button class="btn w-25" style="height: 57px;">검색</button>
							</div>
						</div>
						<div class="form-floating mt-2 mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="이름"> <label for="floatingInput">상세
								주소를 입력하세요</label>
						</div>
						<div class="fs-6 mb-2">이메일</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="이름"> <label for="floatingInput">user@gmail.com</label>
						</div>
						<div class="fs-6 mb-2">주문메모</div>
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="이름"> <label for="floatingInput">요청
								사항을 입력하세요</label>
						</div>
					</form>
				</div>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-6 mb-4">
				<div class="container-lg box-shadow rounded">
					<div class="d-flex align-items-center pe-4 ps-4 pt-5 pb-3">
						<div class="w-75 d-flex align-items-center">
							<img class="rounded-2"
								src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg" alt="유저이미지"
								style="width: 50px; height: 50px;">
							<div class="fs-5 ms-3">고급 타일공</div>
						</div>
						<div class="fs-6 w-25 text-end">100,000원</div>
					</div>
					<hr class="m-2">
					<div class="mt-4 ps-1 pe-1 fs-6 d-flex">
						<p class="fw-bold w-50">Total :</p>
						<p class="fw-bold w-50 text-end">100,000원</p>
					</div>
					<div class="p-2">
						<div class="form-check mb-2">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault1"> <label
								class="form-check-label" for="flexRadioDefault1"> 무통장 입금
							</label>
						</div>
						<div class="form-check mb-4">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault2" checked>
							<label class="form-check-label" for="flexRadioDefault2">
								간편 결제 </label>
						</div>
					</div>
					<div class="pb-4">
						<button class="btn w-100">결제하기</button>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>