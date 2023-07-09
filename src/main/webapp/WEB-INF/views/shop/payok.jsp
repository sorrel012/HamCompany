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
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	
	
	
	<div class="row mb-5 mt-5 justify-content-center text-center ms-0 me-0">
		<div class="col-10 ju border shadow">
			
			<div class="fw-bold fs-4 mt-4 text-center">결제가 완료되었습니다.</div>
			
			<hr>
			
			<table class="table text-center fs-4 mt-5 w-75 ms-auto me-auto border-1">
				<tr class="border-top">
					<td class="w-25 border-1">이름</td>
					<td class="w-50 border-1 ps-5">${map.m_name}</td>
				</tr>
				<tr>
					<td class="w-25 border-1">직종</td>
					<td class="w-50 border-1 ps-5">${map.fdName}</td>
				</tr>
				<tr>
					<td class="w-25 border-1">기간</td>
					<td class="w-50 border-1 ps-5">${map.date}</td>
				</tr>
				<tr>
					<td class="w-25 border-1">결제금액</td>
					<td class="w-50 border-1 ps-5">${map.salary}원</td>
				</tr>
			</table>
			
			<div class="col-6 ms-auto me-auto mb-4">
				
				<input type="button" value="확인" style="background-color: #DB4444;" class="btn w-50 mt-4"
				onclick="location.href='/shop/shopping_list.do?f_seq=&page=';">
			</div>
			
		</div>
	</div>
	
	
	
	
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>
