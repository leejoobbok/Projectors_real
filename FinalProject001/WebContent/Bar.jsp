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
<title>Bar.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">

a 
{
	text-decoration: none;
	padding: 4px 14px 4px 14px;
}

#menuBar
{
	font-size: 16pt;
	font-weight: bold;
	background-color: white;
}

</style>
</head>

<body>
<div id="menuBar">
	<a href="MainPage.jsp">메인</a>
	<a href="MainNoticeLists.jsp">공지</a>
	<a href="PostLists.jsp">공고 둘러보기</a>
	<a href="MyApply.jsp">나의 지원 이력</a>
	<a href="MyPostLists.jsp">나의 모집 공고</a>
	<a href="MyProjectHistory.jsp">나의 프로젝트</a>
	<a href="TeamSpace.jsp">팀 스페이스</a>
	<hr>
</div>

</body>
</html>