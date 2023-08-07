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
<title>관리자 공지 : Projectors</title>

<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">

	table 
	{
		font-size: 16pt;
		text-align: center;
	}
	

	/*==========  상단 공통 요소 (메뉴바까지) ==================*/
	li {list-style-type: none;}

	
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
	
	#wrapper
	{
		margin: 50px 150px;
		border: solid 2px;
		border-radius: 20px;
		padding: 60px 100px;
	}
	
	#write /*공지 작성 버튼*/
	{	
		display: block;
		text-align: right;
	}
	
	#mainNoticeListBox /*공지글 테이블 영역*/
	{
		margin: 20px 0px;
		font-size: 16pt;
	}
	#mainNoticeLists /* 공지글 테이블*/
	{
		border: solid 1px;
		font-size: 12pt;
	}
	#mainNoticeLists tr /* 테이블 row */
	{
		
	}
</style>
</head>

<body>
	<div id="root">
	
		<div id="upperBarBox">		<!-- 로그인/ 회원가입 문의/ 쪽지 -->
				<c:import url="AdminUpperBar.jsp"></c:import>
		</div>	
		<div id="logoBox">    		<!-- 로고 이미지 -->
				<a href="AdminMainPage.jsp"><img src="images/tmp_logo_admin.jpg"/></a>
		</div>	
		<div id="menuBar">			<!-- 메뉴바( 메인 | 공지..) -->
				<c:import url="AdminBar.jsp"></c:import>
		</div>
		<!-- ============================================================ -->
		
		<div id="wrapper">
			<div id="NoticeTitleBox"> 
				<h2>공지 게시판</h2>
			</div>
			<div id="write">
				<button type="button"><a href="MainNoticeInsert.jsp">공지 작성</a></button>
			</div>
			
			
			<div id="mainNoticeListBox" name="mainNoticeListBox"> <!-- 테이블 영역 -->
				<table id="mainNoticeLists">
					<tr>
						<th width="120px">글 번호</th>
						<th width="800px">제목</th>
						<th width="100px">작성자</th>
						<th width="200px">작성일</th>
					</tr>
					<tr>
						<td>11</td>
						<td><a href="AdminMainNoticeArticle.jsp">더워요</a></td>
						<td>관리자2</td>
						<td>2023.08.01</td>
					</tr>
					<tr>
						<td>10</td>
						<td><a href="AdminMainNoticeArticle.jsp">살려주쇼</a></td>
						<td>관리자1</td>
						<td>2023.07.31</td>
					</tr>
					<tr>
						<td >9</td>
						<td >7월 이용 정지 회원 명단 안내 </td>
						<td >관리자2</td>
						<td >2023.07.31</td>
					</tr>
					<tr>
						<td >8</td>
						<td >안녕하세요 저는 관리자입니다. 멋지죠? </td>
						<td >관리자3</td>
						<td >2023.07.30</td>
					</tr>
					<tr>
						<td >7</td>
						<td >이달의 우수 프로젝터를 소개합니다~! </td>
						<td >관리자1</td>
						<td >2023.07.29</td>
					</tr>
					<tr>
						<td >6</td>
						<td >저는 마라탕을 정말 좋아해요. </td>
						<td >관리자1</td>
						<td >2023.07.29</td>
					</tr>
					<tr>
						<td >5</td>
						<td >이달의 우수 프로젝터를 소개합니다~! </td>
						<td >관리자1</td>
						<td >2023.07.29</td>
					</tr>
					<tr>
						<td >4</td>
						<td >FAQ 가 업데이트되었습니다. </td>
						<td >관리자1</td>
						<td >2023.07.29</td>
					</tr>
					<tr>
						<td >3</td>
						<td >이용 수칙 안내. 서로 배려하며 활동해요~! </td>
						<td >관리자1</td>
						<td >2023.07.29</td>
					</tr>
					<tr>
						<td >2</td>
						<td >프로젝터스 이용 가이드! </td>
						<td >관리자1</td>
						<td >2023.07.29</td>
					</tr>
					<tr>
						<td >1</td>
						<td >사이트 정식 오픈~! 안녕하세요 프로젝터스입니다. </td>
						<td >관리자1</td>
						<td >2023.07.29</td>
					</tr>
				</table>
			</div>
			
			<p> ◀ 이전 1 2 3 4 5 다음 ▶</p>
			
		</div><!-- end of #wrapper div -->	
		
			
	</div><!-- end of .root div -->
</body>
</html>