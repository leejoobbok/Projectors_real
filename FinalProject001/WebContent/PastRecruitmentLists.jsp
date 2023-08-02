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
<title>나의 모집 이력</title>
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
	/*==========================================================*/

	/* 헤더 */
	div>h1
	{
		padding-left : 5%; 
	}


	/* ====================== 좌측바 ========================= */

	#leftBar
	{
		float: left;
		width: 20%;
		height : 300px;
		text-align: center;
	}
	
	.btnHeight
	{
		padding: 10px;
		border-right: 3px solid black;
	}
	

	/* ======================================================= */
	
	
	/* ====================== 우측바 ========================= */

	#rightBar
	{
		float: right;
		width: 70%;
		padding : 0% 5% 0% 5%;
	}
	
	.blackBtn
	{
		font-size: x-small;
		color: white;
		background-color: black;
		border: none;
	}

	.table
	{
		text-align: auto;
	}
	

	/* ======================================================= */
	

</style>
</head>
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

<div>
<h1>나의 모집 이력</h1>
<hr />
</div>
<br />


<div id="leftBar">
	<div class="btnHeight">
		<button type="button">
			<a href="MyPostLists.jsp">모집 중인 공고</a>
		</button>
	</div>
	<div class="btnHeight">
		<button type="button">
			<a href="PastRecruitmentLists.jsp">과거 모집 공고</a>
		</button>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>
			나의 과거 모집 공고
		</h2> 
	</div>
		<hr />
		<br />
		<table class="table">
			<!-- 8개 -->
			<tr>
				<th>게시물 번호</th>
				<th>제목</th>
				<th>모집 인원</th>
				<th>합류 인원</th>
				<th>모집시작일</th>
				<th>프로젝트 기간</th>
				<th>지원서</th>
				<th>상태</th>
			</tr>
			<tr>
				<td>18997</td>
				<td>
					<a href="PostFormSample.jsp">주차 시스템  프로젝트</a>
				</td>
				<td>프론트엔드 0/4 | 백엔드 0/7</td>
				<td>프론트엔드 4  | 백엔드 7</td>
				<td>22.03.02</td>
				<td>23.03.25~23.06.10</td>
				<td>읽음 32 |  안읽음 0</td>
				<td>마감(모집완료)</td>
			</tr>
			<tr>
				<td>14221</td>
				<td>
					<a href="PostFormSample.jsp">스포츠 분석 시스템</a>
				</td>
				<td>프론트엔드 1/2 | 백엔드 2/4</td>
				<td>-</td>
				<td>21.07.08</td>
				<td>22.08.27~22.10.15</td>
				<td>읽음 3 | 안읽음 0</td>
				<td>마감(기간만료)</td>
			</tr>
			<tr>
				<td>12354</td>
				<td>
					<a href="PostFormSample.jsp">웹 메신저 ‘코코넛톡</a>
				</td>
				<td>프론트엔드 0/2 | 백엔드 0/5</td>
				<td>-</td>
				<td>21.04.01</td>
				<td>21.05.01~21.05.20</td>
				<td>읽음 3| 안읽음 1</td>
				<td>모집 취소</td>
			</tr>
		</table>

	<div id="footer">
		[페이징 처리 구간]
	</div>
	<br>

</div><!-- end rightBar -->

<body>

</body>
</html>