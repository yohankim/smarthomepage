<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
<head>
	<meta charset="UTF-8" />
	<title>이미지 파일 업로드</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/member/image.do"
	method="post" enctype="multipart/form-data"><!-- 이미지는 post방식밖에 안된다. -->
		<input type="text" name="title" id="title" />
		<input type="file" name="imageFile" id="imageFile" />
		<input type="submit" value="이미지 전송" />
	</form>
</body>
</html>