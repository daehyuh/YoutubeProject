<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/js/script.js"></script>
<link rel="stylesheet" href="/css/styles.css" />
<title>대현이 뺨때리기</title>
</head>
<body class="">
	<div class="header">

		<div id="user" class="userhidden">

			<a href="/jsp/login.jsp">
				<div class="user-content">로그인</div>
			</a> <a href="/jsp/join.jsp">
				<div class="user-content">회원가입</div>
			</a> <a href="/index.jsp">
				<div class="user-content">마이페이지</div>
			</a>


		</div>


		<div class="header__left">
			<a href="/index.jsp"> <img src="/image/youtube.jpg" alt="" />
			</a>
		</div>

		<div class="header__search">
			<form action="">
				<input type="text" placeholder="검색" />
				<button onclick="herf = '/jsp/search.jsp'">
					<i class="material-icons">search</i>
				</button>
			</form>
			<a href="/jsp/search.jsp">서치로 이동</a>
		</div>

		<div class="header__icons">
			<i class="material-icons">videocam</i> <i class="material-icons"
				onclick="test()">apps</i> <i class="material-icons">notifications</i>
			<i class="material-icons display-this" onclick="test2()">account_circle</i>
		</div>
	</div>

	<div class="mainBody">
		<div class="videos">
			<div class="videos__container">
			<%
				for(int i = 0; i < 22; i++){
					
			%>
				<div class="video">
					<div class="video__thumbnail">
						<img src="/image/Banner1.jpg" alt="" />
					</div>
					<div class="video__details">
						<div class="author">
							<img src="/image/Banner1.jpg" alt="" />
						</div>
						<div class="title">
							<h3>대현 홍보영상입니다.</h3>
							<a href="https://daehyuh318.github.io/chanal/">대현</a> <span>조회수
								{a}회 • 1시간 전</span>
						</div>
					</div>
				</div>

			 <% }%>
			</div>
		</div>
	</div>
</body>
</html>