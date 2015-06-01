<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!doctype html>
<html lang="kr">
<head>
<meta charset="UTF-8" />
<title>마이 페이지</title>
</head>
<body>
	<h1>마이 페이지입니다.</h1>
	<div>
		<lable for="myInfo">내 정보</lable>
		<table>
		<tr>
		<!-- JSTL문법 -->
		<!-- ${name}을 EL(Expression Language)이라고 하며 
		이렇게 표현하기 위해서는 JSTL.JAR와 STANDARD.JAR가 필요하다-->
			<th>이름</th>
			<th>아이디</th>
			<th>나이</th>
			<th>성별</th>
		</tr>
		<tr>
		<td>이름</td>
		<td>아이디</td>
		<td>나이</td>
		<td>성별</td>
		</tr>
		
	</table>
	</div>
	<div>
		<span> <a
			href="${pageContext.request.contextPath}/member/updatePwd.do">정보수정</a>
		</span> 
	</div>

	<div>
		<lable for="updatePwd">내 정보 변경</lable>
		<form action="${pageContext.request.contextPath}/member/updateInfo.do">
			<label for="name">이 름 :</label>
			<input type="text" id="name" name="name" /><br /><br />
			<label for="age">나 이 :</label>
			<input type="text" id="age" name="age" /><br /><br />
			<input type="submit" value="전 송" />
			<!--form과 form사이에는 꼭 submit이 있어야 전송된다.  -->
		</form>
		<!-- form은 데이터를 묶어서 보냄 -->
		<span> 
			<a href="${pageContext.request.contextPath}/member/remove.do">회원탈퇴</a>
		</span>
	</div>
</body>
</html>