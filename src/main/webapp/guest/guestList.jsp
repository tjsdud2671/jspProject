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
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<p><br/></p>
<div class="container">
	<h2>방명록 리스트</h2>
	<c:forEach var="vo" items="${vos}" varStatus="st">
		<table class="table table-borderless">
			<tr>
				<td>번호: ${vo.idx}</td>
				<td class="text-right">방문IP : ${vo.hostIP}</td>
			</tr>
		</table>
		<table class="table table-bordered">
			<tr>
				<th>성명</th>
				<td>${vo.name}</td>
				<th>방문일자</th>
				<td>${vo.visitDate}</td>
			</tr>
			<tr>
				<th>메일주소</th>
				<td colspan="3">${vo.email}</td>
			</tr>
			<tr>
				<th>홈페이지</th>
				<td colspan="3">${vo.homePage}</td>
			</tr>
			<tr>
				<th>방문소감</th>
				<td colspan="3">${vo.content}</td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
		</table>
	</c:forEach>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>
