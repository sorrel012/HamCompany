<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/speaklist.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<section class="container-md mt-4 mb-5">
		<div class="headline">
			<h2>
				<span class="fw-bold" style="color: #FF914D">함!</span> <span
					class="text-primary fw-bold">말해</span>볼텨
			</h2>
			<button type="button" class="btn btn-danger"
				style="width: 100px; height: 40px;">글쓰기</button>
		</div>

		<div class="side-headline mb-1">
			<p style="text-align: left m-0">총 358,927 건</p>
			<div class="d-flex">
				<div style="width: 40%;" class="me-3">
					<select class="form-select w-100"
						aria-label="Default select example">
						<option value="1">최신순</option>
						<option value="2">오래된순</option>
						<option value="3">조회순</option>
					</select>
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="검색어를 입력해주세요."
						aria-label="Recipient's username" aria-describedby="basic-addon2">
					<button type="button" class="btn"
						style="background-color: #FF914D;">검색하기</button>
				</div>
			</div>
		</div>

		<div
			class="container-sm border border-1 border-dark border-opacity-25 rounded h-100">

			<div class="container-fluid list p-2 border-bottom ">
				<div class="d-flex align-items-center mb-2">
					<img class="profile" src="/resources/img/resources/img1.jpg">
					<div class="profile-detail">
						<p class="name">직장인뽀로로</p>
						<p class="time">13시간 전</p>
					</div>
				</div>
				<div class="d-flex flex-column">
					<h4 class="fs-3 fw-bold title" onclick="goToSpeakDetail()">그래픽분야
						디자이너 4년차 연봉</h4>
					<p class="fs-6 text-truncate">그래픽분야 디자이너 3~4년차로 되면서 연봉 협상을 하게
						되었는데요. 해당 회사는 근속 1년차입니다.</p>
				</div>
				<div class="d-flex align-items-center pb-2">
					<i class="bi bi-hand-thumbs-up-fill me-2"></i> <span
						style="margin-right: 20px;">20</span> <i
						class="bi bi-chat-left-dots me-2"></i> <span
						style="margin-right: 20px;">10</span>
				</div>
			</div>

			<div class="container-fluid list p-2 border-bottom ">
				<div class="d-flex align-items-center mb-2">
					<img class="profile" src="/resources/img/resources/img1.jpg">
					<div class="profile-detail">
						<p class="name">직장인뽀로로</p>
						<p class="time">13시간 전</p>
					</div>
				</div>
				<div class="d-flex flex-column">
					<h4 class="fs-3 fw-bold title" onclick="goToSpeakDetail()">그래픽분야
						디자이너 4년차 연봉</h4>
					<p class="fs-6 text-truncate">그래픽분야 디자이너 3~4년차로 되면서 연봉 협상을 하게
						되었는데요. 해당 회사는 근속 1년차입니다.</p>
				</div>
				<div class="d-flex align-items-center pb-2">
					<i class="bi bi-hand-thumbs-up-fill me-2"></i> <span
						style="margin-right: 20px;">20</span> <i
						class="bi bi-chat-left-dots me-2"></i> <span
						style="margin-right: 20px;">10</span>
				</div>
			</div>

			<div class="container-fluid list p-2 border-bottom ">
				<div class="d-flex align-items-center mb-2">
					<img class="profile" src="/resources/img/resources/img1.jpg">
					<div class="profile-detail">
						<p class="name">직장인뽀로로</p>
						<p class="time">13시간 전</p>
					</div>
				</div>
				<div class="d-flex flex-column">
					<h4 class="fs-3 fw-bold title" onclick="goToSpeakDetail()">그래픽분야
						디자이너 4년차 연봉</h4>
					<p class="fs-6 text-truncate">그래픽분야 디자이너 3~4년차로 되면서 연봉 협상을 하게
						되었는데요. 해당 회사는 근속 1년차입니다.</p>
				</div>
				<div class="d-flex align-items-center pb-2">
					<i class="bi bi-hand-thumbs-up-fill me-2"></i> <span
						style="margin-right: 20px;">20</span> <i
						class="bi bi-chat-left-dots me-2"></i> <span
						style="margin-right: 20px;">10</span>
				</div>
			</div>

			<div class="container-fluid list p-2 border-bottom ">
				<div class="d-flex align-items-center mb-2">
					<img class="profile" src="/resources/img/ec488ead716906761e43e0e6c459956b.jpg">
					<div class="profile-detail">
						<p class="name">직장인뽀로로</p>
						<p class="time">13시간 전</p>
					</div>
				</div>
				<div class="d-flex flex-column">
					<h4 class="fs-3 fw-bold title" onclick="goToSpeakDetail()">그래픽분야
						디자이너 4년차 연봉</h4>
					<p class="fs-6 text-truncate">그래픽분야 디자이너 3~4년차로 되면서 연봉 협상을 하게
						되었는데요. 해당 회사는 근속 1년차입니다.</p>
				</div>
				<div class="d-flex align-items-center pb-2">
					<i class="bi bi-hand-thumbs-up-fill me-2"></i> <span
						style="margin-right: 20px;">20</span> <i
						class="bi bi-chat-left-dots me-2"></i> <span
						style="margin-right: 20px;">10</span>
				</div>
			</div>

			<div class="container-fluid list p-2 border-bottom ">
				<div class="d-flex align-items-center mb-2">
					<img class="profile" src="/resources/img/resources/img1.jpg">
					<div class="profile-detail">
						<p class="name">직장인뽀로로</p>
						<p class="time">13시간 전</p>
					</div>
				</div>
				<div class="d-flex flex-column">
					<h4 class="fs-3 fw-bold title" onclick="goToSpeakDetail()">그래픽분야
						디자이너 4년차 연봉</h4>
					<p class="fs-6 text-truncate">그래픽분야 디자이너 3~4년차로 되면서 연봉 협상을 하게
						되었는데요. 해당 회사는 근속 1년차입니다.</p>
				</div>
				<div class="d-flex align-items-center pb-2">
					<i class="bi bi-hand-thumbs-up-fill me-2"></i> <span
						style="margin-right: 20px;">20</span> <i
						class="bi bi-chat-left-dots me-2"></i> <span
						style="margin-right: 20px;">10</span>
				</div>
			</div>

			<div class="container-fluid list p-2 border-bottom ">
				<div class="d-flex align-items-center mb-2">
					<img class="profile" src="/resources/img/resources/img1.jpg">
					<div class="profile-detail">
						<p class="name">직장인뽀로로</p>
						<p class="time">13시간 전</p>
					</div>
				</div>
				<div class="d-flex flex-column">
					<h4 class="fs-3 fw-bold title" onclick="goToSpeakDetail()">그래픽분야
						디자이너 4년차 연봉</h4>
					<p class="fs-6 text-truncate">그래픽분야 디자이너 3~4년차로 되면서 연봉 협상을 하게
						되었는데요. 해당 회사는 근속 1년차입니다.</p>
				</div>
				<div class="d-flex align-items-center pb-2">
					<i class="bi bi-hand-thumbs-up-fill me-2"></i> <span
						style="margin-right: 20px;">20</span> <i
						class="bi bi-chat-left-dots me-2"></i> <span
						style="margin-right: 20px;">10</span>
				</div>
			</div>



		</div>

		<div class="page">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link bg-danger" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">1</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">2</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">3</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">4</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">5</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">6</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">7</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">8</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">9</a></li>
					<li class="page-item"><a
						class="page-link bg-danger text-white" href="#">10</a></li>
					<li class="page-item"><a class="page-link bg-danger" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>


	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>