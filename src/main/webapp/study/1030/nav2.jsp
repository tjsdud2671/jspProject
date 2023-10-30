<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- nav2.jsp -->
<%@ include file="../../include/bs4.jsp" %>
<%-- <%@ include file="<%=request.getContextPath()%>/include/bs4.jsp" %> (%안에는 % 사용 할 수 없음)--%>
<%-- <jsp:include page="<%=request.getContextPath()%>/include/bs4.jsp"/> --%>
<script>
	function logoutCheck(){
		let ans = confirm("로그아웃 하시겠습니까?");
		if(ans){
			location.href="${pageContext.request.contextPath}/j1030/logout?mid={mid}";
		}
	}
</script>
<div style="height:180px; text-align:center">
	<p><br/></p>>
	<a href="main.jsp?mid=${mid}" class="btn btn-outline-primary">Home</a> |
	<a href="main.jsp?mid=${mid}&flag=guest" class="btn btn-outline-primary">Guest</a> |
	<a href="main.jsp?mid=${mid}&flag=board" class="btn btn-outline-primary">Board</a> |
	<a href="main.jsp?mid=${mid}&flag=pds" class="btn btn-outline-primary">Pds</a> | 
	<a href="javascript:LogoutCheck()" class="btn btn-outline-warning">Logout</a> 
</div> 