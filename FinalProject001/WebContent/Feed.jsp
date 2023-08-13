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
<title> 피드 (팀 스페이스 메인 임포트용)</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style>
	
	ul, li{list-style: none;}
	ul
	{
		margin-block-start: 0;
    	margin-block-end: 0;
    	padding-inline-start: 0;
	}
	
	.feedMsg			/* 메세지 블럭(노랑)*/
	{	
		display: inline-block;
		text-align: left;
		background-color: yellow;
		margin: 8px 0px;
		margin-bottom: 2px;
		padding: 4px 10px;
		border-radius: 10px;
		
		width: 200px;
		
	}
	#sendArea				/*입력창, 보내기버튼 감싸는 영역*/
	{
		position: absolute;
		top: 320px;
		left: 0px;
	}
	#feedInsert 			/* 담벼락 입력 창*/
	{	
		width: 218px;
		margin: auto;
		margin-top: 10px ;
		padding: 10px;
		
		border-radius: 10px;
		text-align: left;
	}
	#feedBtn
	{	
		font-size: 10pt;
		font-weight: bold; 
		padding: 2px 10px;
		border-radius: 10px;
	}
</style>
<script type="text/javascript">
	
	

</script>
</head>
<body>


<ul>
    <c:forEach items="${list}" var="feed">
    <li class="feedMsg">
	     <span style="font-weight:bold">${feed.nickName}:</span>
	     ${feed.content}<br>
	     <span style="font-size: 9pt; color: gray;"> (${feed.createdDate})</span>
    </li>
    </c:forEach>
</ul>

<div id="sendArea">
	<textarea  id="feedInsert" rows="2" placeholder="내용을 입력하세요."></textarea>
	<button type="submit" id="feedBtn" name="feedBtn" onclick="sendFeed()">보내기</button>
</div>

</body>
</html>