<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>title</title>
	<jsp:include page="../../include/bs4.jsp"/>
	<style>
		div {margin-bottom:5px};
	</style>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>이곳은 test1.jsp입니다.</h2>
	<form method="post" action="${ctp}/j1102/test1OK">
		<div><input type="text" name="content"  value="간단한 소개입니다." class="form-control"/></div>
		<div><textarea rows="5" name="introduce" class="form-control"/>자기소개를 기록해 주세요</textarea></div>
		<div><input type="submit" value="전송하기1" class="btn btn-success form-control"/></div>
		<div><input type="button" value="전송하기2" onclick="location.href='${ctp}//j1102/test1OK2';" class="btn btn-primary form-control"/></div>
	</form>
</div>
<p><br/></p>
</body>
</html>
