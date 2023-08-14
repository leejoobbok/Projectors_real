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
<title>회원일때</title>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
	
@font-face {
    font-family: 'SUITE-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

	.memberMenu
	{
		font-size: 15pt;
		font-weight: bold;
		border-bottom-color: white;
	}
	.btn
	{	
		border: 0;
  		background-color: transparent;
		font-size: 11pt;
    	font-family: 'SUITE-Regular';
		
	}
	.btn:hover {
		color: orange;
	}
	.profileImg
	{
		width: 20px;
		height: 20px;
	}
	
</style>

<script type="text/javascript">

	$(function()
	{
		// 마이페이지
		$("#myBtn").click(function()
		{
			// alert("마이페이지");
			$(location).attr("href", "MyPage.jsp");
		});
		
		// 쪽지
		$("#msgBtn").click(function()
		{
			window.open('MsgList.jsp', 'MsgList', 'left=600,top=300,width=840,height=620,resizable=no,location=no');
		});
		
		// 문의
		$("#faqBtn").click(function()
		{
			// alert("문의");
			$(location).attr("href", "FAQLists.jsp");
		});
		
		// 로그아웃
		$("#logoutBtn").click(function()
		{
			// alert("로그아웃");
			 $(location).attr("href", "logout.action");
		});
		
	});

</script>

</head>
<body>
	<div class="memberMenu">
		
		<button type="button" class="btn" id="myBtn" >마이페이지</button>
		
		<button type="button" class="btn" id="msgBtn" >쪽지</button>
		
		<button type="button" class="btn" id="faqBtn" >문의</button>
		
		<button type="button" class="btn" id="logoutBtn" >로그아웃</button>
		
	</div>
</body>
</html>