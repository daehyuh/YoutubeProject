                                 <%@page import="entity.SearchEntity"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<body class="">
	<div class="header">

		<div id="user" class="userhidden">

			<a href="login.jsp">
				<div class="user-content">로그인</div>
			</a> <a href="join.jsp">
				<div class="user-content">회원가입</div>
			</a> <a href="main.jsp">
				<div class="user-content">마이페이지</div>
			</a>

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

<%
	List<SearchEntity> list = new ArrayList<SearchEntity>();
	list = (List<SearchEntity>)request.getAttribute("searchlist");
	for (int i = 0; i < list.size(); i++){
		SearchEntity entity = list.get(i);	
	
%>


	<div class="mainBody">
		<div class="search">
			<div class="search__container">
				<!-- 비디오 -->
				<div class="serch__video">
					<img class="search__video__image" src="/image/Banner1.jpg" alt="" />
					<div class="">
						<a class="channal__info__title" href="d"> <span
							class="search__video__title"> <%=entity.getVIDEO_NAME() %> </span>
						</a>
						<div>
							<span><%=entity.getVIDEO_VIEWS() %> • 1시간 전</span>
						</div>
						<div class="channal__info">
							<img alt="" src="/image/Banner1.jpg"> <a
								class="channal__info__text"
								href="https://daehyuh318.github.io/chanal/"> <span><%=entity.getMEMBER_NAME()%></span>
							</a>
						</div>

							<div class="search__video__info">
								<%=entity.getVIDEO_INTRO() %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%} %>
</body>
</html>