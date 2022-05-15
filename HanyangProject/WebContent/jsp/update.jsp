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
	<body class="white-theme" onload="onloadtheme()">
	
	<jsp:include page="header.jsp"></jsp:include>
	<%
		MemberEntity login = (MemberEntity) session.getAttribute("LOGIN");
	%>
	
		<div class="mainBody">
			<div class="outBox">
				<form name="form" method="post" action="/Update">
					<div class="inputBox">
						<h2>회원 정보 수정</h2>
	
					</div>
					
					<div class="inputBox">
						<input type="text" id="sampleId" name="user_id" placeholder="아이디"
							value="<%=login.getMEMBER_ID()%>" readonly="readonly">
					</div>
					
					<div class="inputBox">
						<input type="text" id="sampleId2" name="user_pw"
							value="<%=login.getMEMBER_PW()%>" placeholder="비밀번호"> <label>비밀번호</label>
					</div>
					
					<div class="inputBox">
						<input type="text" id="sampleId3" name="user_name"
							value="<%=login.getMEMBER_NAME()%>" placeholder="이름"> <label>이름</label>
					</div>
	
					<div class="btn-group">
						<input type="submit" class="login-btn" value="수정">
					</div>
				</form>
			</div>
		</div>
	
	
	</body>
	</html>