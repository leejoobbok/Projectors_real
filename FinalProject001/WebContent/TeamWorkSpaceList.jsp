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
<title>팀 스페이스 메인페이지</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">
	
	#allTextBox
	{
		border: 1px solid black;
		width: 1550px;
		height: 650px;
	}

	#feed
	{
		float: left;
		margin-top: 50px;
		margin-left: 50px;
		text-align: center;
		padding: 5px;
		border: 3px ridge lightgreen;
		margin-right: 100px;
	}
	
	#feedTitle
	{
		font-size:20pt;
		font-weight: bold;
		background-color: lightgreen;
	}
	
	#feedContent
	{
		background-color: #d5ffc4;
	}
	
	#notice
	{
		text-align: left;
		padding-left: 35px;		
		margin-top: 100px;
	}
	
	#feedBtn
	{
		margin-left: 270px;				
	}
	
	#categoryBar
	{
		font-size: 20pt;
	}

	a
	{
		text-decoration: none;
	}
	
	tr,th
	{
		text-align:center;
		padding: 10px;
		border-top: 1px solid black;
		border-left: 1px solid black;
		border-right: 1px solid black;
	}
	

	#outputList
	{
		width:1000px;
	}
	
	#footer
	{
		text-align: center;
		padding-top: 65px;
	}
	
	#personal
	{
		float: inh
	}
	
	
	
</style>
<script type="text/javascript">
	
	function sendFeed()
	{
		document.getElementById("feedContent").value += document.getElementById("feedInsert").value;
	}

</script>



</head>
<body>
<div>
	<p style="font-size: 20pt;">웹개발자 스터디 프로젝트 의 팀 스페이스</h1>
</div>



<!-- 공지, 작업실, 회의록, 히스토리 -->
<div id="categoryBar">
	<table>
		<tr>
			<th>
				<a href="TeamSpace.jsp">
					★메인페이지
				</a>
			</th>
			<th>
				<a href="TeamNoticeList.jsp">
					공지
				</a>
			</th>
			<th>
				<a href="TeamWorkSpaceList.jsp">
					작업실
				</a>
			</th>
			<th>
				<a href="TeamMeetingList.jsp">
					회의록
				</a>
			</th>
			<th>
				<a href="TeamTotalRecord.jsp">
					팀 히스토리
				</a>
			</th>
			<th>
				<a href="TeamMemberInfo.jsp">
					팀 현황
				</a>
			</th>
		</tr>
	</table>
</div>

<div id="allTextBox">

<div id="feed" name="FeedSector">
	<p id="feedTitle" style="text-align: center ;">
		담벼락
	</p>
	<textarea id="feedContent" name="feedContent" id="" cols="50" rows="15"
	readonly="readonly"></textarea>
	<br />
	<textarea id="feedInsert" name="feedInsert"" cols="50 " rows="5"
	placeholder="내용을 입력하세요.">
	</textarea>
	<br />
	<button type="submit" id="feedBtn" name="feedBtn"
	onclick="sendFeed()">
		보내기
	</button>
	
</div>

<div id="meeting" name="meeting">
	<div id="boardTitle">
		<p id="title" style="font-weight: bold; text-align: left;
					         font-size: 40px;">작업실</p>	
	</div>
	<div id="noticeLists">
		<div id="teamWorkSpace" style="width:1000px; height:200px;">
			<div id="1" class="personal">
				김학일 님의 작업
				<p> Lastest | 게시물 쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라</p>
			</div>
			<div id="1" class="personal">
				김학일 님의 작업
				<p> Lastest | 게시물 쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라</p>
			</div>
		</div>
	</div>
	
</div>
</div> <!-- allTextBox close  -->


</body>
</html>