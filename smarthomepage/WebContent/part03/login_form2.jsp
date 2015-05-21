<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
<head>
	<meta charset="UTF-8" />
	<title>로그인 권한 허용 샘플</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/part03/login_demo2.do">
		<label for="userid">아이디 :</label>
		<input type="text" name="id" id="id"/><br />
		<label for="password">암 호 :</label>
		<input type="password" name="pwd" id="pwd" /><br />
		<input type="submit" value="로그인" />
	</form>
</body>
</html>