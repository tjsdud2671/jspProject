<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>t1_requestGet</title>
	<jsp:include page="../../include/bs4.jsp"/>
</head>
<body>
<p><br/></p>
<div class="container">
	<form name="myform" method="post" action="t1_requestGetOK.jsp">
		<h2>전송된 값과 환경을 서버에서 확인해오기</h2>
		<div class="border">
			<div class="mb-3">
				성명 : 
				<input type="text" name="name" value="홍길동" class="form-control" autofocus required/>
			</div> 
			<div>
				취미 : 
				<input type="checkbox" name="hobby" value="낚시" checked />낚시
				<input type="checkbox" name="hobby" value="영화"  checked/>영화
				<input type="checkbox" name="hobby" value="음악" />음악
				<input type="checkbox" name="hobby" value="전시회" />전시회
				<input type="checkbox" name="hobby" value="운동" />운동
			</div> 
			<div class="text-center mb-3"> 
				<input type="submit" value="전송" class="btn btn-success"/>
				<input type="reset" value="취소" class="btn btn-danger"/>
			</div> 
		</div>
		<input type="hidden" name="hostIp" value="<%=request.getRemoteAddr()%>"/>
	</form>
</div>
<p><br/></p>
</body>
</html>
