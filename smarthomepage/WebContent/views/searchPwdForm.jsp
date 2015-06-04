<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="${pageContext.request.contextPath }/member/searchPwd.do"
	method="get" ><!-- 이미지는 post방식밖에 안된다. -->
		<input type="text" name="name" id="name" />
		<input type="submit" value="비밀번호 찾기" />
	</form>
	</div>
	
	<div>
		<h5>찾으시는 비밀번호 :</h5>
		<%/* <% 는 java영역 */
			if(request.getAttribute("pwd") == null){
				%>
				<!-- null일 경우 아예 안보이게 만듦 여기는 html영역-->
				<%
			}else{
				%>
				<h3><%=request.getAttribute("pwd") %></h3>
				<% 
			}
		%>
	</div>
</body>
</html>