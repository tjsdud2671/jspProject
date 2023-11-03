<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/include/memberCheck.jsp" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>update.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
  <script>
    'use strict';
    
    function fCheck() {
    	let pwd = document.getElementById("pwd").value;
    	let name = document.getElementById("name").value;
    	
    	if(pwd.trim()=="" || name.trim()=="") {
    		alert("수정할 정보를 입력하세요");
    		document.getElementById("pwd").focus();
    	}
    	else {
    		myform.submit();
    	}
    }
  </script>
  <style>
    th {
      background-color: #eee;
      text-align: center;
    }
  </style>
</head>
<body>
<p><br/></p>
<div class="container text-center">
<form name="myform" method="post" action="${ctp}/database/updateOk">
  <h2>회원 정보 수정</h2>
  <table class="table table-bordered">
    <tr>
      <th>아이디</th>
      <%-- <td><input type="text" name="mid" id="mid" value="${sMid}" class="form-control" readonly /></td> --%>
      <td class="text-left">${sMid}</td>
    </tr>
    <tr>
      <th>비밀번호</th>
      <td><input type="password" name="pwd" id="pwd" class="form-control" autofocus /></td>
    </tr>
    <tr>
      <th>성명</th>
      <td><input type="text" name="name" id="name" value="${sName}" class="form-control"/></td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="button" value="정보수정" onclick="fCheck()" class="btn btn-success" />
        <input type="reset" value="다시입력" class="btn btn-warning" />
        <input type="button" value="돌아가기" onclick="location.href='${ctp}/study/database/memberMain.jsp';" class="btn btn-success" />
      </td>
    </tr>
  </table>
  <input type="hidden" name="mid" value="${sMid}"/>
</form>
</div>
<p><br/></p>
</body>
</html>