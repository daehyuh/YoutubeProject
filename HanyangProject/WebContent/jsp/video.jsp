<%@page import="servlet.LOGIN"%>
<%@page import="entity.VideoEntity"%>
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
<body class="white-theme">
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
			<a href="/jsp/video.jsp?member_id=<%=login.getMEMBER_ID()%>">
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

    <div class="manager_page">

      <div class="manager_info_box">
        <div class="manager_info_profile">

          <div class="manager_info_img">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/User_icon-cp.svg/1200px-User_icon-cp.svg.png" width="110" height="90">
          </div>

          <div class="manager_info_user">
              <div class="user_info">

                <div class="user_titleSubscribe">
                  <span style="font-size: 24px;"><%=request.getParameter("member_name")%></span><br>
                  <span>구독자 3.18억명</span>
                </div>
                
                <div class="user_subscribeButton">
                  <input type="button" value="채널" onclick="location.replace('');">
                  <input type="button" value="업로드" onclick="location.href='/jsp/upload.jsp';">
                </div>

              </div>
          </div>
        </div>
      </div>
      
      <div class="mainBody">
        <div class="videos">
			<div class="videos__container">
				<%
				List<VideoEntity> list = new ArrayList<VideoEntity>();
				list = (List<VideoEntity>) request.getAttribute("Video");
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						VideoEntity entity = list.get(i);
				%>
				<div class="video" onclick="loaction.href ='';">
					<div class="video__thumbnail">
						<img src="/file/<%=entity.getVIDEO_UUID()%>.png" alt="" />
					</div>
					<div class="video__details">
						<div class="author">
							<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/User_icon-cp.svg/1200px-User_icon-cp.svg.png" alt="" />
						</div>
						<div class="title">
							<h3><%=entity.getVIDEO_NAME()%></h3>
							<a href="/Video?member_id?=<%=entity.getVIDEO_OWNER()%>"><%=entity.getMEMBER_NAME()%></a>
							<span>조회수 <%=entity.getVIDEO_VIEWS()%>회 • <%=entity.getVIDEO_DATE()%>
							</span>
						</div>
					</div>
				</div>
				
				
				<%
				}
				}
				%>
			</div>
        </div>
      </div>
    </div>

</body>
</html>

