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
<title>AdminBar.jsp</title>
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
	<a href="AdminMainPage.jsp">메인</a>
	<a href="AdminMainNoticeLists.jsp">공지</a>
	<a href="UserManagement.jsp">유저관리</a>
	<a href="RecruitMangement.jsp">모집공고관리</a>
	<a href="TeamSpaceManagement.jsp">팀스페이스관리</a>
	<a href="ReporManagement.jsp">신고</a>
	<a href="FAQManagement.jsp">문의</a>
	<hr>
</div>

</body>
</html>