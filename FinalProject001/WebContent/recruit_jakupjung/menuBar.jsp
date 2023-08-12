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
	.Main_category {
		text-decoration: none;
		padding: 4px 14px 4px 14px;
		font-size: 16pt;
		font-weight: bold;
		color: black;
		background-color: white;
	}
	.Main_category a:hover { color: orange; }
	.Main_category a:active { color: gold; }
</style>
</head>

<body>

	<div class="Main_category">
	<br>
		<a class="Main_category" href="MainPage.jsp">메인</a>
		<a class="Main_category" href="MainNoticeLists.jsp">공지</a>
		<a class="Main_category" href="recruitlist.action">공고 둘러보기</a>
		<a class="Main_category" href="MyApply.jsp">나의 지원 이력</a>
		<a class="Main_category" href="MyPostLists.jsp">나의 모집 공고</a>
		<a class="Main_category" href="MyProjectHistory.jsp">나의 프로젝트</a>
		<a class="Main_category" href="TeamSpace.jsp">팀 스페이스</a>
		<hr>
	</div>

</body>
</html>