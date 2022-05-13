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

		<div id="user" class="userhidden">
		
			<% 
			MemberEntity login = (MemberEntity)session.getAttribute("LOGIN");
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
			<a href ="/Video?member_id=<%=login.getMEMBER_ID()%>&member_name=<%=login.getMEMBER_NAME()%>">
				<div class="user-content">마이페이지</div>
			</a> 
			<a href="/jsp/update.jsp">
				<div class="user-content">회원수정</div>
			</a> 
			<a onclick="location.href='/LOGOUT'";>
				<div class="user-content">로그아웃</div>
			</a>
			<%
			}
			%>
			<div id="themeinfo" class="user-content" onclick="test()">디자인 :
				밝은테마</div>

		</div>



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
			<i class="material-icons">videocam</i> 
			<i class="material-icons" onclick="test()">apps</i>
			<i class="material-icons">notifications</i>
			<i class="material-icons display-this" onclick="test2()">account_circle</i>
		</div>
	</div>
<!-- 헤더 바 -->
	<div class="mainBody">
		<div class="search">
			<div class="search__container">
				<!-- 비디오 -->
				<%
				List<SearchEntity> list = new ArrayList<SearchEntity>();
				list = (List<SearchEntity>) request.getAttribute("searchlist");
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						SearchEntity entity = list.get(i);
				%>
				
				<div class="serch__video" onclick="location.href = '/Video2?uuid=<%=entity.getVIDEO_UUID()%>'">
					<img class="search__video__image" src="/file/<%=entity.getVIDEO_UUID()%>.png" alt="" />
					<div class="">
						<a class="channal__info__title">
						<span class="search__video__title"> <%=entity.getVIDEO_NAME()%> </span>
						</a>
						<div>
							<span>조회수 <%=entity.getVIDEO_VIEWS()%>회 • <%=entity.getVIDEO_DATE()%></span>
						</div>
						<a href="/Video?member_id=<%=entity.getMEMBER_ID()%>&member_name=<%=entity.getMEMBER_NAME()%>"></a>
						<div class="channal__info" >
							<img alt="" src="/file/<%=entity.getVIDEO_UUID()%>.png"> 
							<a class="channal__info__text"
								href="/Video?member_id=<%=entity.getMEMBER_ID()%>&member_name=<%=entity.getMEMBER_NAME()%>"> <span><%=entity.getMEMBER_NAME()%></span>
							</a>
						</div>

						<div class="search__video__info"><%=entity.getVIDEO_INTRO()%></div>
					</div>
				</div>
				
				<%
				}
				}
				%>



			</div>
		</div>
	</div>

</body>
</html>