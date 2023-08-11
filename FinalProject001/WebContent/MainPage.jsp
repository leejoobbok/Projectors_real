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
<title>MainPage.jsp</title>


<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">

	/*==========  상단 공통 요소 (메뉴바까지) ==================*/
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
	/*==========================================================*/
	
	#wrapper{margin: 10px 300px;}
	
	#recSearchBox li 					/*툴 리스트 스타일 정의*/
	{
	 	display: inline;
	 	margin: 0px 20px;
		padding: 2px; 
	} 
	
	#bannerBox					  /*배너영역*/
	{	
		width:1120px;
		height:360px;
		margin: auto;
		text-align: center;
		border: solid 1px;
		border-radius: 20px;
		background-color:#473659; 
	}
	
	#lookAroundBox 					/*둘러보기 버튼 영역*/
	{
		font-size: 30pt;
		text-align: center;
		margin: 10px;
	}
	#lookAroundBtn 				/*둘러보기 버튼*/
	{
		font-size: 16pt; 
		font-weight: bold;
		padding: 14px;
		border-radius: 20px;
	}
	.smallTitile 					/* 소제목 */
	{
		font-size: 14pt;
		margin-left: 40px;
	}
	/*==========================================================*/
	#recListBox 				/* 공고 리스트 영역 */
	{
		margin: auto;
		width: 1130px;
		text-align: center;
	}
	
	.recThumbnail 				/* 공고 썸네일 (개별 박스)*/
	{
		border: solid 1px;
		border-radius: 10px;
		
		text-align: left;
		margin: 10px 0px;
	}
	.recThumbnail li:first-child   /* 썸네일 첫줄( 모집마감일 ~ 인원..)*/
	{
		font-weight: bold;
		font-size: 11pt;
		margin-bottom: 10px;
	}
	
	.recThumbnail li:nth-child(2) 	/* 썸넬 둘째줄(제목) */
	{
		font-size:14pt; 
		font-weight:bold;
	}
	#imminent 							/*마감임박 , 모집중 . 마감 태그*/
	{
		background-color: #f58442;
		color: white;
		font-size: 9pt;
		border-radius: 8px;
		padding: 0px 6px 2px;
	}

	.recThumbnail p 				/*썸네일의 내용설명 텍스트*/
	{font-size: 11pt;}
	
	.recThumbnail li:nth-child(4) span /* 썸넬 4번줄 하위 요소들(태그) */
	{
		background-color: black;
		color: white;
		border-radius: 9px;
		padding: 0px 6px 2px;
	}
	
</style>

<script type="text/javascript">
	
	 $(document).ready(function() {
		// smooth scroll
		$('#lookAround ').click(function(event) { 
			var id = $(this).attr("href");
			var offset = 60;
			var target = $(id).offset().top - offset;
			$('html, body').animate({scrollTop:target}, 500);
			event.preventDefault();
		});
	});
</script>
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
		<!-- ============================================================= -->
	
	
		<div id="wrapper">
			
			<!--  배너 영역 -->
			<div id="bannerBox">
				<div style="color:white">
					<h1 style="color:white">Welcome to Projectors!</h1>
						웹 프로젝트 팀을 직접 모집하거나 지원할 수 있습니다!<br>
					    왈라왈라... 왈라리왈라..............<br><br><br>
				</div>
			</div>
			
			<div  id="lookAroundBox">
				<a href="#a" id="lookAround">
					<button type="button" id="lookAroundBtn">모집 공고 둘러보기</button>
				</a>
			</div>
			
			
	
			<!-- ====== 로그인 회원 + 찜한 공고 있는 경우만 출력하는 영역======== -->
			
			<h2 class="smallTitile">찜한 모집 공고 
			<span style="font-size: 9pt;">> 더보기</span>
			</h2>
			
			<c:import url="PickedPost.jsp"></c:import>
			
			<!-- ================================================================= -->	
			
			
			<!-- 도구 메뉴 버튼 -->
			<div id="toolBtnBox">
				<ul>
					<li>
						<button type="submit" class="tool">전체</button>
					</li>
					<li>
						
						<button type="submit" class="tool">
							<img alt="자바" src="images/java.png" style="width:20px;" >
							<span class="toolName">JAVA</span>
						</button>
					</li>
					<li><button type="submit" class="tool">Node.js</button></li>
					<li><button type="submit">Spring</button></li>
					<li><button type="submit">Javascript</button></li>
					<li><button type="submit">Oracle</button></li>
					<li><button type="submit">Typescript</button></li>
					<li><button type="submit">.....</button></li>
					<li><button type="submit">.....</button></li>
				</ul>
			</div>
			
			<!-- ======= 모집공고 리스트 영역 (비회원 포함 모두에게 보임) ================== -->
			
			<div id="a" ></div>
			<h2 class="smallTitile">모집 공고 둘러보기
			<span style="font-size: 9pt;">
				<a href="PostLists.jsp">> 더보기</a>
			</span>
			</h2>
			
			<div id="recListBox"> 
				<div class="recThumbnail">
					<ul>
						<li>
							<span>모집 마감일  2023.09.01 (D-1)</span>
							<span style="margin-left:60px;">프로젝트 기간  2023.09.30 ~ 2023.11.30 </span>
							<span style="margin-left:60px;">모집 인원  5 / 6 </span>
						</li>
						<li>
							<span><a href="PostFormSample.jsp">주차 시스템 프로젝트</a></span>
							<span id="imminent">마감임박</span>
						</li>
						<li>
							<p>안녕하세요. 취업 전 이력서에 작성할 포트폴리오를 만드려고 합니다. 상세 기획은 완성되지 않았기에
						    	머시기저시기 머시기저시기 머시기저시기 머시기저시기...
						    </p>
						</li>
						<li><!-- 4번째 li -->
							<span>Go</span>
							<span>Spring</span>
							<span>Javascript</span>
							<span>대면</span>
							<span>서울</span>
						</li>
					</ul>	
				</div>
				<div class="recThumbnail">	
					<ul>
						<li>
							<span>모집 마감일  2023.09.01 (D-12)</span>
							<span style="margin-left:60px;">프로젝트 기간  2023.09.30 ~ 2023.11.30 </span>
							<span style="margin-left:60px;">모집 인원  2 / 6 </span>
						</li>
						<li>
							<span style="font-size:14pt; font-weight:bold;">건강 지킴이 프로젝트</span>
						</li>
						<li>
							<p>안녕하세요. 건강 관리에 필요한 다양한 기능을 한 번에 사용할 수 있는 어플을 만드려고 합니다.
						    	머시기저시기 머시기저시기 머시기저시기 머시기저시기...
						    </p>
						</li>
						<li><!-- 4번째 li -->
							<span>Go</span>
							<span>Spring</span>
							<span>Javascript</span>
							<span>대면</span>
							<span>서울</span>
						</li>
					</ul>
				</div>	
				<div class="recThumbnail">	
					<ul>
						<li>
							<span>모집 마감일  2023.09.01 (D-12)</span>
							<span style="margin-left:60px;">프로젝트 기간  2023.09.30 ~ 2023.11.30 </span>
							<span style="margin-left:60px;">모집 인원  1 / 6 </span>
						</li>
						<li>
							<span style="font-size:14pt; font-weight:bold;">환경 보호 프로젝트</span>
						</li>
						<li>
							<p>안녕하세요. 환경 보호에 관심이 많은 사람들이 모여 실천할 수 있는 어플을 만드려고 합니다.
						    	머시기저시기 머시기저시기 머시기저시기 머시기저시기...
						    </p>
						</li>
						<li><!-- 4번째 li -->
							<span>Go</span>
							<span>Spring</span>
							<span>Javascript</span>
							<span>대면</span>
							<span>서울</span>
						</li>
					</ul>
				</div>
			</div><!-- end of #recListBox div -->

		</div><!-- end of #wrapper div -->
		
	</div><!-- end of #root div -->

</body>
</html>

<!-- 
	미로그인자 -> 로그인창  + Bar 중에 공지게시판만 보이게
	아무 활동이 없는 회원 -> 배너 안 보이게
	지원 중인 회원 -> 나의 현재 지원 + 자세히 보기 버튼(Bar 내 링크랑 동일)
	모집 중인 회원 -> 나의 모집 현황 + 자세히 보기 버튼(Bar 내 링크랑 동일)
	프로젝트 진행 중인 회원 -> 멤버/프로젝트 종료 d-day/프로젝트 기간 자세히 보기 버튼(Bar 내 링크랑 동일) 
	 -->

