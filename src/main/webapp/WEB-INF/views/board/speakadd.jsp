<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<style>
	.ck-editor__editable {
		height: 400px;
	}
</style>
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	
	
    <!-- mainContent -->
    <section class="container-md mt-4 mb-5">
        <h2 class="my-5">
			<span class="fw-bold" style="color: #FF914D">함!</span> <span
				class="text-danger fw-bold">들어</span>볼텨 
				<c:if test="${type == 1}">
					<span class="fw-bold">[사용자]</span>
				</c:if>
				<c:if test="${type == 2}">
					<span class="fw-bold">[사업자]</span>
				</c:if>
				
		</h2>

        <!--본문-->
        <c:if test="${type == 1}">
	        <form method="post" action="/addspeakM.do">
		        <div class="border border-1 border-secondary border-opacity-50 rounded p-4">
		
		            <div class="fw-bold">제목</div>
		            <input class="form-control mt-2 w-50 mb-5" id="sm_subject" name="sm_subject" type="text" placeholder="제목" aria-label=".form-control-lg example">
		
		            <div class="fw-bold">본문</div>
		            <div class="main-content-sel3">
		                 <textarea id="sm_content" name="sm_content"></textarea>
		            </div>
		
		            <div class="d-flex justify-content-end mt-5">
		
		                <button type="button" class="btn me-4"
		                style="--bs-btn-padding-y: 0.7rem; --bs-btn-padding-x: 2.5rem; --bs-btn-font-size: 1.1rem; background-color : rgb(156, 156, 156);" onclick="history.back();">취소</button>
		
		
		                <button type="submit" class="btn btn-danger"
		                style="--bs-btn-padding-y: 0.7rem; --bs-btn-padding-x: 2.5rem; --bs-btn-font-size: 1.1rem;">등록</button>
		
		                
		            </div>
		            
				</div>
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
				
			</form>
		</c:if>
		
		
		<c:if test="${type == 2}">
		      <form method="post" action="/addspeakB.do">
		       <div class="border border-1 border-secondary border-opacity-50 rounded p-4">
		
		           <div class="fw-bold">제목</div>
		           <input class="form-control mt-2 w-50 mb-5" id="sb_subject" name="sb_subject" type="text" placeholder="제목" aria-label=".form-control-lg example">
		
		           <div class="fw-bold">본문</div>
		           <div class="main-content-sel3">
		                <textarea id="sb_content" name="sb_content"></textarea>
		           </div>
		
		           <div class="d-flex justify-content-end mt-5">
		
		               <button type="button" class="btn me-4"
		               style="--bs-btn-padding-y: 0.7rem; --bs-btn-padding-x: 2.5rem; --bs-btn-font-size: 1.1rem; background-color : rgb(156, 156, 156);" onclick="history.back();">취소</button>
		
		
		               <button type="submit" class="btn btn-danger"
		               style="--bs-btn-padding-y: 0.7rem; --bs-btn-padding-x: 2.5rem; --bs-btn-font-size: 1.1rem;">등록</button>
		
		               
		           </div>
		         <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		           
			</div>
		</form>
		</c:if>
		
		
    </section>
	
	
	
	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

<c:if test="${type == 1}">
	ClassicEditor.create( document.querySelector( '#sm_content' ), {
	    removePlugins: [ 'Heading' ],
	    language: "ko",
	});
</c:if>

<c:if test="${type == 2}">
	ClassicEditor.create( document.querySelector( '#sb_content' ), {
	    removePlugins: [ 'Heading' ],
	    language: "ko",
	});
</c:if>



</script>
</body>
</html>