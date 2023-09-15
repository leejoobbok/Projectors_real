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
<title>팀 스페이스 > 히스토리 : Projectors </title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/teamSpace.css">
<style type="text/css">
	
	#titleBox 	/* 타이틀 영역 */
	{
	  position: absolute; /* 윈도우 조절해도 변화 없이 고정 (부모요소와 연관 제거)*/ 
	  top: 30px;   /* 고정 top 마진 */
	  right: 20px; /* 고정 우측 마진 */
	  background-color: white;
	  width: 920px;
	  border: 2px solid;
	  border-radius: 10px;
	  
	  font-size: 16px;
	  font-weight: bold;
	  text-align: left;
	  padding: 4px 4px 6px 14px;
	}
	
	#lineNotice	,#noticeDate	/* 공지 글씨 (span) */
	{
		vertical-align: super;	/*베이스 라인을 위로.*/
	}

	/*===================================================*/
	#workSpaceBox			/* 작업글 리스트 영역*/
	{
	  position: absolute; /* 윈도우 조절해도 변화 없이 고정 (부모요소와 연관 제거)*/ 
	  top: 90px;   		/* 고정 top 마진 */
	  right: 20px; 		/* 고정 우측 마진 */
	  
	  background-color: white;
	  width: 920px;
	  height:596px;
	  
	  border: 2px solid;
	  border-radius: 10px;
	  padding: 10px;
	}
	.ArticleTbl /* 아티클 테이블*/
	{
		border: solid 1px;
		border-radius: 10px;
		margin:20px 10px 10px 10px;
		font-size: 12pt;
		text-align: center;
	}
	.firstTr
	{
		background-color: #bfbbb4;
	}
	input[id="title"]		/* 제목 인풋 태그 스타일 초기화*/
	{
	   border: none;
	   outline: none;
	   background: none;
	   padding: 0;
	   margin: 0;
	 }
	 
	 
	#title		 /*작업글 제목 */
	{
	   width: 200px;
	   font-size: 12pt;
	   text-align: center;
	}  
	#meetingDate, #createdDate
	{
		font-size: 10pt;
	}
	#meetingTextArea /* 내용 출력 부분 */                                             
	{
		width: 88%;
		height: 400px;
		magin: 10px;
		border-radius: 10px;
		padding: 10px;
	}
	/*======================================================*/
	
	#bottomBox				/* 하단 버튼 3개 영역*/
	{
		width: 300px;
		margin: 10px auto;
		padding: 4px;
	}
	.btn							/* 버튼 클래스 공통 */
	{	
		background-color: black;
		color: white;
		font-weight: bold;
		font-size: 10pt;
		padding: 2px 10px;
		border-radius: 12px;
	}
	
	#prjStartDay
	{
		border: solid black 1px;
		border-radius: 10px;
		
		font-size: 12pt;
		font-weight: bold;
		text-align: center;
		
		width: 300px;
		height: 26px;
		
		margin: auto;
		padding: 4px 10px;
	}
	#workHistoryBox /*작업 히스토리 영역(우측)*/
	{	
	  position: absolute; /* 윈도우 조절해도 변화 없이 고정 (부모요소와 연관 제거)*/ 
	  top: 46px;	
	  right: 10px; 		/* 고정 우측 마진 */
	  height: 500px;
	}
	
	
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>


</head>
<body>

	<div id="root">
		<div id="innerBox">
			
			<div>
				<h1 id="spaceName">팀 스페이스 : 우리동네 밥친구 프로젝트 </h1>
			</div>
			<div id="exitBtn">
				<a href="MainPage.jsp"><img src="images/exit.png" style="width:50px"></a>
			</div> 
			
			<!-- 공지, 작업실, 회의록, 히스토리 (메뉴 인덱스) -->
			<div id="categoryBar">
				<div class="index idx1">
					<a href="TeamSpace.jsp">
						<img src="images/home.png" style="width:30px;"/>
					</a>
				</div>
				<div class="index idx2"><a href="teamNoticeList.action">공지</a></div>
				<div class="index idx3"><a href="teamMyWorkspace.action">내 작업실</a></div>
				<div class="index idx4"><a href="TeamMeetingList.action">회의록</a></div>
				<div class="index idx5"><a href="TeamHistory.action">히스토리</a></div>
				<div class="index idx6"><a href="TeamMemberInfo.jsp">멤버</a></div>
				<div class="index idx7"><a href="TeamSetting.jsp">설정</a></div>
			</div>
				
			<div id="directoryBox">
			
				<div id="topLeftBox"> <!-- 왼쪽 상단 영역 -->
						
					여기 뭐 넣져??
				</div>
				
				
				<!-- ==============[ 담벼락 ] ============= -->
				<div id="feed">
					<c:import url="/loadFeed.action"/>
				</div>
				
				<!-- ===========[ 타이틀 (내 작업실)  ]=========== -->
				<div id="titleBox">
					<img src="images/megaphone.png" style="width:30px;">
					<span id="lineNotice">팀 히스토리</span>
				</div>
				
				<!-- ==========[ 히스토리 영역  ]========== -->
				<div id="workSpaceBox">
					
					<div id="prjStartDay">
						프로젝트 시작일: 2023.07.17 
					</div>
					
					<!-- ==========[ 회의록 영역 ]========== -->
					<div id="meetingHistoryBox">
						<c:import url="/getMeetingHistory.action"/>
					</div>
					
					<!-- ==========[ 작업기록 영역 ]========== -->
					<div id="workHistoryBox">
						<c:import url="/getWorkHistory.action"/>
					</div>	
						
				</div><!-- end of #workSpaceBox  -->
				
			</div><!-- end of #directoryBox div (콘텐츠 영역)-->
			
		</div><!-- end of #innerBox div  -->
		
	</div><!-- end of #root div -->

</body>
</html>