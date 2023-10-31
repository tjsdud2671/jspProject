<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name ="viewport" content="width=device-width, initial-scale=1">
  <title>t3.jsp</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://kit.fontawesome.com/fa3667321f.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <style>
  	.cont{
  		margin-bottom:10px;
  	}
  </style>
  
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>회원정보</h2>
	<form name="myform" method="post" action="t3OK5.jsp">
		<div class="cont">성명
			<input type="text" name="name" value="홍길동" class="form-control mb-3" autofocus/>
		</div>
		<div class="cont">나이
			<input type="number" name="age" value="20" id="age" class="form-control mb-3"/>
		</div>
		<div class="cont">성별
			<input type="radio" name="gender" value="남자"/>남자
			<input type="radio" name="gender" value="여자" checked/>여자
		</div>
		<div class="cont">취미
			<input type="checkbox" name="hobby" value="등산"/>등산 
			<input type="checkbox" name="hobby" value="낚시"/>낚시
			<input type="checkbox" name="hobby" value="수영"/>수영
			<input type="checkbox" name="hobby" value="바둑"/>바둑
			<input type="checkbox" name="hobby" value="싸이클"/>싸이클
			<input type="checkbox" name="hobby" value="배드민턴" checked/>배드민턴
		</div>
		<div class="cont">직업
			<select name="job" class="form-control mb-3">
				<option selected>학생</option>
				<option>회사원</option>
				<option>공무원</option>
				<option>프로그래머</option>
				<option>디자이너</option>
				<option>기타</option>
			</select>
		</div>
		<div class="cont">
			주소 : <input type="text" name="address" value="청주" class="form-control"/>
		</div>
		<div class="cont">
			<input type="submit" value="전송"  class="btn btn-primary form-control mt-3"/>
		</div>
	</form>
</div>
<p><br/></p>
</body>
</html>
