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
  <script type="text/javascript" src="/js/script.js"></script>
  <link rel="stylesheet" href="/css/styles.css" />
  <title>대현이 뺨때리기</title>
</head>
<body>

  <div class="mainBody">

    <div class="outBox">
      <div class="inputBox">

        <form method="post" action="/JOINUS">
          <input type="text" id="user_id" name="user_id" placeholder="아이디">
          <label for="">아이디</label>
      </div>

      <div class="inputBox">
        <input type="password" id="user_pwd" name="user_pwd" placeholder="비밀번호">
        <label>패스워드</label>
      </div>
	
	<div class="inputBox">
        <input type="password" id="user_pwd_check" name="user_pwd_check" placeholder="비밀번호 확인">
        <label for="">패스워드 확인</label>
      </div>
	
      <div class="inputBox">
        <input type="text" id="user_name" name="usre_name" placeholder="닉네임">
        <label for="">닉네임</label>
      </div>

      <div class="btn-group">
        <input type="button" onclick="check()" class="login-btn" value="회원가입"></a>
      </div>
      </form>

    </div>
    
  </div>
</body>
</html>