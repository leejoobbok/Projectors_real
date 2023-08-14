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

@font-face {
    font-family: 'SUITE-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
	.Main_category_Outer {
		width : 1300px;
		margin: auto;
		padding-top: 15px;
	}

	.Main_category {
    	font-family: 'SUITE-Regular';
		text-decoration: none;
		padding: 4px 14px 4px 14px;
		font-size: 17pt;
		font-weight: bold;
	}
	.Main_category:hover {
		color: orange;
	}
	.Main_category a:hover { color: orange; }
	.Main_category a:active { color: gold; }
</style>
</head>

<body>
	<div style="background-color: white;">
	<div class="Main_category_Outer">
	<br>
		<a class="Main_category" href="">메인</a>
		<a class="Main_category" href="">공지</a>
		<a class="Main_category" href="recruitlist.action">공고 둘러보기</a>
		<a class="Main_category" href="">나의 지원 이력</a>
		<a class="Main_category" href="">나의 모집 공고</a>
		<a class="Main_category" href="myproject.action">나의 프로젝트</a>
		<a class="Main_category" href="">팀 스페이스</a>
	</div>
		<hr style="width: 90%;"><br>
	</div>
</body>
</html>