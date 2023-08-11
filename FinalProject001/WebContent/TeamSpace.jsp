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
<title>팀 스페이스: 메인 - Projectors </title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">
	
	body { overflow: hidden;} /* 스크롤 제거*/
	a{text-decoration: none;} 
	a:hover{text-decoration: underline;}
	/*===================================================*/
	#root						   /*루트 박스*/
	{
		width: 1400px;
		height:1000px;
		margin: auto;
		/* border: 2px solid #d1d7e0; */  /*영역 확인용*/
	}
	#innerBox				
	{
		margin: auto;
	}
	/*===================================================*/
	#spaceName 					/*스페이스 명(최상단 타이틀 )*/
	{
		display: inline-block;
		text-align: left;
		font-size: 26px;
		padding-left: 80px;		/* 왼쪽 패딩*/
		
	}
	/*===================================================*/
	#categoryBar 				/* 메뉴 인덱스바 영역*/
	{	
		width: 660px;
		height: 40px;
		
		background-color: #fae896;
		padding: 10px 0px 0px 20px;
		margin-left: 60px;
		
		border-top: 2px solid;
		border-left: 2px solid;
		border-right: 2px solid;
		border-top-left-radius: 10px;
		border-top-right-radius: 10px;
	}
	.index					/*메뉴 인덱스 클래스 영역*/
	{
		display: inline;
		/* border: 2px solid;  */			 /* 영역 확인용 */
		border-radius: 10px;
		
		vertical-align: bottom;
		font-weight: bold;
		padding: 6px 8px;
	}			
	
	.index a				/* 메뉴 인덱스 글자*/
	{
		text-decoration: none;
		 
		font-size: 20px;
		padding: 4px 6px;
		margin: 0px;
	}
	/*===================================================*/	
	#exitBtn					/* 나가기 버튼 */
	{	
		float: right;  
		margin-top: -12px; 	   /* 위 여백 줄여서 이미지를 위로 */
		padding-right: 60px;  /* 왼쪽으로*/
	}
	/*===================================================*/
	#directoryBox 	/*(메뉴 인덱스 제외) 폴더모양 박스 영역 전체*/
	{	
		position: relative; /* 자식요소 위치 고정을 위한 속성지정 */
  		border: 2px solid;
		border: 2px solid; 
		border-radius: 20px;
		
		width: 1300px;
		height:740px;
		
		background-color: #fae896;  
		margin: auto;	/* 가운데 정렬*/
	}
	/*===================================================*/
	#topLeftBox			/* 좌측 상단 영역 */
	{
		width: 260px;
		height: 200px;
		border: 2px solid;
		border-radius: 10px;
		margin: 30px 20px 20px 20px;
		padding: 10px;
		background-color: gray;
	}
	/*===================================================*/
	#feed					/* 담벼락 영역 */
	{
		float: left;
		width: 260px;
		height: 430px;
		
		text-align: center;
		padding: 5px;
		margin: 0px 20px 10px 20px;
		border: 3px solid lightgreen;
		border-radius: 10px;
	}

	#feedContent			/* 담벼락 입력된 공간 */
	{
		width: 240px;
		background-color: #d5ffc4;
		margin: auto;
		margin-top: 10px;
		border-radius: 10px;
	}
	#feedInsert 			/* 담벼락 입력 창*/
	{
		width: 240px;
		margin: auto;
		margin-top: 10px ;
		border-radius: 10px;
		text-align: left;
	}
	
    /*===================================================*/
	#lineNoticeBox 	/* 한 줄 공지 영역*/
	{
	  position: absolute; /* 윈도우 조절해도 변화 없이 고정 (부모요소와 연관 제거)*/ 
	  top: 30px;         /* 고정 top 마진 */
	  right: 20px;      /* 고정 우측 마진 */
	  
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
	#noticeDate  /* 공지 날짜 */
	{
		font-size: 10pt;
		text-color: gray;
		margin-left: 10px;
	}
	/*===================================================*/
	#workSpaceBox			/* 작업실 미리보기 영역*/
	{	
	  position: absolute; /* 윈도우 조절해도 변화 없이 고정 (부모요소와 연관 제거)*/ 
	  top: 90px;   		/* 고정 top 마진 */
	  right: 20px; 		/* 고정 우측 마진 */
	  
	  background-color: white;
	  width: 920px;
	  height: 160px;
	  border: 2px solid;
	  border-radius: 10px;
	  
	  font-size: 16px;
	  font-weight: bold;
	  text-align: left;
	  padding: 10px;
	}
</style>
<script type="text/javascript">
	
	/*
	//○ 윈도우 리사이즈 해도 초기 크기로 강제 되돌리는 기능 (적용 안돼서 주석처리..)
	function setFixedSize() {
	  window.resizeTo(1400, 1000); // #root 의 가로 세로
	}
	//페이지 최초 로드 또는 리사이징 시도 시 호출
	window.onload = setFixedSize;
	window.onresize = setFixedSize;
	-------------------------------------------------*/
	
	// 담벼락에 메세지 붙이기
    function sendFeed()
	{
		document.getElementById("feedContent").value += document.getElementById("feedInsert").value;
	}

</script>


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
				<div class="index idx3"><a href="TeamNoticeList.jsp">작업실</a></div>
				<div class="index idx4"><a href="TeamMeetingList.jsp">회의록</a></div>
				<div class="index idx5"><a href="TeamTotalRecord.jsp">히스토리</a></div>
				<div class="index idx6"><a href="TeamMemberInfo.jsp">멤버</a></div>
				<div class="index idx7"><a href="TeamSetting.jsp">설정</a></div>
			</div>
				
			<div id="directoryBox">
				
				<div id="topLeftBox"> <!-- 왼쪽 상단 영역 -->
						
					여기 뭐 넣져??
				</div>
				
				
				<!-- ==============[ 담벼락 ] ============= -->
				<div id="feed" name="FeedSector">
					<textarea id="feedContent" name="feedContent" id="" cols="50" rows="15" readonly="readonly"></textarea>
					<br>
					<textarea id="feedInsert" name="feedInsert"" cols="50 " rows="5"
								placeholder="내용을 입력하세요."></textarea>
					<br>
					<button type="submit" id="feedBtn" name="feedBtn" onclick="sendFeed()">보내기</button>
				</div>
				
				<!-- ===========[ 상단 한 줄 공지 ]=========== -->
				<div id="lineNoticeBox">
					<img src="images/megaphone.png" style="width:30px;">
					<span id="lineNotice"><a href="TeamNoticeArticle.jsp">공지: 새로운 콘텐츠 추가 회의는 오프라인으로 진행합니다!</a></span>
					<span id="noticeDate">2023.08.04</span>
				</div>
				
				<!-- ==========[ 멤버별 작업실 미리보기(메인)]========== -->
				<div id="workSpaceBox">
					
					여긴 아마도 작업실 관련 내용 간단히 보여주고(새 글 등)멤버별 작업실 이동 버튼..?
				</div>
				
				<!-- ==========[ 메인에는 무슨 기능을 넣어야 할까]========== -->
				<div>
					
					이부분은.. 머가 들어가야 할라나~~ <br>
					기존 게시판에서 내용을 끌어와서 보여주든.. 디데이 같이 별도 기능이든.. <br>
					메인 어떻게 구성할지는 나중에 논의해봅시돠 <br>
					일단 레이아웃 대충 짰고
					나중에 내부 영역 추가하거나 위치, 크기 조정하는건 다 파악해놨으니 금방할수잇서여<br>
				</div>
				
				<!-- ====================================================================================== -->
			</div><!-- end of #directoryBox div (콘텐츠 영역)-->
			
		</div><!-- end of #innerBox div  -->
		
	</div><!-- end of #root div -->
</body>
</html>

