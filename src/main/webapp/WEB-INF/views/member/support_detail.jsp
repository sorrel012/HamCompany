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
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<div
		class="container-fluid row d-lg-flex align-items-sm-start p-5 pt-4">

		<section class="container-lg mb-4">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">마이페이지</li>
					<li class="breadcrumb-item" aria-current="page">지원정보</li>
					<li class="breadcrumb-item bold text-danger" aria-current="page">지원 내역</li>
				</ol>
			</nav>
		</section>

		<div class="col-sm-3 col-md-3 col-lg-2 container-lg">
			<nav class="nav d-flex flex-column">
				<div class="mb-1 fw-bold">회원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/user_profile.do">프로필</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/mycs_list.do">문의 내역</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/myportfolio.do">포트폴리오</a></li>
				</ul>
				<div class="mb-1 fw-bold">지원정보</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1 active"><a
						class="text-decoration-none text-dark" href="/support_detail.do">지원 내역</a></li>
				</ul>
				<div class="mb-1 fw-bold">커뮤니티</div>
				<ul class="list-unstyled ps-3 mb-2">
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/mylisten_list.do">들어볼텨</a></li>
					<li class="nav-item pb-1"><a
						class="text-decoration-none text-dark" href="/myspeak_list.do">말해볼텨</a></li>
				</ul>
			</nav>
		</div>

		<div class="col-sm-9 col-md-9 col-lg-10 container-lg">
			<div class=" container-lg mb-4 p-0">
				<div
					class="container-lg text-start border-bottom border-2 border-dark d-flex">
					<div class="text-start">
						<h3 class="h3 pb-2 m-0 fw-bold">지원 내역 확인</h3>
					</div>
				</div>
			</div>
			<table class="container-lg table table-hover">
				<thead class="table-light">
					<tr class="text-center">
						<td class="col-1">번호</td>
						<td class="col-3">신청 회사명</td>
						<td class="col-2">근무 시작</td>
						<td class="col-2">근무 종료</td>
						<td class="col-2">금액</td>
						<td class="col-2">진행 상황</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto">
					<tr class="text-center align-middle">
						<td class="col-1 text-wrap" style="height: 60px;">${dto.p_seq}</td>
						<td class="col-3 text-wrap" style="height: 60px;">
							<a class="text-black text-decoration-none text-hover" onclick="showModal('${dto.bd_name}', '${dto.p_regdate}', '${dto.p_name}', '${dto.p_tel}', '${dto.p_email}', '${dto.p_address}', '${dto.p_address_detail}', '${dto.p_memo}', '${dto.o_confirm}', '${dto.o_seq}')"> ${dto.bd_name} </a>
						</td>
						<td class="col-2 text-wrap" style="height: 60px;">${dto.ja_begindate}
						</td>
						<td class="col-2 text-wrap" style="height: 60px;">${dto.ja_enddate}
						</td>
						<td class="col-2 text-wrap" style="height: 60px;">${dto.ja_salary}</td>
						<td class="col-2" style="height: 60px;">
							<c:choose>
								<c:when test="${dto.o_confirm eq '대기중'}">
									<button class="text-truncate btn btn-primary btn-cursor">대기 중</button>
								</c:when>
								<c:when test="${dto.o_confirm eq '승인'}">
									<button class="text-truncate btn btn-primary green btn-cursor">${dto.o_confirm}</button>
								</c:when>
								<c:otherwise>
									<button class="text-truncate btn btn-primary btn-cursor gray">${dto.o_confirm}</button>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

	</div>

	<!-- 상세정보 modal창 -->
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
						<h5 class="m-bold">✅ 회사명</h5>
						<div id="company" class="m-matop m-maleft m-font"></div>
					</div>
					<div class="m-box m-mabottom">
						<h5 class="m-bold">✅ 신청날짜</h5>
						<div id="regdate" class="m-matop m-maleft m-font"></div>
					</div>
					<div class="m-box m-mabottom">
						<h5 class="m-bold">✅ 신청자명</h5>
						<div id="applicant" class="m-matop m-maleft m-font"></div>
					</div>
					<div class="m-box m-mabottom">
						<h5 class="m-bold">✅ 연락처</h5>
						<div id="tel" class="m-matop m-maleft m-font"></div>
					</div>
					<div class="m-box m-mabottom">
						<h5 class="m-bold">✅ 이메일</h5>
						<div id="email" class="m-matop m-maleft m-font"></div>
					</div>
					<div class="m-box m-mabottom">
						<h5 class="m-bold">✅ 주소</h5>
						<div id="address" class="m-matop m-maleft m-font"></div>
					</div>
					<div class="m-box m-mabottom">
						<h5 class="m-bold">✅ 상세주소</h5>
						<div id="addressDetail" class="m-matop m-maleft m-font"></div>
					</div>
					<div class="m-box">
						<h5 class="m-bold">✅ 메모</h5>
						<div id="memo" class="m-matop m-maleft m-font"></div>
					</div>
				</div>
				<div id="btns">
				</div>
			</div>
		</div>
	</div>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>

    function showModal(bd_name, p_regdate, p_name, p_tel, p_email, p_address, p_address_detail, p_memo, o_confirm, o_seq) {
        
        $('#staticBackdrop').modal('show');
        
        $('#company').text(' ◼  ' + bd_name);
        $('#regdate').text(' ◼  ' + p_regdate);
        $('#applicant').text(' ◼  ' + p_name);
        $('#tel').text(' ◼  ' + p_tel);
        $('#email').text(' ◼  ' + p_email);
        $('#address').text(' ◼  ' + p_address);
        $('#addressDetail').text(' ◼  ' + p_address_detail);
        $('#memo').text(' ◼  ' + p_memo);
        
        if (o_confirm == '대기중') {
            $('#btns').html(
                `
                <div class="modal-footer">
					<form method="POST" id="form" >
						<button type="button" class="btn" id="acceptBtn" onclick="accept()">승인</button>
						<button type="button" class="btn bg-secondary" id="denyBtn" onclick="deny()">거절</button>
						<input type="hidden" name="o_seq" id="hiddenBtn">
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>
				</div>
                `
            );            

		    $('#hiddenBtn').attr('value', o_seq);
        }
        
    }
    
    function accept() {        

        event.preventDefault();
        
        Swal.fire({
            title: '신청을 승인하시겠습니까?',
            text: "승인 후 취소할 수 없습니다.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'okay'
          }).then((result) => {
              
            if (result.isConfirmed) {
              Swal.fire(
                '승인 완료!',
                '주문 내역이 승인되었습니다.',
                'success'
              ).then(() => {
                  $('#form').attr('action', '/support_accept.do').submit();
              });
              
            } 
            
          })
    }
    
    function deny() {
        
		event.preventDefault();
        
        Swal.fire({
            title: '신청을 거절하시겠습니까?',
            text: "거절 후 취소할 수 없습니다.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'okay'
          }).then((result) => {
              
            if (result.isConfirmed) {
              Swal.fire(
                '거절 완료!',
                '주문 내역이 거절되었습니다.',
                'success'
              ).then(() => {
                  $('#form').attr('action', '/support_deny.do').submit();
              });             
              
            } 
            
          })
        
    }
    
    
</script>
</body>

</html>