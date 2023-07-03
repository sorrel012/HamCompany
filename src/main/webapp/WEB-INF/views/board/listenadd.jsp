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
        <h2 class="fw-bold mt-5 mb-3"> 함! 들어볼텨 </h2>

        <!--본문-->
        <div class="border border-1 border-secondary border-opacity-50 rounded p-4">

            <div class="fw-bold">말머리</div>

            <select class="form-select w-25 mt-2 mb-4" aria-label="Default select example">
                <option value="1" selected>일상</option>
                <option value="2">질문&답변</option>
              </select>

            <div class="fw-bold">제목</div>
            <input class="form-control mt-2 w-50 mb-5" type="text" placeholder="제목" aria-label=".form-control-lg example">

            <div class="fw-bold">본문</div>
            <div class="main-content-sel3">
                 <textarea name="text" id="editor" placeholder="내용을 입력하세요."></textarea>
            </div>

            <div class="d-flex justify-content-end mt-5">

                <button type="button" class="btn me-4"
                style="--bs-btn-padding-y: 0.7rem; --bs-btn-padding-x: 2.5rem; --bs-btn-font-size: 1.1rem; background-color : rgb(156, 156, 156);">취소</button>


                <button type="button" class="btn btn-danger"
                style="--bs-btn-padding-y: 0.7rem; --bs-btn-padding-x: 2.5rem; --bs-btn-font-size: 1.1rem;">등록</button>

                
            </div>
            
		</div>	

    </section>
	
	
	
	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
ClassicEditor.create( document.querySelector( '#editor' ), {
    removePlugins: [ 'Heading' ],
    language: "ko",
});
</script>
</body>
</html>