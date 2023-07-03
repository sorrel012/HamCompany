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
        .addMoney {
            padding-right: 40px;
        }

        .won {
            margin-left: -30px;
        }

        .pickDate {
            border: 1px solid #CED4DA;
            border-radius: 5px;
            padding: 5px 20px;
        }
    </style>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<section class="container-md mt-4 mb-5">
		<!-- 01 -->
		<div
			class="fw-bold mt-5 mb-3 fs-4 border-bottom border-2  border-secondary pb-3">
			01. 문의하시는 분의 정보를 알려주세요.</div>


		<div class="d-lg-flex border-bottom py-5 fs-5 fon">
			<div class="d-flex col-lg-6 mb-sm-3 ">
				<div class="col-lg-2 me-sm-4">회사명</div>
				<div class="col-lg-4 w-75">
					<input class="form-control" type="text" placeholder="회사명">
				</div>
			</div>
			<div class="d-flex col-lg-6">
				<div class="col-lg-2 me-sm-4">담당자명</div>
				<div class="col-lg-4 w-75">
					<input class="form-control" type="text" placeholder="담당자명">
				</div>
			</div>

		</div>

		<div class="d-lg-flex border-bottom py-5 fs-5 fon">
			<div class="d-flex col-lg-6 mb-sm-3 ">
				<div class="col-lg-2 me-sm-4">연락처</div>
				<div class="col-lg-4 w-75">
					<input class="form-control" type="text"
						placeholder="ex. 010-1234-1234">
				</div>
			</div>
			<div class="d-flex col-lg-6">
				<div class="col-lg-2 me-sm-4">이메일</div>
				<div class="col-lg-4 w-75">
					<input class="form-control" type="text"
						placeholder="ex. example@ham.com">
				</div>
			</div>

		</div>

		<div class="d-lg-flex border-bottom py-5 fs-5 fon">
			<div class="d-flex col-lg-7 mb-sm-3 ">
				<div class="col-lg-3 me-sm-4">홈페이지(선택)</div>
				<div class="col-lg-4 w-75">
					<input class="form-control" type="text">
				</div>
			</div>
		</div>

		<div class="my-3">* 문의하신 내용의 답변은 기재한 연락처와 이메일로 전달드립니다.</div>


		<!-- 02 -->
		<div
			class="fw-bold mt-5 mb-3 fs-4 border-bottom border-2  border-secondary pb-3">
			02. 광고의 예산과 기간을 알려주세요.</div>

		<div class="d-lg-flex border-bottom py-5 fs-5 fon">
			<div class="d-flex col-lg-7 mb-sm-3 ">
				<div class="col-lg-3 me-sm-4">광고 예산</div>
				<div class="col-lg-4 w-75 d-flex align-items-center">
					<input class="form-control addMoney" type="text" dir="rtl">
					<span class="won">원</span>
				</div>
			</div>
		</div>

		<div class="d-lg-flex border-bottom py-5 fs-5 fon">
			<div class="d-flex col-lg-7 mb-sm-3 ">
				<div class="col-lg-3 me-sm-4">광고 기간(선택)</div>
				<div class="d-flex align-items-center">
					<input class="col-lg-auto pickDate me-4" type="date"> <span>
						~ </span> <input class="col-lg-auto pickDate ms-4" type="date">
				</div>
			</div>
		</div>


		<!-- 03 -->
		<div
			class="fw-bold mt-5 mb-3 fs-4 border-bottom border-2  border-secondary pb-3">
			03. 광고의 목적을 알려주세요.</div>

		<div class="d-lg-flex border-bottom py-5 fs-5 fon">
			<div class="d-flex col-lg-9 mb-sm-3 ">
				<div class="col-lg-3 me-sm-4">광고 목적</div>
				<div class="col-lg-6 w-100 d-flex align-items-center">
					<input class="form-control" type="text"
						placeholder="광고를 등록하려는 목적을 입력해주세요. (ex. 매출 신장, 인지도 제고, 브랜드 홍보 등)">
				</div>
			</div>
		</div>
		<div class="d-lg-flex border-bottom py-5 fs-5 fon">
			<div class="d-flex col-lg-9 mb-sm-3 ">
				<div class="col-lg-3 me-sm-4">문의 내역(선택)</div>
				<div class="col-10 form-floating">
					<textarea class="form-control" placeholder="텍스트 입력"
						style="height: 200px; resize: none;"></textarea>
				</div>
			</div>
		</div>


		<div class="text-bg-light p-4 rounded py-5 fs-5 mt-3 px-5">

			<div class="fs-5 fw-bold mb-3">개인정보 수집 및 이용 안내</div>
			<div class="text-secondary">제휴 및 광고 문의를 이용하시려면 결과 회신을 위한 필수항목을
				입력해야 하며 필수항목을 입력하지 않으면 서비스를 이용하실 수 없습니다. 선택항목은 입력하지 않더라도 서비스 이용에 제한을
				두지 않습니다.</div>
			<div class="text-secondary border-bottom pb-4 mb-4">
				1. 개인 정보의 수집 및 이용 목적 : 제휴 광고 문의에 대한 결과 회신<br> 2. 수집하는 개인 정보의 항목<br>
				&nbsp; &nbsp; a. 필수 항목 : 회사명, 담당자명, 회사 전화번호, e-mail 주소<br>
				&nbsp; &nbsp; b. 선택 항목 : 홈페이지(URL)<br> 3. 개인정보의 보유 및 이용 기간 :
				소비자의 불만 또는 분쟁처리에 관한 기록에 의거하여 규정된 보존 기간동안 보유<br>
			</div>

			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckChecked"> <label class="form-check-label"
					for="flexCheckChecked"> <span class="text-danger">개인정보수집
						및 이용안내</span> 에 동의합니다.
				</label>
			</div>




		</div>

		<button type="button" class="btn btn-dark float-end my-5 px-4"
			style="background-color: black">문의하기</button>
	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>