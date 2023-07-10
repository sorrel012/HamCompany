<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
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
	
	
	    <section class="container-lg mt-4">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">채용 게시판</li>
                <li class="breadcrumb-item" aria-current="page">${map.f_name}</li>
            </ol>
        </nav>
    </section>

	<section class="container-lg">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-6">
				<div class="border rounded box-shadow mb-5 p-5">
					<h2 class="h2 mb-4">결제 상세보기</h2>
					<form class="container">
						<div class="fs-6 mb-2">이름</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="name"
								placeholder="이름"> <label for="floatingInput">홍길동</label>
						</div>
						<div class="fs-6 mb-2">연락처</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="tel"
								placeholder="이름"> <label for="floatingInput">"-"
								없이 입력하세요</label>
						</div>
						<div class="fs-6 mb-2">주소</div>
						<div class="d-flex align-items-center">
							<div class="input-group">
								<input class="form-control p-3" type="text" placeholder="주소"
									readonly id="address">
								<input type="button" class="btn w-25" style="height: 57px;" value="검색" onclick="searchAddress()">
							</div>
						</div>
						<div class="form-floating mt-2 mb-3">
							<input type="text" class="form-control"
								placeholder="이름" id="detailAddress"> <label for="floatingInput">상세
								주소를 입력하세요</label>
						</div>
						<div class="fs-6 mb-2">이메일</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="email"
								placeholder="이름"> <label for="floatingInput">user@gmail.com</label>
						</div>
						<div class="fs-6 mb-2">주문메모</div>
						<div class="form-floating">
							<input type="text" class="form-control" id="memo"
								placeholder="이름"> <label for="floatingInput">요청
								사항을 입력하세요</label>
						</div>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					</form>
				</div>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-6 mb-4">
				<div class="container-lg box-shadow rounded">
					<div class="d-flex align-items-center pe-2 ps-2 pt-5 pb-3">
						<div class="w-75 d-flex align-items-center">
							<img class="rounded-2"
								src="/resources/img/job/${map.ja_pic}" alt="유저이미지"
								style="width: 50px; height: 50px;">
							<div class="fs-5 ms-3">${map.fdName}</div>
						</div>
						<div class="fs-6 w-25 text-end"><fmt:formatNumber type="number" maxFractionDigits="3" value="${map.salary}" />원</div>
					</div>
					<hr class="m-2">
					<div class="mt-4 ps-1 pe-1 fs-6 d-flex">
						<p class="fw-bold w-50">Total :</p>
						<p class="fw-bold w-50 text-end"><fmt:formatNumber type="number" maxFractionDigits="3" value="${map.salary}" />원</p>
					</div>
					<div class="p-2">
					
						<div class="form-check mb-4">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault2" checked>
							<label class="form-check-label" for="flexRadioDefault2">
								<img src="/resources/img/카카오페이.png" style="width:20px;" class="rounded-2">
								카카오페이 결제 </label>
						</div>
					</div>
					<div class="pb-4">
						<input type="button" class="btn w-100" id="pay" value="결제하기">
							
							<input type="hidden" id="mk_seq" value="${map.mk_seq}">
							<input type="hidden" id="fdName" value="${map.fdName}">
							<input type="hidden" id="data" value="${map.date}">
							<input type="hidden" id="salary" value="${map.salary}">
							<input type="hidden" id="m_name" value="${map.m_name}">
							
					</div>
				</div>
			</div>
		</div>
	</section>

	

	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src ="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>

	
	function searchAddress() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	       
	            document.getElementById("address").value = data.address;
	     
	        }
	    }).open();
	}
	
	
	
	$('#pay').click(function () {
        // getter
        var IMP = window.IMP;
    	IMP.init('imp24466304');
    	var money = ${map.salary}; 
    	
    	
        IMP.request_pay({		
    		pg : 'kakaopay.TC0ONETIME',
    		pay_method : 'card',
    		merchant_uid : 'merchant_' + new Date().getTime(),   //주문번호
    		name : '${map.fdName}',                                  //상품명
    		amount : money, //{map.salary}                  					 //가격
    		//customer_uid : buyer_name + new Date().getTime(),  //해당 파라미터값이 있어야 빌링 키 발급 시도            
    		buyer_name : $('#name').val(),                         //구매자 이름
    		buyer_tel : $('#tel').val(),                                    //전화번호
    		buyer_addr : $('#address').val() + $('#detailAddress').val(),
    		buyer_email : $('#email').val(),
    		buyer_memo : $('#memo').val()                            
    	},function(data){
    		if(data.success){
    			var msg = "결제가 완료되었습니다.";
                /* msg += '고유ID : ' + data.imp_uid;                //아임포트 uid는 실제 결제 시 결제 고유번호를 서버와 비교해서 결제처리하는데 필요없긴함.
                msg += '// 상점 거래ID : ' + data.merchant_uid;
                msg += '// 결제 금액 : ' + data.paid_amount;
                msg += '// 카드 승인번호 : ' + data.apply_num; */
                
                $.ajax({
                	type : 'POST',
                	url : '/shop/paycheck.do',
                	data : {
                		b_id : '${id}',
                		mk_seq : $('#mk_seq').val(),
                		p_name : $('#name').val(),
                		p_tel : $('#tel').val(),   
                		p_address : $('#address').val(),
                		p_address_detail : $('#detailAddress').val(),
                		p_memo : $('#memo').val(),
                		p_email : $('#email').val(),
                		${_csrf.parameterName} : "${_csrf.token}"
                	},
                });
                
                swal("결제 성공!.", "결제가 완료되었습니다.", "success");
                setTimeout(function() {
                	document.location.href="/shop/payok.do?m_name=" + "${map.m_name}&fdName="
     				+ "${map.fdName}&date=" + "${map.date}&salary=" + "${map.salary}";
                }, 1500);
                
            }else{
            	var msg = "결제 실패"
            	msg += "에러 내용" + rsp.error_msg;
            	swal("결제 실패!", msg, "error");
            } 
    		
    	
    	}); 
    }); 
	
	
	
</script>
</body>
</html>