
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script src="/js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>


	<!-- mainContent -->
	<section class="container-md mt-4 mb-5">
		<h2 class="my-5">
			<span class="fw-bold" style="color: #FF914D">함!</span> <span
				class="text-danger fw-bold">들어</span>볼텨 <span class="fw-bold">[사업자]</span>
		</h2>

		<!--본문-->
		<div
			class="border border-1 border-secondary border-opacity-50 rounded p-4">

			<div class="p-2">
				<div class="fs-3 mt-2 fw-semibold">${dto.sb_subject}</div>

				<div class="d-flex justify-content-between mt-2">
					<div class="d-flex">
						<div class="pe-3 me-3 border-end" style="color: #FF9170;">${dto.bd_name}</div>
						<div>${dto.sb_regdate}</div>
					</div>
					<div>
						<i class="bi bi-eye me-2">
						<span class="fst-normal">${dto.sb_hit}</span>
						</i>
					</div>
				</div>
			</div>

			<hr>

			<div class="my-4 lh-lg">
				
				${dto.sb_content}

			</div>

			<div class="d-flex justify-content-between  mt-5"
				style="align-items: flex-end;">
				<div class="d-flex ">
					<span class="material-symbols-outlined me-2">chat</span> <span>댓글
						<span style="color: #FF9170;" id="commentCnt">${ccnt}</span>개
					</span>
				</div>

				<div>
					<button type="button" class="btn btn-danger"
						style="-bs-btn-padding-y: 0.7rem; - -bs-btn-padding-x: 2.5rem; - -bs-btn-font-size: 1.1rem;" onclick="location.href='/speakedit.do?type=2&seq=${dto.sb_seq}';">수정</button>

					<button type="button" class="btn"
						style="-bs-btn-padding-y: 0.7rem; - -bs-btn-padding-x: 2.5rem; - -bs-btn-font-size: 1.1rem; background-color: rgb(156, 156, 156);"
						data-bs-toggle="modal" data-bs-target="#exampleModal" >삭제</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					    	<div class="modal-header">
					    		함 들어볼텨
					    	</div>
					      <div class="modal-body fs-4 fw-bold">
					        정말 게시글을 삭제하시겠습니까?
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" style="border : none;" data-bs-dismiss="modal" onclick="location.href='/deleteSBComment.do?seq=${dto.sb_seq}'">삭제</button>
					        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" style="background-color: rgb(156, 156, 156); border : none;">취소</button>
					      </div>
					    </div>
					  </div>
					</div>
					
				</div>
			</div>

			<hr>

			<!-- 댓글 -->
			<div id="commentList">
				<c:forEach items="${clist}" var="dto">
					<div class="border-bottom">
	
						<div class="d-flex mt-2">
							<div class="pe-3 me-3 border-end">${dto.bd_name}(${dto.b_id})</div>
							<div>${dto.sbc_regdate}</div>
						</div>
	
						<div class="my-3 lh-lg">
							${dto.sbc_content}
						</div>
					</div>
				</c:forEach>
			</div>

			<form class="d-flex my-4">
				<div class="input-group">
					<input class="form-control" type="text" placeholder="댓글 작성하기"
						aria-label=".form-control-lg example" id="sbc_content" name="sbc_content">
					<button id="addComment" type="button" class="btn btn-dark px-4"
						style="background-color: black; ">등록</button>
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
				</div>
			</form>

		</div>
		<div class="d-flex my-4 flex-row-reverse">
			<button type="button" class="btn btn-outline-secondary"
				style="-bs-btn-padding-y: 0.7rem; - -bs-btn-padding-x: 2.5rem; - -bs-btn-font-size: 1.1rem; background-color: white; color: black;"
				onclick="location.href='/speakblist.do';">
				<i class="bi bi-list"></i> 목록 보기
			</button>
		</div>

	</section>


	<!-- footer -->
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

	$("#addComment").click(function(){
		$.ajax({
 			type: "POST",
 			url : "/addsbcomment.do", 
 			data : {
 				sb_seq : "${dto.sb_seq}",
 				sbc_content : $(sbc_content).val(),
 				${_csrf.parameterName} : "${_csrf.token}"
 				
 			},
 			dataType : 'JSON',
 			success: function(results){

	 				
	 			let div = `
					<div class="border-bottom">
	
						<div class="d-flex mt-2">
							<div class="pe-3 me-3 border-end">\${results.bd_name}(\${results.b_id})</div>
							<div>\${results.sbc_regdate}</div>
						</div>
	
						<div class="my-3 lh-lg"">
							\${results.sbc_content}
						</div>
					</div>
					`;
				
	
				$('#commentList').append(div);
				
				$('#sbc_content').val("");
				
				$('#commentCnt').text(`\${results.BoardCnt}`);
 
			
 			},
 			error: function(data){
 				alert("에러 발생. " + data);
 			}
 		})
	});
			
</script>
</body>
</html>