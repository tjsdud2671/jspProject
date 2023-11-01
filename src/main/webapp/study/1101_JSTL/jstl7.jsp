<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>title</title>
	<jsp:include page="../../include/bs4.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>Format 라이브러리(형식을 지정)</h2>
	<pre>
		사용용도 : 형식문자열을 지정할 때 사용함(쉼표, 화폐단위, 백분율)
		사용법 : < fmt : 명령어 value="$ {값/변수}" pattern="표현패턴" type="화폐단위"/>
	</pre>
	<c:set var="won1" value="7654321"/>
	<c:set var="won2" value="7654.321"/>
	<div>
		won1 : ${won1}<br/>
		won2 : ${won2}<br/>
		1-1.천단위 쉼표<br/>
		<fmt:formatNumber value="1234567"/><br/> 
		<fmt:formatNumber value="${won1}"/><br/> 
		<fmt:formatNumber value="${won2}"/><br/> 
		<fmt:formatNumber value="${won2}" pattern="0,000"/><br/> 
		<fmt:formatNumber value="${1234.567}" pattern="0,000.0"/><br/> 
		<fmt:formatNumber value="${1234.567}" pattern="0,000,000.0"/><br/> 
		<fmt:formatNumber value="${1234.567}" pattern="#,##0.0"/><br/>
		<hr/>
		2.화폐단위<br/>
		원화 : <fmt:formatNumber value="${won1}"/> 
	</div>
</div>
<p><br/></p>
</body>
</html>
