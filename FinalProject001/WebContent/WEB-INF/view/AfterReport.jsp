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
<title>신고완료 : Projectors</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<style type="text/css">

	*
	{
		font-size: 12pt;
		font-weight: bold;
	}
	
	#logoBox 					   /*로고 이미지*/
	{
		padding-top: 100px;
		text-align: center;
		height: 100px;
		padding-top: 20px;
	}
	
	#contentBox
	{
		width: 500px;
		height: 300px;
		margin: auto;
		border: 3px solid black;
	}
	
	#contentBox p
	{
		text-align: center;
		padding-top: 10%;
	}
	
</style>
<script type="text/javascript">
	$(function()
	{
		$("#closeReport").click(function()
		{
			window.close();
		});
	});
</script>
</head>
<body>
		<div id="logoBox"> 
			<img src="images/tmp_logo.JPG"/>
		</div>	

		<div id="contentBox">
			<p>
				신고처리가 완료되었습니다. <br>
				빠른시일내로 처리하겠습니다.<br>
				감사합니다.<br>
			</p>			
			<p>
				<button id="closeReport">닫기</button>
			</p>
		</div>
</body>
</html>

