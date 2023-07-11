<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
	<meta charset="UTF-8">
	<title>Ham</title>
	
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	
	<link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />    
	<link rel="stylesheet" href="/resources/css/error.css" />
	
</head>
<body>
	
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>

	<section class="e-matop e-justify e-mabottom">		
		<img class="img-fluid" src="/resources/img/error.png" style="width: 65%">
	</section>

	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>
