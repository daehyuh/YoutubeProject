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
	<div class="header">

		<div id="user" class="userhidden">
			
			<% 
			MemberEntity entity = (MemberEntity)session.getAttribute("LOGIN");
			%>
			
			
			
			<%
			if (entity == null) {
			%>
			<a href="login.jsp">
				<div class="user-content">로그인</div>
			</a> <a href="join.jsp">
				<div class="user-content">회원가입</div>
			</a>
			<%
			} else {
			%>
			<a href="update.jsp">
				<div class="user-content">회원수정</div>
			</a> <a onclick="location.href='/LOGOUT'";>
				<div class="user-content">로그아웃</div>
			</a>
			<%
			}
			%>
			<div id = "themeinfo" class="user-content" onclick="test()">디자인 : 밝은테마</div>
			
		</div>
		

		
		<div class="header__left">
			<a href="main.jsp"> <img src="/image/youtube.jpg" alt="" />
			</a>
		</div>

		<div class="header__search">
			<form action="/Search" method="post">
				<input type="text" name="title" id = "title" placeholder="검색" />
				<button onclick="SearchCheck();">
					<i class="material-icons">search</i>
				</button>
			</form>
		</div>

		<div class="header__icons">
			<i class="material-icons">videocam</i> <i class="material-icons"
				onclick="test()">apps</i> <i class="material-icons">notifications</i>
			<i class="material-icons display-this" onclick="test2()">account_circle</i>
		</div>
	</div>
	<div class="mainBody">
		<div class="outBox">
			<form id="form">
				<div class="inputBox">
					<input type="text" id="user_id" name="user_id" placeholder="아이디">
					<label for="">아이디</label>
				</div>

				<div class="inputBox">
					<input type="password" id="user_pwd" name="user_pwd"
						placeholder="비밀번호"> <label for="">패스워드</label>
				</div>

				<div class="inputBox">
					<input type="password" id="user_pwd_check" name="user_pwd_check"
						placeholder="비밀번호 확인"> <label for="">패스워드 확인</label>
				</div>

				<div class="inputBox">
					<input type="text" id="user_name" name="user_name"
						placeholder="닉네임"> <label for="">닉네임</label>
				</div>

				<div class="btn-group">
					<input type="button" onclick="check()" class="login-btn"
						value="회원가입">
				</div>
			</form>
		</div>
	</div>
</body>
</html>