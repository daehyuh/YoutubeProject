<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hanyang Project</title>
</head>
<script type="text/javascript" src="js/script.js"></script>
<body>
	<form name="form" method="post" action="/JOINUS">
		<table border="1" align="center">
			<tr>
				<td>아이디</td>
				<td><input type="text" id="user_id" name="user_id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" id="user_pwd" name="user_pwd"></td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td><input type="password" id="user_pwd_check" name="user_pwd_check"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" id="user_name"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="회원가입" onclick="check()">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>