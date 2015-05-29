<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body topmargin="0" leftmargin="0" background="${pageContext.request.contextPath}/images/background02.jpg">

<table width="100%" height="85" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath}/images/top_bg.gif" border="0">
<tr>
<td>
      <table width="100%" cellpadding="0" cellspacing="0">
                <tr>
                    <td><img src="${pageContext.request.contextPath}/images/logo.png" alt="로고" width="220" border="0" /></td>
                    </tr>
                    </table>
<td align="right">
<a href="${pageContext.request.contextPath}/member/info.jsp"><img src="${pageContext.request.contextPath}/images/bt_home.gif" alt="홈" align="middle" /></a>
<a href="${pageContext.request.contextPath}/member/main.jsp"><img src="${pageContext.request.contextPath}/images/bt_myinfo.gif" alt="나의정보" align="middle" /></a>
<a href="${pageContext.request.contextPath}/member/login_form.jsp"><img src="${pageContext.request.contextPath}/images/bt_logout.gif" alt="로그아웃" align="middle" /></a>
</td>
</tr>
</table>

<table width="300" height="600" style="margin-left: 20;margin-top: 10" >
<img src="${pageContext.request.contextPath}/images/ttl_myinfo.gif" alt="마이인포" style="margin-left: 10px; margin-top: 10px" />

<ul>
	<li class="item1">기본정보</li><p>
	<li class="item2">수강정보</li><p>
	<li class="item3">동영상 강좌</li><p>
	<li class="item4">결제정보</li><p>
	<li class="item5">출석정보</li><p>
	<li class="item5">수강신청</li><p>
	<li class="item5">교육 과목 질문</li><p>
	<li class="item5">시간표</li><p>
	<li class="item5">설문평가</li><p>
	<li class="item5">고객센터</li><p>
</ul>
</table>



</body>		
</html>