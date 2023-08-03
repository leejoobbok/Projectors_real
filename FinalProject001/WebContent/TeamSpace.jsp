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
		width: 90%;
		height: 800px;
	}

	#feed
	{
		float: left;
		margin-top: 250px;
		margin-left: 50px;
		text-align: center;
		padding: 5px;
		border: 3px ridge lightgreen;
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
		padding-left: 35%;		
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
		padding: 10px;
		border-top: 1px solid black;
		border-left: 1px solid black;
		border-right: 1px solid black;
	}
	
	li
	{	
		width:630;
		border-bottom: 1px groove black;
		border-bottom-width: 1px;
		font-size: 15pt;
		margin-bottom: 10px;
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

<div id="notice" name="notice">
	<div id="noticeTitle">
		<p id="title" style="font-weight: bold; text-align: left;
					         font-size: 40px;">※ 팀 공지 게시판 ※</p>	
	</div>
	<div>
	<ul style="border:1px solid black; width: 800px; height:600px;">
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>
		<li>
			157894231| <a href="TeamNoticeArticle.jsp">회의록 관리 규정</a>2023.08.03<br />
		</li>

		
	</ul>	
	</div>
</div>
</div> <!-- allTextBox close  -->


</body>
</html>