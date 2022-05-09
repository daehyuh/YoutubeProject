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
<body>
  <div class="header">

    <div id="user" class="userhidden">

        <a href="login.jsp">
          <div class="user-content">
            로그인
          </div>
        </a>
        <a href="join.jsp">
          <div class="user-content">
            회원가입
          </div>
        </a>
        <a href="main.jsp">
          <div class="user-content">
            마이페이지
          </div>
        </a>
  
      </div>

    <div class="header__left">
      <a href="main.jsp">
        <img src="image/youtube.jpg" alt="" />
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
      <i class="material-icons">videocam</i>
      <i class="material-icons" onclick="test()">apps</i>
      <i class="material-icons">notifications</i>
      <i class="material-icons display-this" onclick="test2()">account_circle</i>
    </div>
  </div>
  <div class="mainBody">
    <div class="outBox">
      <form name="form" method="post" action="/LOGIN" >
        <div class="inputBox">
          <input type="text" id="sampleId" name="user_id" placeholder="아이디">
          <label for="">아이디</label>
        </div>

        <div class="inputBox">
          <input type="password" id="sampleId2" name="user_pwd" placeholder="비밀번호">
          <label>비밀번호</label>
        </div>
        <div class="btn-group">
          <a href="join.jsp" class="join-btn">회원가입</a>
          <input type="submit" class="login-btn" value="로그인">
        </div>
      </form>
    </div>
  </div>
  
  
</body>
</html>