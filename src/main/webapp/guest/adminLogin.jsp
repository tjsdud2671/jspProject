<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>adminLogin.jsp</title>
	<jsp:include page="/include/bs4.jsp"/>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<p><br/></p>
<div class="container">
		<form name="myform" method="post" action="${ctp}/guest/adminLoginOk">
		<table class="table table-bordered">
			<tr>
				<th colspan="2" class="text-center"><h2>관리자 로그인</h2></th>
			</tr>
			<tr>
				<th>관리자 아이디</th>
				<td><input type="text" name="mid" id="mid" value="admin" class="form-control"autofocus required/></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd" id="pwd" value="1234" class="form-control" required/></td>
			</tr>
			<tr>
				<th colspan="2" class="text-center">
					<input type="submit" value="로그인" class="btn btn-success mr-3"/>
					<input type="reset" value="다시입력" class="btn btn-warning "/>
					<input type="button" value="돌아가기" onclick="location.href='${ctp}/GuestList';" class="btn btn-warning "/>
				</th>
			</tr>
		</table>
	
	</form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>
