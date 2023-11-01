<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ex5_jstl.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
  <script>
    'use strict';
    
    function nameCheck() {
    	let name = myform.name.value;
    	if(name.trim() == "") {
    		alert("검색할 성명을 입력하세요");
    		myform.name.focus();
    	}
    	else {
    		//myform.submit();
    		location.href = "${ctp}/j1101/ex5Ok?name="+name;
    	}
    }
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원 자료 출력하기</h2>
  <form name="myform" method="post" action="${ctp}/j1101/jstl5Ok">
  	<input type="submit" value="회원전체리스트" class="btn btn-success" />
  	<hr/>
  	검색할 회원명을 입력하세요?
  	<input type="text" name="name" class="form-control" />
  	<input type="button" value="개별회원검색" onclick="nameCheck()" class="btn btn-success" />
  </form>
</div>
<p><br/></p>
</body>
</html>