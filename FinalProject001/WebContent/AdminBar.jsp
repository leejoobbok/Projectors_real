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
	<a href="AdminMainPage.jsp">메인페이지</a>
	<a href="mainNoticeList.action">공지사항</a>
	<a href="FAQManagement.jsp">문의관리</a>
	<a href="ReportManagement.jsp">신고관리</a>
	<a href="ContentsManagement.jsp">컨텐츠관리</a>
	<a href="UserManagement.jsp">회원관리</a>
	<hr>
</div>

</body>
</html>