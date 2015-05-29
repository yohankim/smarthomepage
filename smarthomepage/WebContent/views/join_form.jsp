<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!doctype html>
<html lang="kr">
<head>
	<meta charset="UTF-8" />
	<title>회원가입 폼</title>
</head>
<body background="../images/background02.jpg">
	<form action="${pageContext.request.contextPath}/member/join.do">
		<label for="gender">성 별 :</label>
		<input type="radio" id="gender" name="gender" value="man" checked="checked" /> 남자
		<input type="radio" id="gender" name="gender" value="woman" /> 여자 <br /><br />
		<label for="name">이 름 :</label>
		<input type="text" id="name" name="name" /><br /><br />
		<label for="age">나 이 :</label>
		<input type="text" id="age" name="age" /><br /><br />
		<label for="id">ID :</label>
		<input type="text" id="id" name="id" /><br /><br />
		<label for="pwd">비밀번호 :</label>
		<input type="password" id="pwd" name="pwd" /><br /><br />
		
		<label for="check_mail">메일 정보 수신 여부 :</label>
		<input type="radio" id="check_mail" name="check_mail" value="yes" checked="checked"/>수신
		<input type="radio" id="check_mail" name="check_mail" value="no" />거부 <br /><br />
		
		<label for="content">간단한 가입 인사를 적어주세요.</label><br />
		<textarea name="content" id="content" cols="30" rows="10"></textarea><br />
		<input type="submit" value="전 송" /><!--form과 form사이에는 꼭 submit이 있어야 전송된다.  -->
	</form><!-- form은 데이터를 묶어서 보냄 -->
	
</body>
</html>