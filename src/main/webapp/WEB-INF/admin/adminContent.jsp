<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>adminContent.jsp</title>
	<jsp:include page="/include/bs4.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
	<h3>관리자 메인화면</h3>	
	<hr/>
	<p>방명록 새 글 : </p>
	<p>게시글 새 글 : </p>
	<p>신규 둥록 회원 새 글 : </p>
</div>
<p><br/></p>
</body>
</html>
