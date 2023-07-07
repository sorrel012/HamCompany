<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>함 들어볼텨</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/listenlist.css" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<div class="mt-5 mb-5 text-center">
    	<img class="w-75"  src="/resources/img/ham_listen.png">
  	</div>

	<section class="container-md mt-4 mb-5">
		<div class="headline">
			<h2>
				<span class="fw-bold" style="color: #FF914D">함!</span> <span
					class="text-danger fw-bold">들어</span>볼텨
			</h2>
			<button type="button" class="btn btn-danger"
				style="width: 100px; height: 40px;" onclick="location.href='/listenadd.do'">글쓰기</button>
		</div>

		<div class="side-headline mb-1">
	        <p style="text-align:left m-0;" class="fs-5">총 <span class="fw-bold">${count}</span>건</p>
	        <div class="d-flex">
	            <div style="width: 40%;" class="me-3">
	                <select class="form-select w-100" id="sortList" aria-label="Default select example">
	                	<option disabled selected>정렬 기준</option>
	                    <option value="1">최신순</option>
	                    <option value="2">오래된순</option>
	                </select>
	            </div>
	            <div class="input-group mb-3">
	                <input type="text" id="word" name="word" class="form-control" placeholder="검색어를 입력해주세요." aria-label="Recipient's username" aria-describedby="basic-addon2">
	                <button type="button" id="searchBtn" class="btn" style="background-color: #FF914D;" onclick="search();">검색하기</button>
	        	</div>
	        </div>
    	</div>

		<c:if test="${count != 0}">
			<div
				class="container-sm border border-1 border-dark border-opacity-25 rounded h-100">
					
				
				<c:forEach items="${list}" var="dto">
				
					<div class="container-fluid list p-2 border-bottom " onclick="location.href='/listendetail.do?seq=${dto.hr_seq}'">
						<div class="d-flex align-items-center mb-2">
							<img class="profile" src="/resources/img/로고.png">
							<div class="profile-detail">
								<p class="name">${dto.m_name}(${dto.m_id})</p>
								<p class="time">${dto.hr_regdate}</p>
							</div>
						</div>
						<div class="d-flex flex-column">
							<h4 class="fs-3 fw-bold title">
								${dto.hr_subject}</h4>
						</div>
						<div class="d-flex align-items-center pb-2" >
								<i class="bi bi-chat-left-dots me-2"></i> <span
								style="margin-right: 20px;">${dto.cnt}</span>
								<i class="bi bi-eye me-2">
								<span class="fst-normal"style="margin-right: 20px;">${dto.hr_hit}</span>
								</i>
								
                    			
                
								<div class="bg-danger bg-opacity-25 px-3">
									${dto.fd_name}
								</div>
							
						</div>
					
					</div>
					
				</c:forEach>
			</div>
		</c:if>
		
		
		<c:if test="${count == 0}">
			
			<hr>
			<div>
				<div class="text-center my-5 fs-2 fw-bold">검색 결과가 존재하지 않습니다.</div>
				<div class="w-100 d-flex justify-content-center" >
					<button type="button" class="btn btn-light btn-lg mb-5 text-dark" style="background-color : #ededed;" onclick="location.href='/listenlist.do'">전체 리스트 보기</button>
				</div>
				
				
        </div>
		</c:if>

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

	function search() {
		
		if ($('#word').val() == "") {
			alert("검색어를 입력해주세요.");
		} else {
			location.href="/searchlist.do?word="+$('#word').val();
		}
			
	};
	
	
	$(document).ready(function(){
		
		const sorted = "${sorted}";

		$('#sortList option').each(function() {
			if ($(this).val() == sorted) {
				$(this).prop("selected", true);
			}
		});
		
	});
	
	$('#sortList').change(function () {
		
		location.href="/listenlist.do?sort="+$(this).val();
	}) 
	
</script>
</body>
</html>