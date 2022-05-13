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

<%
				List<VideoEntity> list = new ArrayList<VideoEntity>();
				list = (List<VideoEntity>) request.getAttribute("Video2");
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						VideoEntity entity = list.get(i);
%>

  <div style="display: flex;">
    <div class="primary_video">
      <div class="video_stream">
        <video controls width="100%" height="100%">
          <source src="/test.mp4" type="video/mp4">
        </video>
      </div>
      <div class="primary_video_info">
        <div class="primary_video_info_title">
          <%=entity.getVIDEO_NAME()%>
        </div>
        <div class="primary_video_info_info">
          <div class="left_info">조회수 <%=entity.getVIDEO_VIEWS()%>회 . <%=entity.getVIDEO_DATE()%></div>
          <div class="right_info"></div>

        </div>

      </div>

      <div class="secondary_video_info">

        <div class="secondary_video_info_title">

          <div class="secondary_video_info_img">
            <img src="image\Banner1.jpg" width="70px" height="40px">
          </div>

          <div class="secondary_video_info_owner">
            채널이름
          </div>

          <button class="secondary_video_info_channel" onclick="location.href='channel.html'">채널</button>

        </div>

        <div class="secondary_video_info_intro">

          <div class="secondary_video_info_intro_context">
	
          </div>

        </div>

      </div>
				<%
				}
				}
				%>
      <div class="video_comments">

        <div class="comments_header">

          <div class="header_comments_info">
            <div class="comment_count">
              <span>댓글</span>
              <span>3</span>
              <span>개</span>
            </div>

            <div class="comment_sort">

              <div class="sort_img">

              </div>

            </div>

          </div>

          <div class="comments_input">

            <div class="input_img">
              <img src="/image/youtube.jpg" width="40px" height="40px">
            </div>

            <div class="input_bar">

              <input type="text" placeholder="댓글 추가..." class="input_bar" id="input_comments" name="input_comments"
                style="height: 35px;">

              <div class="input_button">
                <input type="reset" value="취소">
                <input type="button" value="댓글" onclick="commentAdd()">
              </div>

            </div>

          </div>
        </div>

        <div class="comments">

          <div class="comment_block">

            <div class="comments_img">
              <img src="image/다리우스.jpg" width="45px" height="50px">
            </div>
            <div class="comments_main">

              <div class="comment_writer">
                <span>이름</span>
                <span>작성날짜</span>
              </div>

              <div class="comment_content">
                글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용
              </div>
              <div class="comment_com">
                <div class="hidden_comment" id="hidden_comment" name="hidden_comment">
                  <div class="input_bar">
                    <input type="text" class="input_bar" id="input_comments" placeholder="대댓글 추가..."
                      name="input_comments" style="height: 35px;">
                    <div class="input_button">
                      <input type="reset" value="취소">
                      <input type="button" value="댓글" onclick="">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="comments_blank">

            </div>

          </div>

          <div class="comment_block">

            <div class="comments_img">
              <img src="image/다리우스.jpg" width="45px" height="50px">
            </div>
            <div class="comments_main">

              <div class="comment_writer">
                <span>이름</span>
                <span>작성날짜</span>
              </div>

              <div class="comment_content">
                글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용
              </div>
              <div class="comment_com">
                <div class="hidden_comment" id="hidden_comment" name="hidden_comment">
                  <div class="input_bar">
                    <input type="text" placeholder="대댓글 추가..." class="input_bar" id="input_comments"
                      name="input_comments" style="height: 35px;">
                    <div class="input_button">
                      <input type="reset" value="취소">
                      <input type="button" value="댓글" onclick="">
                    </div>
                  </div>
                </div>
              </div>

            </div>

            <div class="comments_blank">

            </div>

          </div>
          <div class="comment_block">

            <div class="comments_img">
              <img src="image/다리우스.jpg" width="45px" height="50px">
            </div>
            <div class="comments_main">

              <div class="comment_writer">
                <span>이름</span>
                <span>작성날짜</span>
              </div>

              <div class="comment_content">
                글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용
              </div>
              <div class="comment_com">
                <div class="hidden_comment" id="hidden_comment" name="hidden_comment">
                  <div class="input_bar">
                    <input type="text" placeholder="대댓글 추가..." class="input_bar" id="input_comments"
                      name="input_comments" style="height: 35px;">
                    <div class="input_button">
                      <input type="reset" value="취소">
                      <input type="button" value="댓글" onclick="">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="comments_blank">

            </div>

          </div>

        </div>

      </div>
    </div>

  </div>
</body>
</html>

