<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	int level = session.getAttribute("sLevel")==null ? 99 : (int) session.getAttribute("sLevel");
	pageContext.setAttribute("level", level);
%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<!-- 햄버거버튼 -->
  <!-- <a class="navbar-brand" href="http://localhost:9090/javaProject">Home</a> -->
  <a class="navbar-brand" href="http://192.168.50.69:9090/javaProject">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="${ctp}/GuestList">Guest</a>
      </li>
        <c:if test="${level > 4}">
		      <li class="nav-item">
		        <a class="nav-link" href="${ctp}/BoardList">Board</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="/PdsList">Pds</a>
		      </li>    
		      <li class="nav-item ml-2 mr-2">
		        <div class="dropdown">
					    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">Study1</button>
					    <div class="dropdown-menu">
					      <a class="dropdown-item" href="${ctp}/study/password/passForm.jsp">암호화연습</a>
					      <a class="dropdown-item" href="${ctp}/mapping/test1">디렉토리패턴</a>
					      <a class="dropdown-item" href="${ctp}/mapping/test5.do">확장자패턴</a>
					      <a class="dropdown-item" href="${ctp}/mapping/test5.re">확장자패턴2</a>
					      <a class="dropdown-item" href="${ctp}/mapping/login.lo">로그인연습</a>
					      <a class="dropdown-item" href="ajaxTest1.st">AJax연습1</a>
					      <a class="dropdown-item" href="userList.us">AJax연습2</a>
					      <a class="dropdown-item" href="login.lo">AJax연습3</a>
					      <a class="dropdown-item" href="${ctp}/uuidProcess.st">UUID연습</a>
					    </div>
					  </div>
		      </li>
		      </c:if>
		      <li class="nav-item">
		        <c:if test="${level > 4}"><a class="nav-link" href="memberLogin.mem">Login</a></c:if>
		        <c:if test="${level <= 4}"><a class="nav-link" href="memberLogin.mem">Logout</a></c:if>
		      </li>
		      <li class="nav-item">
        <c:if test="${level > 4}"><a class="nav-link" href="memberJoin.mem">Join</a></c:if>
      </li>
    </ul>
  </div>  
</nav>