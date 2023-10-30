<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String flag = request.getParameter("flag");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>test10Res.jsp</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://kit.fontawesome.com/fa3667321f.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	  <script>
  	'use strict';
  	
  	if('<%=flag%>'!=''&&'<%=flag%>'!='null'){
  		alert('<%=flag%>'+ "님 회원가입이 성공적으로 되었습니다.\n\n회원 메일창으로 이동합니다.");
  	}
  	else{
  		location.href='test10.jsp?flag=no';
  	}
  	
  	function logoutCheck() {
  		let ans = confirm("로그아웃 하시겠습니까?");
  		if(ans) {
  			alert('<%=flag%>'+"님 로그아웃 되셨습니다.");
  			location.href='test10.jsp';
  		}
  	}
  	</script>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>회원 메인창</h2>
	<p>님 로그인 중이십니다.</p>
	
	
	<p>
		<input type="button" value="로그아웃(button)" onclick="logoutCheck()" class="btn btn-info mr-3"/>
		<a href="#"class="btn btn-warning">로그아웃</a>
	</p>
</div>
<p><br/></p>
</body>
</html>
