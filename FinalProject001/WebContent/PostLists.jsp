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
<title>모집 공고 둘러보기(찾기)</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

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
	/*==================================================*/
	
	li {list-style-type: none;}
	
	#recSearchBox li 						/*툴 리스트 스타일 정의*/
	{
	 	display: inline;
	 	margin: 0px 20px;
		padding: 2px; 
	} 	
	
	#wrapper{margin: 10px 300px;}
	
	
	#searchTitle	/*조건 검색(타이틀)*/
	{
		font-size:14pt;
		font-weight:bold; 
		display: inline;
	}
		
	.searchTag  /* 선택한 검색 태그 */
	{	
		background-color: black;
		border-radius: 10px;
		color: white;
		
		padding: 4px 0px 4px 10px;
		font-size: 9pt;
		font-weight: bold;
	}
	.TagBox		/* 태그 영역 (이름,x버튼 묶음)*/
	{
		margin-left: 6px;
		display: inline;
	}
	.deleteBtn	/*태그 내의 삭제 x 버튼*/
	{
		background-color: black;
		border: none;
		border-radius: 10px;
		
		padding-top: 0px;
		color: white;
	}
	.deleteBtn:hover /* 삭제버튼 호버*/
	{
		background-color: white;
		color: black;
		transition: 0.7s;
	}
	
	#recSearchBox /*조건 검색 박스 영역*/
	{	
		border: solid 1px;
		border-radius: 10px;
		margin-top: 6px;
		font-size: 12pt;
		font-weight: bold;
	}
	#searchBtn		/* 검색 버튼 */
	{
		font-size: 12pt;
		font-weight: bold;
		border-radius: 10px;
		padding: 6px 10px;
	}
	/*======================================================*/
	#recListBox /* 공고 리스트 영역 */
	{
		margin: 20px 0px;
		text-align: center;
	}
	
	.recThumbnail /* 공고 썸네일 (개별 박스)*/
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
	
	.recThumbnail li:nth-child(2) /* 썸넬 둘째줄(제목) */
	{
		font-size:14pt; 
		font-weight:bold;
	}
	#imminent /*마감임박 , 모집중 . 마감 태그*/
	{
		background-color: #f58442;
		color: white;
		font-size: 9pt;
		border-radius: 8px;
		padding: 0px 6px 2px;
	}

	.recThumbnail p /*썸네일의 내용설명 텍스트*/
	{font-size: 11pt;}
	
	.recThumbnail li:nth-child(4) span /* 썸넬 4번줄 하위 요소들(태그) */
	{
		background-color: black;
		color: white;
		border-radius: 9px;
		padding: 0px 6px 2px;
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
		
		<!--================================================================  -->
		
		<div id="wrapper">
		
			<h2>모집 공고 둘러보기</h2>
			
			<div>
				<h3 id="searchTitle"> 조건 검색</h3>
				
				<!-- ==== 조건 선택시 붙는 Tag 영역 ====== -->
				<div class="TagBox">
					<span class="searchTag">서울 
					<button type="submit" class="deleteBtn">x</button>
					</span>
				</div>
				<div class="TagBox">
					<span class="searchTag">마포구
					<button type="submit" class="deleteBtn">x</button>
				</span>
				</div>
				<div class="TagBox">
					<span class="searchTag">백엔드
					<button type="submit" class="deleteBtn">x</button>
				</span>
				</div>
			</div>
			
			<!-- =========== 조건 검색 박스 영역  ========== -->
			<div id="recSearchBox">	 
				<form action="">
					<ul>
						<li>
							<span>지역</span>
							<select id="region" name="region">
								<option value="">전체</option>
								<option value="">서울</option>
								<option value="">경기</option>
								<option value="">인천</option>
								<option value="">:</option>
							</select>
						</li>
						<li>
							<span>상세 지역</span>
							<select id="subRegion" name="subRegion">
								<option value="">전체</option>
								<option value="">수원</option>
								<option value="">안산</option>
								<option value="">안양</option>
								<option value="">:</option>
							</select>
						</li>
						<li>
							<span>포지션</span>
							<select id="position" name="position">
								<option value="">전체</option>		
								<option value="">프론트엔드</option>
								<option value="">백엔드</option>
								<option value="">풀스택</option>
								<option value="">퍼블리싱</option>
								<option value="">디자인</option>
								<option value="">기획</option>
							</select>
						</li>
						<li>
							<span>진행방식</span>
							<select id="doType" name="doType">
								<option value="">전체</option>
								<option value="">대면</option>
								<option value="">비대면</option>
							</select>
						</li>
						<li>
							<button type="submit" id="searchBtn">검색</button>
						</li>
					</ul>
				</form>
			</div>
		
			<!-- ================ 모집 공고 리스트 영역 ========== -->
			
			<h3> 검색 결과 </h3>
			
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
			
			
			
		</div> <!-- end of #wrapper div -->
		
		
	</div>
</body>
</html>


<!--  일반 게시판 형식 			
				<table style="border: solid 1px;">
					<tr>
						<th width="120px">글 번호</th>
						<th width="400px">제목</th>
						<th width="400px">내용</th>
						<th width="200px">포지션</th>
						<th width="100px">작성자</th>
						<th width="100px">작성일</th>
					</tr>
					<tr>
						<td>999</td>
						<td><a href="PostFormSample.jsp">반려동물 집사를 위한 커뮤니티 '멍냥멍냥'</a></td>
						<td>어쩌구 왈라왈라한 사람들을 구합니다. 저희..</td>
						<td>프론트 2 / 백엔드 3</td>
						<td>고양이짱</td>
						<td>2023.08.01</td>
					</tr>
				</table> -->