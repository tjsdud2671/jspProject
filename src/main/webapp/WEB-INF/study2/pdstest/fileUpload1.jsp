<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>fileUpload1.jsp</title>
	<jsp:include page="/include/bs4.jsp"/>
	<script>
		'use strict';
		function fCheck(){
			let fName = document.getElementById("file").value;
			let ext = fName.substring(fName.lastIndexOf(".")+1).toLowerCase(); //업로드 한 파일의 확장자를 가져간다...
			let maxSize = 1024 * 1024 * 10; //1KB=1024Byte=10^3Byte=2^10Byte, 1MByte=2^20Byte=10^6Byte, 
		}
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<p><br/></p>
<div class="container">
	<h2>파일 업로드 연습 (싱글파일처리)</h2>
	<p>COS 라이브러리를 이용한 파일 업로드</p>
	<div>(http://www,servlets.com/cos/)</div>
	<hr/>
	<form name="myform" method="post" action="fileUpload1Ok.st" enctype="multipart/form-data"> <!--파일 업로드 할 거면 enctype 무조건 적어줘야함  -->
		파일명 :
		<input type="file" name="fName" id="file" class="form-control-file mb-2 border"/>
		<input type="button" value="전송" onclick="fCheck()" class="btn btn-success form-control"/>
	</form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>
