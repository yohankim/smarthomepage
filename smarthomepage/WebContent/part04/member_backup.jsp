<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="net.syntax.part04.MemberDAO" %>
<%@ page import="net.syntax.part04.MemberVO" %>
<!doctype html>
<html lang="kr">
<head>
	<meta charset="UTF-8" />
	<title>JDBC TEST</title>
</head>
<body>
<%-- 	<%
		MemberVO member = new MemberVO();
	%> --%>
	<jsp:useBean class="net.syntax.part04.MemberVO" id="member" scope="page"/>
	
	이    름: <%=member.getName() %>
	아 이 디: <%=member.getId() %>
	비밀번호: <%=member.getPwd() %>
	나    이: <%=member.getAge() %>
	성    별: <%=member.getGender() %>
	
	
</body>
</html>