<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<!doctype html>
<html lang="kr">
<head>
<meta charset="UTF-8" />
<title>날짜 보여주기</title>
</head>
<body>
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

</body>
</html>