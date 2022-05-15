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

	<jsp:include page="header.jsp"></jsp:include>
	<%
		MemberEntity login = (MemberEntity) session.getAttribute("LOGIN");
	%>


	<div class="mainBody">
		<div class="search">
			<div class="search__container">
				<!-- 비디오 -->
				<%
				List<SearchEntity> list = new ArrayList<SearchEntity>();
				list = (List<SearchEntity>) request.getAttribute("searchlist");
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
				%>



			</div>
		</div>
	</div>

</body>
</html>