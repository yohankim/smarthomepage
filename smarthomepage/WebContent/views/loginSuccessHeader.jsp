<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인 성공 시 헤더</title>
</head>
<body>
	<div style="margin: 0 auto;"> <h3>헤더입니다.</h3> </div>
		
		<div style="float: right; margin-right: 100px;">
		
		<span>
			<a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a>
		</span>
		<span>
			<a href="${pageContext.request.contextPath}/member/mypage.do">마이 페이지</a>
		</span>
		</div>
</body>
</html>