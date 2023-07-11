<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>함 말해볼텨</title>
   <%@ include file="/WEB-INF/views/inc/asset.jsp" %>
   <link rel="stylesheet" href="/resources/css/speaklist.css" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
   <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>

   <!-- header -->
   <%@ include file="/WEB-INF/views/inc/header.jsp" %>
   <div class="mt-5 mb-5 text-center">
       <img class="w-75"  src="/resources/img/ham_speak.png">
     </div>

   <section class="container-md mt-4 mb-5">
      <div class="headline">
         <h2>
            <span class="fw-bold" style="color: #FF914D">함!</span> <span
               class="text-primary fw-bold">말해</span>볼텨 <span class="fw-bold">[구직회원]</span>
         </h2>
         
         <button type="button" class="btn btn-danger"
            style="width: 100px; height: 40px;" onclick="location.href='/speakadd.do?type=1'">글쓰기</button>
      </div>

      <div class="side-headline mb-1">
         <p style="text-align:left m-0;" class="fs-5">총 <span class="fw-bold">${count}</span>건</p>
         <div class="d-flex">
            <div style="width: 40%;" class="me-3">
               <select class="form-select w-100" id="sortList" aria-label="Default select example">
                      <option disabled selected>정렬 기준</option>
                       <option value="1">최신순</option>
                       <option value="2">오래된순</option>
                   </select>
            </div>
            <div class="input-group mb-3">
                   <input type="text" id="word" name="word" class="form-control" placeholder="검색어를 입력해주세요." aria-label="Recipient's username" aria-describedby="basic-addon2">
                   <button type="button" id="searchBtn" class="btn" style="background-color: #FF914D;" onclick="search();">검색하기</button>
              </div>
         </div>
      </div>
      
      <c:if test="${count != 0}">
         <div class="container-sm border border-1 border-dark border-opacity-25 rounded h-100">
            <c:forEach items="${list}" var="dto">
               <div class="container-fluid list p-2 border-bottom " onclick="location.href='/speakmdetail.do?&seq=${dto.sm_seq}'">
                  <div class="d-flex align-items-center mb-2">
                     <img class="profile" src="/resources/img/로고.png">
                     <div class="profile-detail">
                        <p class="name">${dto.m_name}(${dto.m_id})</p>
                        <p class="time">${dto.sm_regdate}</p>
                     </div>
                  </div>
                  <div class="d-flex flex-column">
                     <h4 class="fs-3 fw-bold title">
                        ${dto.sm_subject}</h4>
                  </div>
                  <div class="d-flex align-items-center pb-2" >
                     <i class="bi bi-chat-left-dots me-2"></i> <span
                     style="margin-right: 20px;">${dto.count}</span>
                     <i class="bi bi-eye me-2">
                     <span class="fst-normal"style="margin-right: 20px;">${dto.sm_hit}</span>
                     </i>
                  </div>
               </div>
            </c:forEach>
         </div>
      </c:if>
         
      <c:if test="${count == 0}">
         
         <hr>
         <div>
            <div class="text-center my-5 fs-2 fw-bold">검색 결과가 존재하지 않습니다.</div>
            <div class="w-100 d-flex justify-content-center" >
               <button type="button" class="btn btn-light btn-lg mb-5 text-dark" style="background-color : #ededed;" onclick="location.href='/speakmlist.do'">전체 리스트 보기</button>
            </div>
             </div>
      </c:if>
      
      <div class="d-flex justify-content-center mt-4">
            <div id="pagination-buttons">
              <button class="btn w-10" id="previous-button">&lt;&lt;</button>
            </div>
         </div>
         
   
       <!-- modal로 띄우기 -->
      <!-- 버튼을 클릭하면 모달이 표시됩니다. -->
        <button type="button" class="btn btn-primary" id="modalBtn" data-bs-toggle="modal" data-bs-target="#myModal" style="display : none;">
          모달 창 열기
        </button>
      
        <!-- 모달 창 -->
        <div class="modal" id="myModal">
          <div class="modal-dialog">
            <div class="modal-content">
              <!-- 모달 내용 -->
              <div class="modal-body">
                <p id="modalMessage"></p>
              </div>
              <!-- 닫기 버튼 -->
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
              </div>
            </div>
          </div>
        </div>   


   </section>


   <!-- footer -->
   <%@ include file="/WEB-INF/views/inc/footer.jsp" %>   

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

   function search() {
      
      if ($('#word').val() == "") {
         alert("검색어를 입력해주세요.");
      } else {
         location.href="/searchmlist.do?word="+$('#word').val();
      }
         
   };
   
   $(document).ready(function(){
      
      const sorted = "${sorted}";

      $('#sortList option').each(function() {
         if ($(this).val() == sorted) {
            $(this).prop("selected", true);
         }
      });
      
   });
   
   $('#sortList').change(function () {
      
      location.href="/speakmlist.do?sort="+$(this).val();
   }) 
   
   
   //페이징 기능 구현
   // 페이지 번호와 총 페이지 수를 설정.
   var currentPage = ${page};
   var totalPages = Math.ceil(${count}/5);
   
   // 페이지 버튼을 동적으로 생성하는 함수.
   function createPaginationButtons() {
     var paginationButtons = $("#pagination-buttons");
     paginationButtons.empty();
   
     // 이전 버튼을 생성.
     paginationButtons.append('<button class="btn w-10" id="previous-button">&lt;&lt;</button>');
   
     // 숫자 버튼을 생성.
     for (var i = 1; i <= totalPages; i++) {
        var buttonId = "numbtn" + i;  // id 값 동적 생성
        
        paginationButtons.append('<button class="btn w-10 page-button" id="' + buttonId + '">' + i + '</button>');
      }
   
     // 다음 버튼을 생성.
     paginationButtons.append('<button class="btn w-10" id="next-button">&gt;&gt;</button>');
   
   
     //각 버튼에 클릭 이벤트를 추가.
     $("#previous-button").click(previousPage);
     $("#next-button").click(nextPage);
     $(".page-button").click(changePage).click(function() {
       $(".page-button").removeClass("bg-info");
       $(this).addClass("bg-info");
     });
   }
   
   //이전 페이지로 이동하는 함수
   function previousPage() {
     if (currentPage > 1) {
       currentPage--;
       navigateToPage();
     } else {
       showModal("첫번째 페이지입니다.");
     }
   }
   
   // 다음 페이지로 이동하는 함수
   function nextPage() {
     if (currentPage < totalPages) {
       currentPage++;
       navigateToPage();
     } else {
       showModal("마지막 페이지입니다.");
     }
   }
   
   // 모달 창을 열어 메시지를 표시하는 함수
   function showModal(message) {
     $("#modalMessage").text(message);
     $("#modalBtn").click();
   }
   
   // 특정 페이지로 이동하는 함수.
   function changePage() {
     var selectedPage = $(this).text();
     currentPage = parseInt(selectedPage);
     navigateToPage();
   }
   
   // 페이지 이동 함수.
   function navigateToPage() {
     var url = "/speakmlist.do?page=" + currentPage;
     // 페이지 이동을 수행하는 코드를 추가.
     window.location.href = url;
   }
   
   // 초기화 함수를 호출하여 페이지 버튼을 생성.
   createPaginationButtons();

</script>
</body>
</html>