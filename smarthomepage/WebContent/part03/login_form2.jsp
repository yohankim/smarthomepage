<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<!doctype html>
<html lang="kr">
<head>
<meta charset="UTF-8" />
<title>로그인 권한 허용 샘플</title>
<script>
function move() {
	location.href = "../main/main.jsp";
}
function join() {
	location.href = "../join/join.jsp"
}
function login() {
	document.formld.method = "get";
	document.formld.action = "${pageContext.request.contextPath}/part03/login_demo2.do"
	document.formld.submit();
	/* location.href = "../member/info.jsp"; */
}
function idSearch() {
	location.href = "";
}
function pwSearch() {
	location.href = "";
}
function loginCheck() {//body와 body 사이를 document라 한다.
	if(document.frm.userid.value.length == 0){
		alert("아이디를 입력해주세요.");
		frm.userid.focus(); /* 커서를 인풋텍스트 칸에 위치시킨다. 사용자 편의성. */
		return false;
	}
	if(document.frm.pwd.value == ""){
		alert("비밀번호를 입력해주세요.");
		frm.pwd.focus(); /* 커서를 인풋텍스트 칸에 위치시킨다. */
		}
	return true;
}

</script>
</head>
<body>

<div align="center">
	<!-- 스크립트릿에 날짜 관련 로직 -->
	<%
		/*<-스크립트릿  */
			Calendar data = Calendar.getInstance();
			SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
			SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
	%>
	<!-- 아래 식은 표현시기라고 부른다. -->
	오늘은 <b><%= today.format(data.getTime()) %> </b>입니다.<br>
	지금 시각은 <b><%= now.format(data.getTime()) %></b>
</div>

	<div style="width: 100%" align="center">
	<%-- <%=new java.util.Date()%> --%><!-- util가져다 쓴거 -->

		<img src="../images/logo1.jpg" alt="로고" width="500" height="200" border="0" style="cursor: pointer" />
		<p>
		<div>
			
			<p>아이디와 로그인을 입력해주시면 서비스를 이용 하실 수 있습니다.
		</div>

		<div style="margin-top: 50px">

	<form name="frm" action="${pageContext.request.contextPath}/part03/login_demo2.do" name="formld">
				
		<label for="userid">아이디 :</label> 
		<input type="text" name="id" id="id" size="20" placeholder="아이디를 입력해주세요."/><br />
		<label for="password"> 암 호&nbsp :&nbsp </label>
		<input type="password" name="pwd" id="pwd" size="20" placeholder="비밀번호를 입력해주세요." /><br />
		<input type="submit" name="로그인" onclick="return loginCheck()" />
		<img src="../images/login.jpg" alt="" style="margin-top: 10; cursor: pointer;" width="300" height="100" onclick="javascript:login()" />
	</form>
	
	</div>
	
	<div>
	
	<h6>최초 비밀번호는 회원님의 생년월일 6자리(YYMMDD)로 설정되어 있습니다.<p>
	로그인후 비밀번호를 반드시 변경 해주세요.<p><font color="ff0000">단, 직원은 제외</font>
	</h6> 
	
	</div>
	
	<div style="margin-top : 20px">
	
	</div>
	
	<div>
	<a href="../searchid.jsp" onclick="javascript:move()">아이디 찾기</a> | <a href="">비밀번호 찾기</a>
	<div>
	<img src="../images/makeuser.gif" alt="" onclick="join()" style="margin-top: 7px; cursor: pointer" />
	
	</div>
	</div>
	
	
<audio autoplay loop>
<source  src="../images/Redfoo - New Thang (1).mp3" type="audio/mp3">
</audio>

</body>

</html>



