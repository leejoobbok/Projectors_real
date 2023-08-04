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
<title>팀 스페이스 : 공지 - Projectors </title>
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
		width: 600px;
		height: 40px;
		background-color: #fae896;		
		margin-left: 80px;
	}
	.index					/*메뉴 인덱스 클래스 영역*/
	{
		display: inline;
		border: 2px solid;  /* 영역 확인용 */
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
    
    #titleIndex
    {
    	 position: absolute; /* 윈도우 조절해도 변화 없이 고정 (부모요소와 연관 제거)*/ 
    	 top: 30px;  /* 고정 top 마진 */

	  	 left: 182px; /* 고정 우측 마진 */
	  	
	  	 height:30px;
	 	 width: 50px;
	 	 border: 2px solid gray;
	 	 border-radius: 10px;
	 	 
	  
	 	 font-size: 16px;
	  	 font-weight: bold;
	  	 background-color: #c6fa96;
	  	 color: gray;
	 	 text-align: center;
	 	 padding: 10px 4px 4px 4px;
    }
    
	#titleBox 	/* 타이틀 영역 */
	{
	  position: absolute; /* 윈도우 조절해도 변화 없이 고정 (부모요소와 연관 제거)*/ 
	  top: 30px;  /* 고정 top 마진 */

	  right: 170px; /* 고정 우측 마진 */
	  
	  height: 30px;
	  background-color: white;
	  width: 850px;
	  border: 2px solid;
	  border-radius: 10px;
	  
	  font-size: 16px;
	  font-weight: bold;
	  text-align: left;
 	 padding: 10px 4px 4px 10px;
	}
	
	#content
	{
		 font-size: 16px;
		 margin-left: 25px;
		 margin-top: 5px;
	}
	
	.buttonContainer
	{
		position: absolute;
		right: 4px;
		padding-top: 30px;
	}
	
	
	#lineNotice	,#noticeDate	/* 공지 글씨 (span) */
	{
		vertical-align: super;	/*베이스 라인을 위로.*/
	}

	/*===================================================*/
	
	
	#workSpaceBox			/* 공지글 리스트 영역*/
	{
	  position: absolute; /* 윈도우 조절해도 변화 없이 고정 (부모요소와 연관 제거)*/ 
	  top: 90px;   		/* 고정 top 마진 */
	  right: 20px; 		/* 고정 우측 마진 */
	  
	  background-color: white;
	  width: 920px;
	  height:520px;
	  
	  border: 2px solid;
	  border-radius: 10px;
	  padding: 10px;
	  
	  margin-top:20px;
 	  margin-right: 150px;
	  
	  
	}
	#teamNoticeLists /* 공지글 테이블*/
	{
		/* border: solid 1px; */
		border-radius: 10px;
		margin:auto;
		font-size: 12pt;
		text-align: center;
		
		
	  display: flex;
	  justify-content: center;
	  align-items: center;
	}
	/*======================================================*/
	

</style>
<script type="text/javascript">
	
	// 담벼락에 메세지 붙이기
    function sendFeed()
	{
		document.getElementById("feedContent").value += document.getElementById("feedInsert").value;
	}
	
    function completeUpload()
    {
    	alert("등록이 완료되었습니다.")
    	window.location.href="TeamNoticeArticle.jsp";
    	
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
				<div class="index"><a href="TeamSpace.jsp">메인</a></div>
				<div class="index"><a href="TeamNoticeList.jsp">공지</a></div>
				<div class="index"><a href="TeamNoticeList.jsp">작업실</a></div>
				<div class="index"><a href="TeamMeetingList.jsp">회의록</a></div>
				<div class="index"><a href="TeamTotalRecord.jsp">히스토리</a></div>
				<div class="index"><a href="TeamMemberInfo.jsp">팀 현황</a></div>
			</div>
			
			<form action="">
				
			<div id="directoryBox">
			
			 		
				
				<!-- ===========[ 타이틀 (공지게시판)  ]=========== -->
				<div id="titleIndex">
					제목
				</div>
				<input type="text" id="titleBox" name="titleBox"
				placeholder="제목을 입력하세요">
				
				<!-- ==========[ 멤버별 작업실 미리보기(메인)]========== -->
				<div id="workSpaceBox">
					
					<table id="teamNoticeLists">
						<textarea name="content" id="content" cols="115" rows="24" placeholder="내용을 입력해주세요"
						></textarea>
					</table><!-- ==== 일단 한 페이지당 10개로 구성했음 ===== -->
					
			
				
				<div class="buttonContainer">
				<!-- ※ 팀장에게만 보이는 버튼 -->
					<button type="button" onclick="completeUpload()"><a href="TeamNoticeList.jsp">등록</a></button>
					<button type="button" ><a href="TeamNoticeList.jsp">취소</a></button>
				</div>
				
			</div><!-- end of #directoryBox div (콘텐츠 영역)-->
			</form>
		</div><!-- end of #innerBox div  -->
		
	</div><!-- end of #root div -->

</body>
</html>

