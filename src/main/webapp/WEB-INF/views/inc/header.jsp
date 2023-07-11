<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "sec" uri="http://www.springframework.org/security/tags" %>
    
 <header class="header">
   <nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom p-4">
     <div class="container-fluid">
       <div class="d-flex" style="width: 800px;">
       	<a href="/index.do">
         <img class="img-fluid" src="/resources/img/logo-removebg-preview.png" style="width: 100px;">
        </a>
        <ul class="navbar-nav mb-2 mb-lg-0 d-flex ms-3">
               <li class="nav-item">
	             <a class="nav-link fw-bold" href="/shop/shopping_list.do?f_seq=&page=">인재 둘러보기</a>
	           </li>
	           <li class="nav-item">
	             <a class="nav-link fw-bold" href="/portfolio.do">포트폴리오</a>
	           </li>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
	           <li class="nav-item">
	             <a class="nav-link fw-bold" href="/checkprofile.do">관리자 메뉴</a>
	           </li>

           </sec:authorize>
           <sec:authorize access="hasRole('ROLE_MEMBER')">
           		<li class="nav-item">
	             <a class="nav-link fw-bold" href="/listenlist.do">들어볼텨</a>
	           </li>
           		<li class="nav-item">
	             <a class="nav-link fw-bold" href="/speakmlist.do">말해볼텨</a>
	           </li>
           </sec:authorize>
           <sec:authorize access="hasRole('ROLE_BUSINESS')">
           		<li class="nav-item">
	             <a class="nav-link fw-bold" href="/speakblist.do">말해볼텨</a>
	           </li>
           </sec:authorize>
        </ul>
       </div>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
         aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse ps-3 justify-content-end" id="navbarSupportedContent">
         <ul class="navbar-nav mb-2 mb-lg-0">
         
         <sec:authorize access="isAuthenticated()">
         
           <sec:authorize access="hasRole('ROLE_MEMBER')">
	           <li class="nav-item">
	             <a class="nav-link fw-bold" href="/jobapply.do">구직 신청</a>
	           </li>
	           
	           <li class="nav-item">
	             <a class="nav-link fw-bold" href="/user_profile.do">마이페이지</a>
	           </li>
	           
	           <li class="nav-item">
	             <a class="nav-link fw-bold" href="/question.do">고객센터</a>
	           </li>
           </sec:authorize>
           
           
           
           <sec:authorize access="hasRole('ROLE_BUSINESS')">
	           <li class="nav-item">
	             <a class="nav-link fw-bold" href="/wish_list.do">찜 목록</a>
	           </li>
	           <li class="nav-item">
	             <a class="nav-link fw-bold" href="/business_profile.do">마이페이지</a>
	           </li>
	           <li class="nav-item">
	             <a class="nav-link fw-bold" href="/question.do">고객센터</a>
	           </li>
           </sec:authorize>
           
           
           <li class="nav-item">
             <a class="nav-link fw-bold" href="#" onclick="btnlogout.click();">로그아웃</a>
	           	<form method="POST" action="/logout.do" style="display:none">
					<button class="btn" type="submit" id="btnlogout" style="display:none">로그아웃</button>
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
				</form>
           </li>
           <script>
           let btnlogout = document.getElementById('btnlogout');
           
           btnlogout.onclick = function()
           {
           		if (!confirm("로그아웃 하시겠습니까?")) {
           			event.preventDefault();
           			return false;
           		}
           	};	
           </script>
           </sec:authorize>
           <sec:authorize access="isAnonymous()">
           <li class="nav-item">
             <a class="nav-link fw-bold" href="/login.do">로그인</a>
           </li>
           <li class="nav-item">
             <a class="nav-link fw-bold" href="/signup.do">회원가입</a>
           </li>
           </sec:authorize>
         </ul>
       </div>
     </div>
   </nav>
 </header>