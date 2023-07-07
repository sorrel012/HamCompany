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
		
		<form method="POST" action="/jobapply_ins.do" enctype="multipart/form-data">
		<!-- 학력 -->
		<div class="mb-5">
			<div class="fw-bold mt-5 fs-4 mb-2">학력</div>
			<div class="text-bg-light p-4 rounded py-5 fs-5" id="edu">
				<div class="d-flex mb-4">
					<div class="col-1 text-truncate">학교(전공)</div>

					<input type="text" class="form-control w-50" id="floatingInputValue" name="jae_content_list" required>

				</div>
				<div class="d-flex">
					<div class="col-1 text-truncate me-sm-2 me-md-2 me-lg-0">졸업여부</div>

					<div class="form-check me-4">
						<input class="form-check-input" type="radio" name="jae_graduation_list" id="flexRadioDefault1" value="재학 중"> 
						<label class="form-check-label" for="flexRadioDefault1"> 재학 중 </label>
					</div>
					<div class="form-check me-4">
						<input class="form-check-input" type="radio" name="jae_graduation_list" id="flexRadioDefault2" value="졸업 예정"> 
						<label class="form-check-label" for="flexRadioDefault2"> 졸업 예정 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="jae_graduation_list" id="flexRadioDefault3" value="졸업" checked> 
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

				<input type="text" class="form-control w-50" id="floatingInputValue" name="jac_content_list">

			</div>

			<div class="d-flex">
				<div class="col-2">기간</div>

				<input type="text" class="form-control w-25" id="floatingInputValue" name="jac_period_list">
			</div>

		</div>
		
		<button type="button" class="btn btn-lg float-lg-end px-5 mt-3"
			style="background-color: #688ce0;" onclick="addCareer()">추가</button>


		<!-- 자격증 -->
		<div class="fw-bold mt-5 fs-4 mb-2">자격증</div>
		<div class="text-bg-light p-4 rounded py-5 fs-5" id="lic">
			<div class="d-flex mb-4">
				<div class="col-1 text-truncate">자격증명</div>

				<input type="text" class="form-control w-50" id="floatingInputValue" name="jal_content_list">

			</div>

			<div class="d-flex">
				<div class="col-1 text-truncate">발급날짜</div>

				<input type="text" class="form-control w-25" id="floatingInputValue" name="jal_issdate_list">

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

				<input type="text" class="form-control w-25 ms-3" id="floatingInputValue" name="ja_location" required>

			</div>

			<div class="d-flex mb-4">
				<div class="col-1">분야</div>

				<select class="form-select ms-3 w-25" aria-label="field" id="sel1" onchange="handleChange(this)">
					<c:forEach items="${fdto}" var="dto">
					<option value="${dto.f_seq}">${dto.f_name}</option>
					</c:forEach>
				</select> 
				<select class="form-select ms-3 w-25" aria-label="field" id="sel2" name="fd_seq">
					<c:forEach items="${fddto}" var="dto2">					
						<c:if test="${dto2.f_seq == '1'}">	
							<option value="${dto2.fd_seq}">${dto2.fd_name}</option>
						</c:if>
					</c:forEach>
				</select>

			</div>

			<div class="d-flex mb-4">
				<div class="col-1">근무기간</div>

				<div class="d-flex ms-3">
					<input type="text" class="form-control w-25 me-4"
						id="floatingInputValue" name="ja_begindate" required> - <input type="text"
						class="form-control w-25 ms-4" id="floatingInputValue"  name="ja_enddate" required>
				</div>


			</div>

			<div class="d-flex mb-4">
				<div class="col-1">근무시간대</div>

				<input type="text" class="form-control w-25 ms-1 ms-3"
					id="floatingInputValue" name="ja_time" required>
			</div>

			<div class="d-flex">
				<div class="col-1">급여</div>

				<input type="text" class="form-control w-50 ms-3"
					id="floatingInputValue" name="ja_salary" required>					
			</div>

		</div>

		<!-- 자기소개서 -->
		<div class="fw-bold mt-5 fs-4 mb-2">자기소개서</div>
		<div class="form-floating">
			<textarea class="form-control" placeholder="Leave a comment here"
				id="floatingTextarea2"
				style="min-height: 300px; background-color: #F8F9FA; border: none; resize: none;" name="ja_intro" required></textarea>
		</div>
		<div class="float-end">(0/1000)</div>


		<div class="fw-bold mt-5 fs-4 mb-4">이미지 첨부하기</div>
		<div class="mb-5 j-margin">
			<input class="form-control w-50" type="file" id="formFile" name="attach" required>
		</div>
		
		<div class="p-right p-matop">
			<button type="submit" class="btn btn-primary btn-lg float-lg-end px-5 mt-3 p-maright j-margintop j-marginbottom"style="background-color: #5179D9;">등록</button>
		</div>		
		
		</form>

	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

	let idx = 2;
	
	function addEdu() {
	    console.log(idx);
	    $('#edu').append (
	    	`
	    	<hr>
	    	<div class="d-flex mb-4 j-addmargin">
				<div class="col-1 text-truncate">학교(전공)</div>
					<input type="text" class="form-control w-50" id="floatingInputValue" name="jae_content_list">
				</div>
			<div class="d-flex">
				<div class="col-1 text-truncate me-sm-2 me-md-2 me-lg-0">졸업여부</div>
					<div class="form-check me-4">
					<input class="form-check-input" type="radio" name="jae_graduation\${idx}_list" id="flexRadioDefault1" value="재학 중"> 
					<label class="form-check-label" for="flexRadioDefault1"> 재학 중 </label>
				</div>
				<div class="form-check me-4">
					<input class="form-check-input" type="radio" name="jae_graduation\${idx}_list" id="flexRadioDefault2" value="졸업 예정"> 
					<label class="form-check-label" for="flexRadioDefault2"> 졸업 예정 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="jae_graduation\${idx}_list" id="flexRadioDefault3" value="졸업" checked> 
					<label class="form-check-label" for="flexRadioDefault3"> 졸업 </label>
				</div>	    	
			</div>
	    	`
	    );
	    
	    idx += 1;
	}
	
	function addCareer() {
	    
	    $('#career').append (
		    `
		    <hr>
		    <div class="d-flex mb-4 j-addmargin">
				<div class="col-2 text-truncate">회사명/프로젝트명</div>

				<input type="text" class="form-control w-50" id="floatingInputValue" name="jac_content_list">

			</div>

			<div class="d-flex">
				<div class="col-2">기간</div>

				<input type="text" class="form-control w-25" id="floatingInputValue" name="jac_period_list">
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

				<input type="text" class="form-control w-50" id="floatingInputValue" name="jal_content_list">

			</div>

			<div class="d-flex">
				<div class="col-1 text-truncate">발급날짜</div>

				<input type="text" class="form-control w-25" id="floatingInputValue" name="jal_issdate_list">

			</div>
			`
		);	    
	    
	}
	
	function handleChange(selObj) {
	    
	    const field = selObj.value;
	    let options = '';
	    
	    <c:forEach items="${fddto}" var="fd">
	    
		    if ("${fd.f_seq}" === field) {
			    options += `<option value="${fd.fd_seq}">${fd.fd_name}</option>`;
		    }
	    	       
	    </c:forEach>  	    
	    
	    $('#sel2').html(options);	  
	    
	}
	

</script>
</body>
</html>