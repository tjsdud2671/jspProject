<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>adminContent.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h3>관리자 메인화면</h3>
  <hr/>
  <p>방명록 새글 : ???</p>
  <p>게시글 새글 : ???</p>
  <p>신규등록회원 : <a href="adminMemberList.ad?level=1">${mCount}</a>건</p>
  <p>탈퇴신청회원 : <a href="adminMemberList.ad?level=99">${m99Count}</a>건</p>
</div>
<p><br/></p>
</body>
</html>