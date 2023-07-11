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
    <link rel="stylesheet" href="/resources/css/checkprofile.css" />
    
    <style type="text/css">
    	#list4 {
    	    color: tomato !important; 
    		font-weight: bold;
    	}
    </style>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">관리자페이지</li>
					<li class="breadcrumb-item" aria-current="page">고객 문의</li>
					<li class="breadcrumb-item" aria-current="page">문의 내역 관리</li>
				</ol>
			</nav>
		</section>

		<!-- sidebar -->
		<%@ include file="/WEB-INF/views/inc/admin_sidebar.jsp" %>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="row mb-4 m-0 p-0">
				<div class="text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">문의 내역 관리</h3>
						<a>총 ${list[0].count}건</a>
					</div>
				</div>
			</div>
			<table class="row table table-hover m-0">
				<thead class="table-light">
					<tr class="row text-center">
						<td class="col-2">문의자</td>
						<td class="col-6">문의 내역</td>
						<td class="col-2">상태</td>
						<td class="col-2">신고일자</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto" varStatus="num">
					<tr class="row text-center">
						<c:if test="${dto.m_Id != null}">
						<td class="col-2 text-truncate">${dto.m_Id}</td>
						</c:if>
						<c:if test="${dto.b_Id != null}">
						<td class="col-2 text-truncate">${dto.b_Id}</td>
						</c:if>
						<td class="col-6 text-truncate">
							<div class="text-hover" style="cursor: pointer;" data-bs-toggle="modal" data-bs-target="#exampleModal_${num.index}">
								${dto.cscSubject} 
							</div>
						</td>
						<c:if test="${dto.cscStatus == '처리중'}">
						<td class="col-2 fw-bold text-danger text-truncate">${dto.cscStatus}</td>
						</c:if>
						<c:if test="${dto.cscStatus == '처리완료'}">
						<td class="col-2 fw-bold text-success text-truncate">${dto.cscStatus}</td>
						</c:if>
						<td class="col-2 text-truncate">${dto.cscRegDate}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="d-flex justify-content-center mt-4">
				<div>
					<button class="btn w-10" style="margin-right: 10px;">1</button>
					<button class="btn w-10" style="margin-right: 10px;">2</button>
					<button class="btn w-10" style="margin-right: 10px;">3</button>
					<button class="btn w-10" style="margin-right: 10px;">4</button>
					<button class="btn w-10" style="margin-right: 10px;">5</button>
					<button class="btn w-10" style="margin-right: 10px;">&gt;&gt;</button>
				</div>
			</div>
		</div>

	</div>
	
	<!-- Modal -->
	<c:forEach items="${list}" var="dto" varStatus="num">
	<div class="modal fade" id="exampleModal_${num.index}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">문의내용</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <form action="/checkinquiry.do" method="POST" onsubmit="showNotification()">
	      <div class="modal-body">
	        <div class="border rounded p-2">
        	  <h5 class="fw-bold mb-2">❓ 문의 내용</h5>
        	  <div class="ps-4">◼ ${dto.cscContent}</div>
	        </div>
	        <c:if test="${dto.cscStatus == '처리중'}">
   	        <div class="border rounded p-2 mt-4">
        	  <h5 class="fw-bold mb-2">❗ 답변 하기</h5>
        	  <textarea name="answer" class="w-100 border-0 pt-0 p-3" placeholder="내용을 입력하세요." style="resize: none; height: 100px; outline: none;"></textarea>
	        </div>
	        </c:if>
	        <c:if test="${dto.cscStatus == '처리완료'}">
			<div class="border rounded p-2 mt-4">
				<h5 class="fw-bold mb-2">❗ 답변</h5>
				<textarea name="answer" class="w-100 border-0 pt-0 p-3" placeholder="내용을 입력하세요." style="resize: none; height: 100px; outline: none;" readonly="readonly">◼ ${dto.cscComment}</textarea>
			</div>
	        </c:if>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn bg-secondary" data-bs-dismiss="modal">닫기</button>
	        <c:if test="${dto.cscStatus == '처리중'}">
	        <button type="submit" class="btn bg-primary">답변하기</button>
	        </c:if>
	      </div>
	      <input name="cscSeq" type="hidden" value="${dto.cscSeq}">
	      <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	      </form>
	    </div>
	  </div>
	</div>
	</c:forEach>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
</script>
</body>
</html>