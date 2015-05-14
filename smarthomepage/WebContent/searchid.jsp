<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

	function exit() {
		location.href = "login.html";
	}
	
</script>

</head>
<body background="images/background02.jpg">

<table width="100%" height="800px" style="background-color:#d8e6eb ">
<tr>
<td  align="center">

<table width="400" height="40">
<tr>
<td align="center">아이디 찾기</td>
</tr>
</table>

<table width="400" height="30" border="1" align="center" style="border-collapse: collapse;line-height: 2 ">
<tr>
<td width="100" bgcolor="#eeeeee">구분</td> 
<td bgcolor="fcfcfc">
<input type="radio" name="job" value="학생">학생
<input type="radio" name="job" value="직원 및 강사">직원 및 강사
</td>
</tr>

<tr>
<td width="100" bgcolor="#eeeeee">이름</td> 
<td bgcolor="fcfcfc">
<input type="text" name="name" size="15" />
</td>
</tr>

<tr>
<td width="100" bgcolor="#eeeeee">연락 번호</td> 
<td bgcolor="fcfcfc">
<input type="text" name="phone" size="5" /> - 
<input type="text" name="phone" size="5"/> - 
<input type="text" name="phone" size="5"/>
</td>

</tr>
<table width="400" height="40">
<tr>
<td align="right" style="border: 0">
<input type="button" value="확인" />
<button onclick="exit()" value="exit">취소</button>
</td>
</tr>
</table>
</table>


<table>

</table>


</table>


</body>
</html>