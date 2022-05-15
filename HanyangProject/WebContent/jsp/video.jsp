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
	<jsp:include page="header.jsp"></jsp:include>
	<%
		MemberEntity login = (MemberEntity) session.getAttribute("LOGIN");
	%>

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

