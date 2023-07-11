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


	<section class="container-lg mt-4 mb-5">
		<h3 class="h3 fw-bold mb-3">캠페인</h3>
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link rounded-0 active"
				aria-current="page" href="#">알바의 정석</a></li>
			<li class="nav-item"><a
				class="nav-link rounded-0 text-secondary bg-secondary bg-opacity-10"
				aria-current="page" href="#">알바의 신기술</a></li>
			<li class="nav-item"><a
				class="nav-link rounded-0 text-secondary bg-secondary bg-opacity-10"
				aria-current="page" href="#">안심캠페인</a></li>
			<li class="nav-item"><a
				class="nav-link rounded-0 text-secondary bg-secondary bg-opacity-10"
				aria-current="page" href="#">취업피해검색</a></li>
		</ul>

		<nav class="nav mt-4 mb-3">
			<a
				class="text-decoration-none me-3 text-dark border-bottom border-dark border-2 pb-2 fw-bold"
				href="#"> 2023 최저임금 </a> <a
				class="text-decoration-none me-3 text-secondary" href="#"> 근로계약서
			</a> <a class="text-decoration-none me-3 text-secondary" href="#">
				전문노무상담 </a> <a class="text-decoration-none me-3 text-secondary" href="#">
				체불사업주 </a> <a class="text-decoration-none me-3 text-secondary" href="#">
				4대 사회보험 </a> <a class="text-decoration-none me-3 text-secondary"
				href="#"> 청소년근로보호 </a>
		</nav>

		<div class="container-lg p-4 rounded"
			style="background-color: #f3ebff;">
			<div class="fs-6 fw-bold">2023 최저임금</div>
			<div class="fs-2 fw-bold">시급 9,620원</div>
			<div>최저임금제도는 임금의 최저수준을 정하고, 이 수준 이상의 임금을 지급하도록 법으로 강제하는 제도입니다.</div>
			<div class="d-flex justify-content-between">
				<div
					class="rounded p-2 mt-4 mb-3 d-flex justify-content-center w-75"
					style="background-color: #d2c1eb;">
					<div class="me-3">
						<span class="fw-bold me-1">시급</span> <span class="me-1">1시간</span>
						<span class="fw-bold me-1">9,620원</span>
					</div>
					<div class="me-3">
						<span class="fw-bold me-1">일급</span> <span class="me-1">8시간</span>
						<span class="fw-bold me-1">76,960원</span>
					</div>
					<div class="me-3">
						<span class="fw-bold me-1">주급</span> <span class="me-1">40시간</span>
						<span class="fw-bold me-1">384,800원</span>
					</div>
					<div class="me-3">
						<span class="fw-bold me-1">월급</span> <span class="me-1">209시간</span>
						<span class="fw-bold me-1">2,010,580원</span>
					</div>
					<div class="me-3">
						<span class="me-1">(주 5일 근무기준)</span>
					</div>
				</div>
				<div class="w-25 ms-5 mt-4 mb-3">
					<button class="btn bg-white text-dark p-2 fw-bold">알바급여계산기</button>
				</div>
			</div>
		</div>

		<div class="mt-4 d-flex justify-content-center">
			<div class="text-center border rounded me-4 p-5 w-100"
				style="padding-left: 70px !important; padding-right: 70px !important;">
				<div class="fw-bold fs-5 mb-3">최저임금액</div>
				<div class="mb-3">
					<p class="m-0">2023년 적용 최저임금은</p>
					<p class="m-0 mb-3">시급 9,620원 입니다.</p>
					<p class="m-0 text-secondary">3개월 이내의 수습 근로자는 최저임금의 10% 감액 적용이
						가능합니다. 다만, 근로계약기간이 1년 미만이거나 단순노무 종사자에게는 최저임금을 감액할 수 없습니다.</p>
					<P class="mt-4">
						<span class="fw-bold">적용기간</span> <span>2023.1.1 ~
							2023.12.31</span>
					</P>
				</div>
			</div>
			<div class="text-center border rounded me-4 p-5 w-100"
				style="padding-left: 70px !important; padding-right: 70px !important;">
				<div class="fw-bold fs-5 mb-3">적용대상</div>
				<div class="mb-3">
					<p class="m-0">근로자 1명 이상인 모든 사업장에 적용됩니다. 근로기준법상 근로자 (정규직, 비정규직,
						외국인 근로자 등)이면 모두 적용됩니다</p>
					<p class="text-secondary mt-3">단, 가사 사용인(가정부, 보모 등), 동거하는 친족만을
						사용하는 사업에 종사하는 동거 친족, 정신 또는 지체장애로 근로능력이 현저히 낮아 고용노동부장관의 적용제외 인가를 받은
						자, 선원법의 적용을 받는 선원 등에게는 적용되지 않습니다.</p>
				</div>
			</div>
			<div class="text-center border rounded me-4 p-5 w-100"
				style="padding-left: 70px !important; padding-right: 70px !important;">
				<div class="fw-bold fs-5 mb-3">사용자의 주지의무</div>
				<div class="mb-3">
					<p class="m-0 mb-3">사용자는 최저임금액 등을 근로자가 쉽게 볼 수 있는 장소에 게시하거나 그 외
						적당한 방법으로 근로자에게 알려야 합니다</p>
					<p class="m-0 fw-bold text-secondary">알려야 할 내용</p>
					<p class="m-0 text-secondary">최저임금액 / 최저임금에 산입하지 아니하는 임금 / 적용제외
						근로자의 범위 / 최저임금의 효력 발생년월일</p>
					<p class="m-0 fw-bold text-secondary mt-3">내용을 주지하지 않을 경우에는</p>
					<p class="m-0 text-secondary">100만원 이하의 과태료에 처해 집니다.</p>
				</div>
			</div>
		</div>
	</section>

	<section
		class="bg-secondary bg-opacity-10 d-flex justify-content-start p-5">
		<div class="p-5 mb-3 w-100">
			<div class="mb-3">
				<h3 class="fw-bold h3 mb-4">최저임금제 중요 포인트</h3>
				<p class="m-0">
					<span style="color: tomato;" class="fw-bold fs-5">Q.</span> <span
						class="fs-5 fw-bold">사용자가 최저임금을 위반한 경우 어떤 처벌을 받게 되나요?</span>
				</p>
				<p class="m-0">
					<span class="fw-bold fs-5 text-secondary">A.</span> <span
						class="fs-5 text-secondary fw-bold">3년 이하의 징역 또는 2천만원 이하 벌금
						에 처해지거나, 이 두가지 벌칙을 같이 받을 수 있습니다.</span>
				</p>
			</div>
			<hr>
			<div class="mb-3">
				<p class="m-0">
					<span style="color: tomato;" class="fw-bold fs-5">Q.</span> <span
						class="fs-5 fw-bold">최저임금 미만을 지급 받기로 한 근로계약은 유효한가요?</span>
				</p>
				<p class="m-0">
					<span class="fw-bold fs-5 text-secondary">A.</span> <span
						class="fs-5 text-secondary fw-bold"> 최저임금액에 미치지 못한 금액을 임금으로
						정하였다면 이렇게 정한 임금은 무효이고 최저임금액과 동일한 임금을 지급하여야 합니다. </span>
				</p>
			</div>
			<hr>
			<div class="mb-3">
				<p class="m-0">
					<span style="color: tomato;" class="fw-bold fs-5">Q.</span> <span
						class="fs-5 fw-bold">최저임금이 적용되지 않는 경우가 있나요?</span>
				</p>
				<div class="m-0 w-75 d-flex">
					<div>
						<span class="fw-bold fs-5 text-secondary">A.</span>
					</div>
					<div class="ms-1">
						<span class="fs-5 text-secondary fw-bold"> 1년 이상의 근로계약을 체결한
							수습 근로자에게는 최대 3개월간 최저임금의 10% 감액 을 적용할 수 있습니다. 단, 근로계약 기간이 1년 미만이거나
							단순노무업무 직종에 종사하는 근로자인 경우 최저임금 감액을 적용할 수 없습니다. </span>
					</div>
				</div>
			</div>
			<hr>
			<div class="mb-3">
				<p class="m-0">
					<span style="color: tomato;" class="fw-bold fs-5">Q.</span> <span
						class="fs-5 fw-bold"> 최저임금에 산입되는 임금과 산입되지 않는 임금 구분은 어떻게 알 수
						있나요? </span>
				</p>
				<div class="m-0 d-flex">
					<span class="fw-bold fs-5 text-secondary">A.</span>
					<div class="ms-1">
						<span class="fs-5 text-secondary fw-bold"> 최저임근에 산입되는 임금 </span>
						<div class="fs-5 text-secondary">· 매월 1회 이상 정기적·일률적으로 지급 되는
							임금 (기본급, 직무수당, 직책수당, 기술수당, 면허수당, 생산장려 수당 등)</div>
						<div class="ms-1 mt-4">
							<span class="fs-5 text-secondary fw-bold"> 최저임금에 산입되지 않는
								임금 </span>
							<div class="fs-5 text-secondary">· 매월 1회 이상 정기적으로 지급하는 임금외의
								임금(1개월을 초과하는 기간에 걸친 사유에 따라 지급하는 상여금 등)</div>
							<div class="fs-5 text-secondary">· 소정근로시간 또는 소정의 근로일에 대하여
								지급하는 임금외의 임금 (연장·야간·휴일 근로수당 등)</div>
							<div class="fs-5 text-secondary">· 복리후생을 위한 임금 (가족수당, 급식수당,
								주택수당, 통근수당 등)</div>
						</div>
					</div>
				</div>
				<hr>
				<div class="mb-3">
					<p class="m-0">
						<span style="color: tomato;" class="fw-bold fs-5">Q.</span> <span
							class="fs-5 fw-bold">주휴수당은 무엇인가요?</span>
					</p>
					<div class="m-0 w-75 d-flex">
						<div>
							<span class="fw-bold fs-5 text-secondary">A.</span>
						</div>
						<div class="ms-1">
							<span class="fs-5 text-secondary fw-bold"> 주15시간 이상 근무 하는
								근로자에게는 1주일에 1회 이상의 유급휴일(통상 일요일)을 부여 하여야 하는데, 이 유급휴일에 대해 지급하는 수당이
								주휴수당입니다. 주5일, 주40시간 미만 근로자라도 주 15시간 이상 근로하면 시간에 비례하여 지급하여야 합니다.
							</span>
						</div>
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