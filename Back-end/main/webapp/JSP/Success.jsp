<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="entity.MemberEntity" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hanyang Project</title>
</head>
<body>
<%
try {
	MemberEntity entity = (MemberEntity)session.getAttribute("LOGIN");
	
	if(entity != null) {%>
	<%= entity.getMEMBER_ID() %>님 로그인 성공
	<input type="button" value = "콘텐츠 목록" onclick="location.href='/ContentList'">
	<input type="button" value = "로그아웃" onclick="location.href='/LOGOUT'">
	<%
	} else { 
	%>
	<script>
		alert('로그인후이용가능합니다.');
		location.href="/";
	</script>
	<% } %>
	<%
} catch(Exception e){ e.printStackTrace();
%>	
	<script>
		alert('로그인후이용가능합니다.');
		location.href="/";
	</script>
	<%}%>
</body>
</html>