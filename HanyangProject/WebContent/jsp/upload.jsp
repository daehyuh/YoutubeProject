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
<% 
if (session.getAttribute("LOGIN") == null) {
%>
<script type="text/javascript">
alert("로그인후 이용 가능합니다");
location.href="jsp/main.jsp";
</script>
}
%>
	<div class="header">



		<div id="user" class="userhidden">

			<%
			if (session.getAttribute("LOGIN") == null) {
			%>
			<a href="login.jsp">
				<div class="user-content">로그인</div>
			</a> <a href="join.jsp">
				<div class="user-content">회원가입</div>
			</a>
			<%
			}
			else{
			%>
			<a href="main.jsp">
				<div class="user-content">마이페이지</div>
			</a>
			<a onclick="location.href='/LOGOUT'";>
				<div class="user-content">로그아웃</div>
			</a>
			<%}%>
		</div>

		<div class="header__left">
			<a href="main.jsp"> <img src="/image/youtube.jpg" alt="" />
			</a>
		</div>

		<div class="header__search">
			<form action="">
				<input type="text" placeholder="검색" />
        				<button onclick="location.href='search.jsp?';">
					<i class="material-icons">search</i>
				</button>
			</form>
			<a href="search.jsp">서치로 이동</a>
		</div>

		<div class="header__icons">
			<i class="material-icons">videocam</i> <i class="material-icons"
				onclick="test()">apps</i> <i class="material-icons">notifications</i>
			<i class="material-icons display-this" onclick="test2()">account_circle</i>
		</div>
	</div>

	<div class="mainBody">
		<div class="upload">
			<h1>영상 업로드</h1>


			<form action="Video">
				<table class="upload-table" border="1px soild">
					<tr>
						<td width="200px">영상 파일</td>
						<td><input type="file" name="VIDEO_UUID" id="file" size="50"></td>
					</tr>

					<tr>
						<td>영상 이름</td>
						<td><input type="text" name="VIDEO_NAME" id="VIDEO_NAME"
							size="100"></td>
					</tr>

					<tr>
						<td>영상 소개</td>
						<td><textarea name="VIDEO_INTRO" id="VIDEO_INTRO" cols="120"
								rows="30"></textarea></td>
					</tr>
					<input type="hidden" name="VIDEO_OWNER" id="" value="">
					<tr>
						<td colspan="2" align="center"><input type="submit">
							<input type="reset"></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
</body>
</html>