<%@page import="entity.MemberEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 임시 로그인 성공 페이지 -->

<%
	try{
		
		MemberEntity entity = (MemberEntity)session.getAttribute("LOGIN");
		
		if(entity != null){ %>
		<%= entity.getMEMBER_NAME() %>님 로그인 성공
		<input type="button" value="홈으로" onclick="location.href='/'">
		<%
		} else {
		%>
		<script>
			alert('로그인후이용가능합니다.');
			location.herf="/";
		</script>	
		<% } %>
		<% } catch(Exception e) { e.printStackTrace();
		%>
		<script>
			alert('로그인후이용가능합니다.');
			location.herf="/";
		</script>	
		
		<%}
%>

</body>
</html>