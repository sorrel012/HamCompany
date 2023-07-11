<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
a:hover {
	cursor: pointer;
}
</style>
	
<!-- 모달 창 1 -->
<div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="confirmationModalLabel">회사 소개</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <img class="w-100" src="/resources/img/회사소개.png">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary border-0" data-bs-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>

<!-- 모달 창 2 -->
<div class="modal fade" id="confirmationModal2" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="confirmationModalLabel">이용 약관</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <img class="w-100" src="/resources/img/이용약관.png">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary border-0" data-bs-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>

<!-- 모달 창 3 -->
<div class="modal fade" id="confirmationModal3" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="confirmationModalLabel">이메일 무단수집거부</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <img class="w-100" src="/resources/img/이메일 무단수집 거부.png">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary border-0" data-bs-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>
    
 <footer class="container-fluid footer p-0">
   <img src="/resources/img/footer.jpg" alt="footer이미지">
   <div class="container-fluid p-2 bg-dark" style="height: 50px;">
     <ul class="d-flex list-unstyled pt-1 justify-content-around m-0">
       <li><a class="text-decoration-none text-white" onclick="showConfirmationModal()">회사소개</a></li>
       <li><a class="text-decoration-none text-white" onclick="showConfirmationModal2()">이용약관</a></li>
       <li><a class="text-decoration-none text-white" href="/privacy.do">개인정보처리방침</a></li>
       <li><a class="text-decoration-none text-white" onclick="showConfirmationModal3()">이메일 무단수집거부</a></li>
       <li><a class="text-decoration-none text-white" href="/addinquiry.do">제휴 및 광고문의</a></li>
       <li><a class="text-decoration-none text-white" href="/campaign.do">캠페인</a></li>
     </ul>
   </div>
 </footer>
 
<script>
//모달 창 띄우기
function showConfirmationModal() {
  $('#confirmationModal').modal('show');
}
//모달 창 띄우기
function showConfirmationModal2() {
  $('#confirmationModal2').modal('show');
}
//모달 창 띄우기
function showConfirmationModal3() {
  $('#confirmationModal3').modal('show');
}
</script>