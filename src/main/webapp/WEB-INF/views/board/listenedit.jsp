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
		</h2>

        <!--본문-->
        <form method="post" action="/editreview.do?seq=${dto.hr_seq}">
	        <div class="border border-1 border-secondary border-opacity-50 rounded p-4">
				
				<input type="hidden" id="hr_seq" name="hr_seq" value="${dto.hr_seq}">
				
	            <div class="fw-bold">제목</div>
	            <input class="form-control mt-2 w-50 mb-5" id="hr_subject" name="hr_subject" type="text" placeholder="제목" aria-label=".form-control-lg example" value="${dto.hr_subject}">
	            
	            <div class="d-flex">
	            	<div class="me-5">
			            <div class="fw-bold">회사명</div>
			            <input id="hr_company" name="hr_company" class="form-control mt-2 w-100 mb-5" type="text" placeholder="회사명" aria-label=".form-control-lg example" value="${dto.hr_company}">
	            	</div>
	            	
	            	<div class="me-5">
		           		<div class="fw-bold">분야</div>
		           		<div style="width: 100%;" class="me-3 mt-2">
							<select id="field" name="field" class="form-select w-100" aria-label="Default select example" onchange="showFDetail(this.value);">
								<c:forEach items="${flist}" var="dto">
									<option value="${dto.f_seq}">${dto.f_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					<div class="w-25">
		           		<div class="fw-bold">세부 분야</div>
		           		<div style="width: 100%;" class="me-3 mt-2">
							<select id="fd_seq" name="fd_seq" class="form-select w-100" aria-label="Default select example">
								<c:forEach items="${fdlist}" var="dto">
									<option value="${dto.fd_seq}" data-value2="${dto.f_seq}">${dto.fd_name}</option>
								</c:forEach>	
							</select>
						</div>
					</div>
	            </div>
	            
           
	
	            <div class="fw-bold">본문</div>
	            <div class="main-content-sel3">
	                 <textarea id="hr_content" name="hr_content">${dto.hr_content}</textarea>
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

    </section>
	
	
	
	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
ClassicEditor.create( document.querySelector( '#hr_content' ), {
    removePlugins: [ 'Heading' ],
    language: "ko",
});



$(document).ready(function(){
	
	//세부 분야 초기화
	const fd_seq = "${dto.fd_seq}";

    $("#fd_seq option").each(function() {
        if ($(this).val() == fd_seq) {
            $(this).prop("selected", true);
            
            const f_seq = $(this).data('value2');
 		
            //분야 초기화
            $('#field option').each(function() {
                if ($(this).val() == f_seq) {
        
                    $(this).prop("selected", true);
                    
                    //세부 분야 리스트 다시 초기화
                    $("#fd_seq option").each(function() {
                    	if ($(this).data('value2') !== f_seq) {
                    		$(this).remove();
                    	}
                    });
                }
            });
        }
        
    });

   
});

var fieldDetailSelectElement = document.getElementById("fd_seq");

// 이벤트 리스너를 등록하여 selectElement의 값이 변경될 때마다 동작하도록 설정
function showFDetail(f_seq) {
	
	//기존에 있던 option 다 없애기
	while (fieldDetailSelectElement.options.length > 0) {
		fieldDetailSelectElement.remove(0);
	}
  
	<c:forEach var="dto" items="${fdlist}">
	  if ("${dto.f_seq}" === f_seq) {
	    var option = document.createElement("option");
	    option.value = "${dto.fd_seq}";
	    option.text = "${dto.fd_name}";
	    fieldDetailSelectElement.appendChild(option);
	  } 
	    
	</c:forEach>
   
};

</script>
</body>
</html>