<%@page import="entity.VideoEntity"%>
<%@page import="entity.MainEntity"%>
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
<body class="white-theme" onload="onloadtheme();">
	<jsp:include page="header.jsp"></jsp:include>
	<%
		MemberEntity login = (MemberEntity) session.getAttribute("LOGIN");
	%>
	
	<div class="mainBody">
		<div class="videos">
			<div class="videos__container">
				<%
				List<MainEntity> list = new ArrayList<MainEntity>();
				list = (List<MainEntity>) request.getAttribute("Main");

				for (int i = 0; i < list.size(); i++) {
					MainEntity entity = list.get(i);
				%>
				
				
				<div class="video">
					<div class="video__thumbnail">
						<img src="/file/<%=entity.getVIDEO_UUID()%>.png" alt="" />
					</div>
					<div class="video__details">
						<div class="author">
								<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/User_icon-cp.svg/1200px-User_icon-cp.svg.png"
								alt="" 
								href="/Video?member_id=<%=entity.getVIDEO_UUID()%>&member_name=<%=entity.getMEMBER_NAME()%>"
								/>
						</div>
						<div class="title">
						<div>
							<h3><%=entity.getVIDEO_NAME()%></h3>
						</div>
						<div>
							<a href="/Video?member_id=<%=entity.getMEMBER_ID()%>&member_name=<%=entity.getMEMBER_NAME()%>"><%=entity.getMEMBER_NAME()%></a>
						</div>
							<span>조회수 <%=entity.getVIDEO_VIEWS()%>회 • <%=entity.getVIDEO_DATE()%></span>
						</div>
					</div>
				</div>

				<%
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>

