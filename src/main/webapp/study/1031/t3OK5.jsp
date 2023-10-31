<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="study.j1031.T3VO"/>
<!-- 
	서블릿에서는 getter()와 setter()을 이용해서 값을 불러오거나 저장함.
	jsp에서는 getProperty와 setProperty을 이용해서 값을 불러오거나 저장함.
 -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>t3OK5.jsp</title>


	<jsp:setProperty property="*" name="vo"/>  
	<jsp:include page="/include/bs4.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>처리된 자료를 view에 출력시켜보자</h2>
	<table class="table table-border">
		<tr>
			<th>성명</th>
			<td>${param.name} / ${vo.name}</td>
		</tr>
		<tr>
			<th>나이</th>
			<td>/${vo.age}</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>/${vo.gender}</td>
			<td></td>
		</tr>
		<tr>
			<th>취미</th>
			<td>/${vo.hobby}</td>
			<td></td>
		</tr>
		<tr>
			<th>직업</th>
			<td>/${vo.job}</td>
			<td></td>
		</tr>
		<tr>
			<th>주소</th>
			<td>/${vo.address}</td>
			<td></td>
		</tr>
	</table>
	<p><a href="" class="btn btn-success">돌아가기</a></p>	
</div>
<p><br/></p>
</body>
</html>
