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
<title>모집 공고 샘플 페이지</title>

<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

	
	 li {list-style-type: none;}
	 
	#ourTools li 
	{display: inline;}
		
	#logoBox 					   /*로고 이미지*/
	{
		text-align: center;
		height: 100px;
		padding-top: 20px;
		/* border: 1px solid; */
	}
	#upperBarBox 				 /*최상단 바(로그인..쪽지)*/
	{
		text-align: right;
	}
	#menuBar					/*메뉴바(메인|공지..)*/
	{
		text-align: center;
		position :sticky;  
		padding-top: 32px;
	    top: -32px;
	}
	
	.wrapper 					/* 컨테이너용 클래스 */
	{
		margin: 50px 400px;
		border: solid 2px;
		border-radius: 20px;
		padding: 60px 100px;
	}
	
	ul
	{
		padding-inline-start: 0px;
		margin-block-start:2px;
	}
	
	.smallTitile 				/* 소제목 */
	{
		font-size: 14pt;
		margin-block-start: 2px;
    	margin-block-end: 0px;
	}
	
	#positionList 			/* 모집 현황 부분 블럭*/
	{
		font-weight: bold;
	}
	
	.position 				/* 모집 포지션 */
	{	
		display: inline-block;
		font-weight: bold;
		width: 100px;      /*포지션 명 부분 가로 길이고정 */
	}
	#writersProfileBox 		/* 모집자의 프로필 영역*/
	{
		
	}
	#recDetails /* 상세 모집 요강*/
	{
		text-align: left;
		font-size: 12pt;
	}
	#reportBtn /* 신고 버튼  */
	{	
		float: right; 
		margin-top: 4px;
		background-color: black;
		color: white;
		
		font-size: 9pt;
		font-weight: bold;
		border-radius: 10px;
	}
	.userProfileBox			/*댓글의 유저프로필 영역*/
	{	
		margin: 10px 0px 4px 0px;
		font-weight: bold;
	}
	
	.applyCnt		/*현재 지원중 인원 작게 표시 */
	{
		font-size: 10pt;
		display: inline-block;
		width: 140px;
		font-weight: bold;
	}
	
	.recPosition		/* 지원하기에 표시되는 모집 포지션 명*/
	{	
		display: inline-block;
		width: 100px;
		font-weight: bold;
	}
	
</style>
</head>


<body>
	<div id="root">
			
		<!-- ========== 공통 상단 영역( 메뉴바까지) ======================== -->
		<div id="upperBarBox">		<!-- 로그인/ 회원가입 문의/ 쪽지 -->
			<c:import url="UpperBar.jsp"></c:import>
		</div>	
		<div id="logoBox">    		<!-- 로고 이미지 -->
			<a href="MainPage.jsp"><img src="images/tmp_logo.JPG"/></a>
		</div>	
		<div id="menuBar">						<!-- 메뉴바( 메인 | 공지..) -->
			<c:import url="Bar.jsp"></c:import>
		</div>
		<!-- =========================================================== -->
		
		<div class="wrapper">
		
			<p style="font-weight: bold">모집 마감일 
			   <span style="color:blue;">D-10 </span>
			   <span style="font-size:9pt;" >(2023-08-17 마감)</span>
			 </p>
			 
			<!--  프로젝트(공고) 제목 -->
			<h1 class="title">주차 시스템 프로젝트</h1>
			<div>
				프로젝트 기간 <span>2023-09-09 ~ 2023-11-30</span>   
			</div>
			<hr>
			
			<!-- ====== 모집 현황 ====== -->
			<h2 class="smallTitile">모집 현황</h2>
			<hr>
			<div id="positionList">
				<ul>
					<li>
						<span class="positionName">디자인</span>
						<span class="positionNumber">0/1</span>
					</li>
				</ul>
			</div><!-- ======================== -->
			
			
			<!-- 모집자 프로필사진/닉네임 영역(클릭시 프로필로 이동) -->
			<div id="writersProfileBox"> 
			</div>
				
			<!-- ====== 상세 내용====== -->
			<hr>
			<h2 class="smallTitile">상세 모집 요강</h2>
			<hr>
			<div id="recDetails">
				<p>디자인: 어쩌구를 잘 하는 사람이면 좋겠습니다.<br>
				프론트엔드 : 어쩌구 왈라왈라를 다룰 수 있어야합니다<br>
				백엔드 : 어쩌구 왈라왈라는 필수고 왈라왈라를 잘 하시면 더 좋습니다.<br>
				</p>
				<!-- 
				<textarea name="recDetails" id="recDetails" cols="120" rows="10" readonly>
				 이건 작성 할 때 보이는 텍스트 박스 
				</textarea> -->
			</div>
			
				
			<!-- ====== 사용 도구 ====== -->
			<hr>
			<h2 class="smallTitile">사용 도구</h2>
			<hr>
			<div id="ourTools">
				<ul>
					<li>자바</li>
					<li>오라클</li>
					<li>자바스크립트</li>
					<li>Typescript</li>
					<li>인텔리전스</li>
					<li>이클립스</li>
				</ul>
			</div>
			
			<!-- ========= 진행 방식 (대면인 경우 지역 )========= -->
			<hr>
			<h2 class="smallTitile">진행 방식</h2>
			<hr>
			대면/비대면 : <span> 대면 </span>
			0
			
			
			<!-- ======== 지원하기 ======= -->
			<div>
				<hr>
				<h2 class="smallTitile">포지션 지원하기</h2>
				<hr>
				
				<span class="recPosition">디자인 A</span>
				<span class="applyCnt">(모집완료)</span>
				<button type="button" disabled="disabled">
					<a href="ApplyForm.jsp">지원하기</a>
				</button> <br/>
				
				<span class="recPosition">디자인 B</span>
				<span class="applyCnt">(현재 3명 지원 중)</span>
				<button type="button">
					<a href="ApplyForm.jsp">지원하기</a>
				</button><br><br>
				
				<span class="recPosition">프론트엔드 A </span>
				<span class="applyCnt">(현재 99명 지원 중)</span>
				<button type="button">
					<a href="ApplyForm.jsp">지원하기</a>
				</button> <br><br>
				
				<span class="recPosition">백엔드 A</span>
				<span class="applyCnt">(현재 1명 지원 중)</span>
				<button type="button">
					<a href="ApplyForm.jsp">지원하기</a>
				</button> <br>
				<span class="recPosition">백엔드 B</span>
				<span class="applyCnt">(모집완료)</span>
				<button type="button" disabled="disabled">
					<a href="ApplyForm.jsp">지원하기</a>
				</button> <br>
			</div>
			
			<!-- ===== 공고글 신고 ======== -->
			<form action="MainReport.jsp">
				<img alt="report" src="images/warning.png"
				 style="width:26px; padding-right:10px; float: right; padding-bottom: 4px;">
				<button type="submit" id="reportBtn"> 게시글 신고</button>
				<input type="hidden" name="recruitmentId" value=게시물번호 />
				<input type="hidden" name="reportKind" value=분류값(지원서의) />
			</form>
			
			
			
			<br><br>
			
			
			
		</div><!-- end of #wrapper div -->

		<div class="wrapper">
		
			<h2 class="smallTitile">댓글<span>(1)</span></h2>
			<hr>
			
			<div class="userProfileBox">
				<span><img alt="userProfile" src="images/test_profile.JPG" style="width:20px">
				<a href="ProfileOnlyView.jsp">진주는펄</a>
				</span>
			</div>
			
			<textarea name="" id="" cols="100" rows="2" disabled="disabled"> 안녕하세요. 저는 진주는 펄이에요. 전 짱이에요</textarea>
			<button type="button">
				<a href="MainReport.jsp?분류값='게시물분류번호(댓글)'">신고</a>
			</button>
			
			<hr>
			
			<form action="" method="get">
				<textarea cols="100" rows="2" id="comment" name="comment" placeholder="댓글을 남겨보세요!"></textarea>
				
				<button type="submit">댓글 등록</button>
			</form>
		</div>
		
	</div><!-- end of #root div -->
	
</body>
</html>



