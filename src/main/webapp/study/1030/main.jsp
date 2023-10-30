<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String flag = request.getParameter("flag")==null?"":request.getParameter("flag");
	String mSw = request.getParameter("mSw")==null?"":request.getParameter("mSw"); 
	String mid = request.getParameter("mid")==null?"":request.getParameter("mid"); 
	pageContext.setAttribute("mSw", mSw);
	pageContext.setAttribute("mid", mid);

%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>main.jsp</title>
  <jsp:include page="../../include/bs4.jsp"/> 
  <script>
  	'use strict';
  	
  	if('${mSw}'=='No') {
  		alert("회원정보를 확인해 보시고 다시 로그인 하세요.")
  		location.href = "login.jsp";
  	}
  	else if('${mSw}'=='Ok'){
  	alert("${mid}회원님 방문을 환영합니다.")
  		
  	}
  	
  </script>
</head>
<body>
	<div id="header" class="text-center" style="background-color:green">
		<%@ include file = "nav2.jsp" %>
		<p class="text-right">${mid}님 로그인 중입니다.</p>
	</div>
	<p><br/></p>
	<div class="container" style="text-align:center">
<%  if(flag.equals("guest")) { %>
		<%@ include file="guest2.jsp" %>
<% }else if(flag.equals("board")){ %>
		<%@ include file="board2.jsp" %>
<% }else if(flag.equals("pds")){ %>
		<%@ include file="pds2.jsp" %>
<% }else{ %>
		<h2>이곳은 메인화면(Home) 입니다.</h2>
		<hr/>
		<p><img src="../../images/1.jpg" width="600px"/></p>
		<hr/>
<%   }   %>
	</div>
	<p><br/></p>
	<!-- 풋터영역(Copyright/Email/Address/사업자등록증/Image 등등 -->
	<div id="header" class="text-center">
		<%@ include file = "footer.jsp" %>
	<p><br/></p>
	<div class="container">
	
</div>
</body>
</html>
