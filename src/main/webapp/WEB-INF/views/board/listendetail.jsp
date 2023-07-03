<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script src="/js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<!-- mainContent -->
	<section class="container-md mt-4 mb-5">
		<h2 class="fw-bold mt-5 mb-3">함! 들어볼텨</h2>

		<!--본문-->
		<div
			class="border border-1 border-secondary border-opacity-50 rounded p-4">

			<div class="p-2">
				<div class="fs-3 mt-2 fw-semibold">자격증 추가로 더 딸까요??</div>

				<div class="d-flex mt-2">
					<div class="pe-3 me-3 border-end" style="color: #FF9170;">아침햇살</div>
					<div>2023-06-26 14:26</div>
				</div>
			</div>

			<hr>

			<div class="my-4 lh-lg">

				현재 가지고 있는 것들은 기사 자격증 한 개입니다. <br> 다른 종류 자격증 따면 도움이 될까요? <br>

				아니면 하나로 전문성 키우는 게 나을까요?

			</div>

			<div class="d-flex justify-content-between  mt-5"
				style="align-items: flex-end;">
				<div class="d-flex ">
					<span class="material-symbols-outlined me-2">chat</span> <span>댓글
						<span style="color: #FF9170;">2</span>개
					</span>
				</div>

				<div>
					<button type="button" class="btn btn-danger"
						style="-bs-btn-padding-y: 0.7rem; - -bs-btn-padding-x: 2.5rem; - -bs-btn-font-size: 1.1rem;">수정</button>

					<button type="button" class="btn"
						style="-bs-btn-padding-y: 0.7rem; - -bs-btn-padding-x: 2.5rem; - -bs-btn-font-size: 1.1rem; background-color: rgb(156, 156, 156);">삭제</button>
				</div>
			</div>

			<hr>

			<!-- 댓글 -->
			<div>
				<div class="border-bottom">

					<div class="d-flex mt-2">
						<div class="pe-3 me-3 border-end">피그마 작업</div>
						<div>2023-06-26 14:27</div>
					</div>

					<div class="my-3 lh-lg"">
						개인적으로는 하나로 전문성 키우는 걸 추천드립니다.<br> 저도 자격증 하나로 한 달에 부족함 없이 벌고
						있어요 ㅎㅎ
					</div>
				</div>

				<div class="border-bottom">

					<div class="d-flex mt-2">
						<div class="pe-3 me-3 border-end">열일하기</div>
						<div>2023-06-26 15:13</div>
					</div>

					<div class="my-3 lh-lg"">
						저는 윗댓글 분과 의견이 조금 달라요..! <br> 하나로 전문성 키우는 것도 좋긴 한데, 그것만으로는 요즘
						살아남기 힘들어요 <br> 한 2개 정도는 따두는 게 좋은 것 같아요
					</div>
				</div>
			</div>

			<form class="d-flex my-4">
				<div class="input-group">
					<input class="form-control" type="text" placeholder="댓글 작성하기"
						aria-label=".form-control-lg example">
					<button type="button" class="btn btn-dark px-4"
						style="background-color: black;">등록</button>
				</div>
			</form>

		</div>
		<div class="d-flex my-4 flex-row-reverse">
			<button type="button" class="btn btn-outline-secondary"
				style="-bs-btn-padding-y: 0.7rem; - -bs-btn-padding-x: 2.5rem; - -bs-btn-font-size: 1.1rem; background-color: white; color: black;"
				onclick="location.href='/html/speakList.html'">
				<i class="bi bi-list"></i> 목록 보기
			</button>
		</div>

	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>