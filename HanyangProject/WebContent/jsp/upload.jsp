<%@page import="entity.SearchEntity"%>
<%@page import="entity.MemberEntity"%>
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
<body class="white-theme">
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
			<div id="themeinfo" class="user-content" onclick="test()">디자인 :
				밝은테마</div>

		</div>
		<!-- user 바 -->


		<div class="header__left">
			<a href="main.jsp"> <img
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
		<div class="upload">
			<div class="title-x">
				<svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"
					focusable="false" class="style-scope tp-yt-iron-icon"
					style="width: 30px; height: 30px;">
					<g class="style-scope tp-yt-iron-icon">
					<path
						d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"
						class="style-scope tp-yt-iron-icon"></path></g></svg>
			</div>


			<div class="upload">
				<div class="uploadTop">
					<div class="title-title">
						<h1>동영상 업로드</h1>
					</div>
				</div>

				<div class="uploadMain">
					<form method="post" enctype="multipart/form-data"
						action="/FileUpload">

						<input type="file" name="file" id="file" / accept=".mp4"
							onchange="fileCheck()">

						<div class="file_name">
							<div>제목</div>
							<textarea rows="" cols=""></textarea>
						</div>

						<div class="file_name">
							<div>내용</div>
							<textarea rows="" cols=""></textarea>
						</div>

						<input type="hidden" name="video_owner" value="1212"> <input
							class="uploadSubmit" type="submit" value="업로드">
					</form>
					
					<div class="uploadInfo">

						<div id="filePath">
							파일 경로<br>
						</div>

						<div id="fileName">
							파일 이름<br>
						</div>

						<div id="fileSize">
							파일 크기<br>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>

</html>