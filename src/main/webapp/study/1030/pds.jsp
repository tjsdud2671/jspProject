<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>pds.jsp</title>
	<%@ include file="../../include/bs4.jsp" %>
	
</head>
<body>
<!-- 헤더영역(로고/메뉴/Top Image 등등 -->
<div id="header" class="text-center" style="background-color:green">
	<%@ include file = "nav.jsp" %>
</div>
<p><br/></p>
<div class="container" style="text-align:center">
	<h2>이곳은 자료실(Pds) 입니다.</h2>
	<hr/>
	<p><img src="../../images/4.jpg" width="600px" /></p>
	<hr/>
</div>
<p><br/></p>
<!-- 풋터영역(Copyright/Email/Address/사업자등록증/Image 등등 -->
<div id="header" class="text-center">
	<%@ include file = "footer.jsp" %>
</div>
</body>
</html>
