<%@page import="entity.SearchEntity"%>
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
	<jsp:include page="header.jsp"></jsp:include>
	<%
		MemberEntity login = (MemberEntity) session.getAttribute("LOGIN");
	%>


	<div class="mainBody">
		<div class="upload">



			<div class="upload">
				<div class="uploadTop">
					<div class="title-title">
						<h1>영상 업로드</h1>
					</div>
				</div>

				<div class="uploadMain">
					<form method="post" enctype="multipart/form-data"
						action="/FileUpload">


						<div class="filebox">
							<input class="upload-name" id="fileName" value="" placeholder="영상 파일" readonly="readonly">
							<label for="file">파일찾기</label> 
							<input onchange="fileCheck()" type="file" name = "file" id="file" accept=".mp4">
						</div>
						
						<div class="filebox">
							<input class="upload-name" id="fileName2" value="" placeholder="썸네일 파일" readonly="readonly">
							<label for="file2">파일찾기</label> 
							<input onchange="fileCheck2()" type="file" name = "file2" id="file2" accept=".png">
						</div>
						
						<div class="topmargin">영상 제목
						<div class="file_name">
							<textarea rows="" cols="" name="video_name"></textarea>
						</div>
						</div>
						
						<div class="topmargin">영상 내용
						<div class="file_intro">
							<textarea rows="" cols="" name="video_intro"></textarea>
						</div>
						</div>
						
						
						<input type="hidden" name="video_owner"
							value="<%=login.getMEMBER_ID()%>"> 
							<input class="uploadSubmit" type="submit" value="업로드">
					</form>

	

				</div>
			</div>
		</div>
	</div>
</body>

</html>
