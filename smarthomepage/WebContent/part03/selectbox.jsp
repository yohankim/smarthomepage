<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
<head>
<meta charset="UTF-8" />
<title>Selectbox 폼</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/part03/selectbox.do">
		<span> 
		<label for="job">직업</label> 
		<select name="job" id="job"size="1">
				<option value="">선택하세요</option>
				<option value="학생">학생</option>
				<option value="IT개발자">IT개발자</option>
				<option value="군인">군인</option>
				<option value="외계인">외계인</option>
				<option value="양치기">양치기</option>
				<option value="기타">기타</option>
		</select>
		</span>

	<span>
	<!-- 관심 -->
	<label for="interest" style="float: left">관심 분야</label> 
		<select name="interest" id="interest"size="5" multiple="multiple">
				<option value="에스프레소">에스프레소</option>
				<option value="로스팅">로스팅</option>
				<option value="우주정복">우주정복</option>
				<option value="외계침공">외계침공</option>
				<option value="배고프다">배고프다</option>
				<option value="치느님">치느님</option>
		</select>
	</span>
	<input type="submit" value="전 송" style="float:right;margin-right:50px" />
	</form>
</body>
</html>