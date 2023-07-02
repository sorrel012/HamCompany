<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="/resources/css/usertype.css" />
</head>
<body>
	
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>

	<div
		class="container-lg mt-5 mb-5 d-flex align-items-center justify-content-center flex-column">
		<h3 class="h3 mb-5 title">함 해볼텨 회원가입을 환영합니다!</h3>
		<div class="row d-flex justify-content-center">
			<div class="col-6 p-0 me-sm-0 me-md-0 me-lg-5" style="width: 500px;">
				<img src="/resources/img/singup/KakaoTalk_20230626_151727505.png" alt="개인회원"
					onclick="location.href='/member_signup.do'">
			</div>
			<div class="col-6 p-0 mt-sm-3 mt-md-3 mt-lg-0" style="width: 500px;">
				<img src="/resources/img/singup/KakaoTalk_20230626_151543366_01.png" alt="사업자"
					onclick="location.href='/business_signup.do'">
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>






