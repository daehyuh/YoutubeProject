<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hanyang Project</title>
</head>
<body>
	<form method="post" action="LOGIN">
		<table align="center" border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="user_id"></td>
			</tr>

			<tr>
				<td>패스워드</td>
				<td><input type="password" name="user_pwd"></td>
			</tr>

			<tr>
				<td colspan="2" align="right"><input type="submit" value="로그인"><input
					type="button" value="회원가입"
					onclick="location.href='/JSP/JoinUs.jsp'"></td>
			</tr>
		</table>
	</form>
</body>
</html>