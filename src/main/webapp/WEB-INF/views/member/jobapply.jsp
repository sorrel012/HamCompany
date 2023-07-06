<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/jobapply.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<section class="container-md mt-4 mb-5 pt-5">
		<div class="d-flex justify-content-between align-items-center">
			<div class="w-75">
				<h2 class="fw-bold">구직 신청서 작성하기</h2>
			</div>
		</div>

		<hr>

		<!-- 학력 -->
		<div class="mb-5">
			<div class="fw-bold mt-5 fs-4 mb-2">학력</div>
			<div class="text-bg-light p-4 rounded py-5 fs-5" id="edu">
				<div class="d-flex mb-4">
					<div class="col-1 text-truncate">학교(전공)</div>

					<input type="text" class="form-control w-50"
						id="floatingInputValue" placeholder="학교명을 입력하세요.">

				</div>
				<div class="d-flex">
					<div class="col-1 text-truncate me-sm-2 me-md-2 me-lg-0">졸업여부</div>

					<div class="form-check me-4">
						<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1"> 
						<label class="form-check-label" for="flexRadioDefault1"> 재학 중 </label>
					</div>
					<div class="form-check me-4">
						<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked> 
						<label class="form-check-label" for="flexRadioDefault2"> 졸업 예정 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" checked> 
						<label class="form-check-label" for="flexRadioDefault3"> 졸업 </label>
					</div>
				</div>

			</div>
			<button type="button" class="btn btn-lg float-lg-end px-5 mt-3"
				style="background-color: #688ce0;" onclick="addEdu()">추가</button>
		</div>

		<!-- 경력 -->
		<div class="fw-bold mt-5 fs-4 mb-2">경력</div>
		<div class="text-bg-light p-4 rounded py-5 fs-5" id="career">
			<div class="d-flex mb-4">
				<div class="col-2 text-truncate">회사명/프로젝트명</div>

				<input type="text" class="form-control w-50" id="floatingInputValue">

			</div>

			<div class="d-flex">
				<div class="col-2">기간</div>

				<input type="text" class="form-control w-25" id="floatingInputValue">
			</div>

		</div>
		
		<button type="button" class="btn btn-lg float-lg-end px-5 mt-3"
			style="background-color: #688ce0;" onclick="addCareer()">추가</button>


		<!-- 자격증 -->
		<div class="fw-bold mt-5 fs-4 mb-2">자격증</div>
		<div class="text-bg-light p-4 rounded py-5 fs-5" id="lic">
			<div class="d-flex mb-4">
				<div class="col-1 text-truncate">자격증명</div>

				<input type="text" class="form-control w-50" id="floatingInputValue">

			</div>

			<div class="d-flex">
				<div class="col-1 text-truncate">발급날짜</div>

				<input type="text" class="form-control w-25" id="floatingInputValue">

			</div>
		</div>

		<button type="button" class="btn btn-lg float-lg-end px-5 mt-3"
			style="background-color: #688ce0;" onclick="addLic()">추가</button>

		<!-- 희망 근무 조건 -->
		<div class="fw-bold mt-5 fs-4 mb-2 d-flex">
			희망 근무 조건
		</div>
		<div class="text-bg-light p-4 rounded py-5 fs-5">
			<div class="d-flex mb-4">
				<div class="col-1">근무지</div>

				<input type="text" class="form-control w-25 ms-3"
					id="floatingInputValue" placeholder="지역">

			</div>

			<div class="d-flex mb-4">
				<div class="col-1">분야</div>

				<select class="form-select ms-3 w-25" aria-label="field">
					<option value="1" selected>분야1</option>
					<option value="2">분야2</option>
					<option value="3">분야3</option>
				</select> <select class="form-select ms-3 w-25" aria-label="field">
					<option value="1" selected>세부분야1</option>
					<option value="2">세부분야2</option>
					<option value="3">세부분야3</option>
				</select>


			</div>

			<div class="d-flex mb-4">
				<div class="col-1">근무기간</div>

				<div class="d-flex ms-3">
					<input type="text" class="form-control w-25 me-4"
						id="floatingInputValue"> - <input type="text"
						class="form-control w-25 ms-4" id="floatingInputValue">
				</div>


			</div>

			<div class="d-flex mb-4">
				<div class="col-1">근무시간대</div>


				<input type="text" class="form-control w-25 ms-1 ms-3"
					id="floatingInputValue">
			</div>

			<div class="d-flex">
				<div class="col-1">급여</div>


				<input type="text" class="form-control w-50 ms-3"
					id="floatingInputValue">
			</div>

		</div>

		<!-- 자기소개서 -->
		<div class="fw-bold mt-5 fs-4 mb-2">자기소개서</div>
		<div class="form-floating">
			<textarea class="form-control" placeholder="Leave a comment here"
				id="floatingTextarea2"
				style="min-height: 300px; background-color: #F8F9FA; border: none; resize: none;"></textarea>
			<label for="floatingTextarea2">자기소개서를 작성해주세요.</label>
		</div>
		<div class="float-end">(0/1000)</div>


		<div class="fw-bold mt-5 fs-4 mb-4">이미지 첨부하기</div>
		<div class="mb-5 j-margin">
			<input class="form-control w-50" type="file" id="formFile">
		</div>
		
		<div class="p-right p-matop">
			<button type="submit" class="btn btn-primary btn-lg float-lg-end px-5 mt-3 p-maright j-margintop j-marginbottom"style="background-color: #5179D9;">등록</button>
		</div>


	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

	function addEdu() {
	    $('#edu').append (
	    	`
	    	<hr>
	    	<div class="d-flex mb-4 j-addmargin">
				<div class="col-1 text-truncate">학교(전공)</div>

				<input type="text" class="form-control w-50"
					id="floatingInputValue" placeholder="학교명을 입력하세요.">

			</div>
			<div class="d-flex">
				<div class="col-1 text-truncate me-sm-2 me-md-2 me-lg-0">졸업여부</div>

				<div class="form-check me-4">
					<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1"> 
					<label class="form-check-label" for="flexRadioDefault1"> 재학 중 </label>
				</div>
				<div class="form-check me-4">
					<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked> 
					<label class="form-check-label" for="flexRadioDefault2"> 졸업 예정 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" checked> 
					<label class="form-check-label" for="flexRadioDefault3"> 졸업 </label>
				</div>
			</div>    	
	    	`
	    );
	}
	
	function addCareer() {
	    $('#career').append (
		    `
		    <hr>
		    <div class="d-flex mb-4 j-addmargin">
				<div class="col-2 text-truncate">회사명/프로젝트명</div>

				<input type="text" class="form-control w-50" id="floatingInputValue">

			</div>

			<div class="d-flex">
				<div class="col-2">기간</div>

				<input type="text" class="form-control w-25" id="floatingInputValue">
			</div>
		    `
		);
	}
	
	function addLic() {
	    $('#lic').append (
		    `
		    <hr>
		    <div class="d-flex mb-4 j-addmargin">
				<div class="col-1 text-truncate">자격증명</div>

				<input type="text" class="form-control w-50" id="floatingInputValue">

			</div>

			<div class="d-flex">
				<div class="col-1 text-truncate">발급날짜</div>

				<input type="text" class="form-control w-25" id="floatingInputValue">

			</div>
			`
		);	    
	}		

</script>
</body>
</html>