<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최상단 바(로그인 여부에 따라 분기)</title>

<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

	#upperBarMenus
	{
		font-size: 12pt;
		font-weight: bold;
	}
	

</style>

</head>
<body>
	<div id="upperBarMenus">
	
		<a href="Login.jsp">로그인/회원가입</a>
		
		
		
		<!-- ======= 로그인 시 보이는 메뉴 ======= -->
		
		<a href="MyPage.jsp">마이페이지</a>
	
		<a href="Messenger.jsp">쪽지</a>
		<!-- ===================================== -->
		
		<a href="FAQLists.jsp">FAQ/문의</a>
	</div>
</body>
</html>