<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function move() {
		location.href = "../main/main.jsp";
	}
	function popup() {
		window.open("../main/main.jsp")
	}
	function login() {
		location.href = "../member/info.jsp";
	}
	
</script>

</head>
<body background="../images/background02.jpg">

<div style="width: 100%" align="center">
	<%=new java.util.Date()%>
	
	<h1>로그인</h1>
	<img src="../images/logo.png" alt="로고" width="245" height="68" border="0" />
	
	<p>
	
	<div>
	<h1>ITBANK</h1> <p>
	<h2>MULTICAMPUS에 오신걸 환영합니다.</h2>
	
	<p>
아이디와 로그인을 입력해주시면 서비스 이용 할 수 있습니다.
	</div>

	<div style="margin-top: 50px">
	
	<input type="text" size="40" style="height:40px" placeholder="아이디를 입력해주세요."/>
	<p>
	<input type="password" size="40" style="height:40px" placeholder="비밀번호를 입력해주세요."/>
	<!-- -----링크박스 -->
	</div>
	
	<div>
	
	<h6>최초 비밀번호는 회원님의 생년월일 6자리(YYMMDD)로 설정되어 있습니다.<p>
	로그인후 비밀번호를 반드시 변경 해주세요.<p><font color="ff0000">단, 직원은 제외</font>
	</h6> 
	
	</div>
	
	<div style="margin-top : 20px">
	<img src="../images/btn_login.gif" alt="" width="167" height="40" onclick="javascript:login()" />
	</div>
	
	<div>
	<a href="../searchid.jsp" onclick="javascript:move()">아이디 찾기</a> | <a href="">비밀번호 찾기</a>
	<div>
	<button onclick="popup()">팝업</button>
	</div>
	</div>
	
	</div>
	
<audio autoplay loop>
<source  src="../images/Redfoo - New Thang (1).mp3" type="audio/mp3">
</audio>

</body>
</html>
