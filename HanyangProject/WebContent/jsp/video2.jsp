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

<%
				List<VideoEntity> list = new ArrayList<VideoEntity>();
				list = (List<VideoEntity>) request.getAttribute("Video2");
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						VideoEntity entity = list.get(i);
%>

  <div style="display: flex; margin: auto;">
    <div class="primary_video">
      <div class="video_stream">
        <video controls width="100%" height="100%">
          <source src="/file/<%=entity.getVIDEO_UUID()%>.mp4" type="video/mp4">
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
            <img onclick="location.href= '/Video?member_id=<%=entity.getVIDEO_OWNER()%>&member_name=<%=entity.getMEMBER_NAME()%>';" src="/file/<%=entity.getVIDEO_UUID()%>.png" width="70px" height="40px">
          </div>

          <div class="secondary_video_info_owner" onclick="location.href= '/Video?member_id=<%=entity.getVIDEO_OWNER()%>&member_name=<%=entity.getMEMBER_NAME()%>';">
            <%=entity.getVIDEO_OWNER()%>
          </div>

          <button class="secondary_video_info_channel">채널</button>

        </div>

        <div class="secondary_video_info_intro">

          <div class="secondary_video_info_intro_context">
			<%=entity.getVIDEO_INTRO()%>
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

