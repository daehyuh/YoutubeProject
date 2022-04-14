<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript" src="js/script.js"></script>
  <link rel="stylesheet" href="css/styles.css" />
  <title>대현이 뺨때리기</title>
</head>
<body>
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
          <a href="join.html" class="join-btn">회원가입</a>
          <input type="sumbit" class="login-btn" value="로그인">
        </div>
      </form>
    </div>

  </div>
</body>
</html>