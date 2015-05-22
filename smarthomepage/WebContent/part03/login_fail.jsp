<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
<head>
	<meta charset="UTF-8" />
	<title>로그인 실패 시 보여주는 페이지</title>
</head>
<body>
	<%-- 
	<div>
		잘못된 정보입니다.<br/>
		다시 로그인하세요.<br/>
		<br><a href='${pageContext.request.contextPath}/part03/login_form2.do'>로그인 폼으로 가기</a>
	</div> 
	--%>
	
	<script type="text/javascript">
	alert("틀린 정보입니다. 다시 입력해주세요.");
	location.href="login_form2.do";
	</script>
	<!-- 팝업창 확인 누르면 뒤로 가서 다시 로그인 창으로 들어감 -->

	
</body>
</html>