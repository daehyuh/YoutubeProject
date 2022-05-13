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
	<!-- 헤더 바 -->
	<div class="header">

		<!-- user 바 -->
		<div id="user" class="userhidden">

			<%
			MemberEntity login = (MemberEntity) session.getAttribute("LOGIN");
			%>


			<%
			if (login == null) {
			%>
			<a href="/jsp/login.jsp">
				<div class="user-content">로그인</div>
			</a> <a href="/jsp/join.jsp">
				<div class="user-content">회원가입</div>
			</a>
			<%
			} else {
			%>
			<a href="/jsp/update.jsp">
				<div class="user-content">회원수정</div>
			</a> <a onclick="location.href='/LOGOUT'";>
				<div class="user-content">로그아웃</div>
			</a>
			<%
			}
			%>
			<div id="themeinfo" class="user-content" onclick="test()">디자인 :
				밝은테마</div>

		</div>
		<!-- user 바 -->


		<div class="header__left">
			<a href="/jsp/main.jsp"> <img
				src="https://www.gstatic.com/youtube/img/branding/favicon/favicon_144x144.png"
				alt="" />
			</a>
		</div>

		<div class="header__search">
			<form action="/Search" method="Get">
				<input type="text" name="title" id="title" placeholder="검색" />
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
	<!-- 헤더 바 -->


	<div class="mainBody">
		<div class="outBox">
			<form name="form" method="post" action="/LOGIN">
				<div class="inputBox">
					<h2>회원 정보 수정</h2>

				</div>
				
				<div class="inputBox">
					<input type="text" id="sampleId" name="user_id" placeholder="아이디"
						value="<%=login.getMEMBER_ID()%>" readonly="readonly">
				</div>

				<div class="inputBox">
					<input type="text" id="sampleId2" name="user_pwd"
						placeholder="비밀번호"> <label>비밀번호</label>
				</div>

				<div class="inputBox">
					<input type="text" id="sampleId3" name="user_pwd"
						placeholder="비밀번호"> <label>이름</label>
				</div>

				<div class="btn-group">
					<input type="submit" class="login-btn" value="수정">
				</div>
			</form>
		</div>
	</div>


</body>
</html>