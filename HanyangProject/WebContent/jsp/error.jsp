<%@page import="entity.VideoEntity"%>
<%@page import="entity.MainEntity"%>
<%@page import="entity.SearchEntity"%>
<%@page import="entity.MemberEntity"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/js/script.js"></script>
<link rel="stylesheet" href="/css/styles.css" />
<title>대현이 뺨때리기</title>
</head>
<body class="white-theme" onload="onloadtheme();">

	<jsp:include page="header.jsp"></jsp:include>
	<%
		MemberEntity login = (MemberEntity) session.getAttribute("LOGIN");
	%>

	
	<div id="error-page">
	<div id="error-page-content">
	<img id="error-page-hh-illustration" src="https://www.gstatic.com/youtube/src/web/htdocs/img/monkey.png" alt="">
	<p>죄송합니다. 이 페이지를 사용할 수 없습니다.</p><p>다른 검색어로 검색해 보세요.</p>
	<br>
	<a href = "/index.jsp">
	메인페이지로 돌아가기
	</a>

	</div>
	</div>
	
	</body>
</html>