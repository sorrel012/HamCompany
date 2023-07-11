<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HamCompany</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/myprofile.css" />
	<link rel="stylesheet" href="/resources/css/supportdetail.css" />
	<link rel="stylesheet" href="/resources/css/business.css" />
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>

	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4 p-height">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">마이페이지</li>
					<li class="breadcrumb-item" aria-current="page">회원정보</li>
					<li class="breadcrumb-item text-danger bold" aria-current="page">나의 문의내역</li>
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
						class="text-decoration-none text-dark" href="/business_profile_detail.do">사업자 상세 프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/wish_list.do">위시리스트</a></li>
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/business_inquiry.do">나의 문의내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">주문 정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/order_list.do">주문 내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">커뮤니티</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/business_myspeak_list.do">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class="container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">문의 내역</h3>
					</div>
				</div>
			</div>
			<table class="container-lg table table-hover">
				<thead class="table-light">
					<tr class="text-center">
						<td class="col-2 text-wrap">번호</td>
						<td class="col-4 text-wrap">제목</td>
						<td class="col-2 text-wrap">날짜</td>
						<td class="col-4 text-wrap">처리상태</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto">
					<tr class="text-center align-middle">
						<td class="col-2 text-wrap">${dto.csc_seq}</td>
						<td class="col-4 text-wrap"><a class="text-dark text-wrap text-decoration-none text-hover" onclick="showModal('${dto.csc_content}', '${dto.csc_comment}')"> ${dto.csc_subject}</a></td>
						<td class="col-2 text-wrap">${dto.csc_regdate}</td>
						<td class="col-2" style="height: 60px;">
							<c:choose>
								<c:when test="${dto.csc_status eq '처리중'}">
									<button class="text-truncate btn btn-primary btn-cursor">처리 중</button>
								</c:when>
								<c:otherwise>
									<button class="text-truncate btn btn-primary btn-cursor green">처리 완료</button>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>

	<!-- 내용 modal창 -->
   <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg">
         <div class="modal-content">
            <div class="modal-header">
               <h1 class="modal-title fs-5 m-weight" id="staticBackdropLabel">상세내역</h1>
               <button type="button" class="btn-close" data-bs-dismiss="modal"
                  aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <div class="m-box m-mabottom">
                  <h5 class="m-bold">❓ 문의 내용</h5>
                  <div id="content" class="m-matop m-maleft m-font"></div>
               </div>
               <div class="m-box m-mabottom">
                  <h5 class="m-bold">❗ 답변</h5>
                  <div id="comment" class="m-matop m-maleft m-font"></div>
               </div>
            </div>               
         </div>
      </div>
	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
function showModal(content, comment) {
    
    $('#staticBackdrop').modal('show');	    
    $('#content').text(' ◼  ' + content);
    
    if(comment == null || comment == '') {
        $('#comment').text(' 🙏 처리 중입니다. 빠르게 처리하겠습니다.' );
    } else {
       $('#comment').text(' ◼  ' + comment);
    }

    
}
</script>
</body>
</html>