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
<title>나의 모집 공고</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
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
		width: 90%;
	}
	
	.right-left { width: 80%;}
	.right-right { width: 10%;}
	/* ======================================================= */
	
	
	
</style>
<script type="text/javascript">
	function showRecruit()
	{
		window.location.href = "PostFormSample.jsp";
	}
	
	function ()
	{
		
	}
</script>
</head>
<body>
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
			모집 중인 공고 
			<button type="button" id="showRecruit" name="showRecruit" class="blackBtn"
			onclick="showRecruit()"
			>모집공고 보러가기</button>
		</h2> 
		프로젝트 명
	</div>
		<hr />
		<br />

	<div>	
		<h2>
			모집 마감일
		</h2>
		2023.07.31 (D-1)
	</div>
		<hr />
		<br />
	
	<div>
		<h2>신규 지원자</h2>
		<hr />
		<br />
		<form action="">
			<table class="table">
				<tr>
					<th>지원포지션</th>
					<th>지원자</th>
					<th>사용가능언어</th>
					<th>내용</th>
					<th></th>
				</tr>
				<tr>
					<td>웹프론트엔드A</td>
					<td>말랑콩떡</td>
					<td>JavaScript, JSTL ...</td>
					<td>첫 프로젝트지만 잘...</td>
					<td>
						<button type="button" class="showApply()" name="showApply" class="blackBtn"
						value="">지원서 보러가기</button>
					</td>
				</tr>
				<tr>
					<td>웹백엔드A</td>
					<td>햄찌사랑</td>
					<td>Java, Phython ...</td>
					<td>백엔드만큼은 자부심 있슴다!</td>
					<td>
						<button type="button" class="showApply()" name="showApply" class="blackBtn"
						value="">지원서 보러가기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<hr />
	<br />
	<div>
		<div class="right-left">	
				<p>모집 현황 &nbsp;  1 / 4</p>
		</div>
		<div class="right-right">
			<button class="blackBtn" style="background-color: red;">모집 취소하기</button>
		</div>
		<hr>
		<br>
		
		<table class="table" style="text-align: left;">
			<tr>
				<th>UI/UX디자인A</th>
				<th>
					<button type="button" class="blackBtn" style="background-color: orange;">모집중</button>
				</th>
				<th>모집된 팀원이 없습니다.</th>
			</tr>
			<tr>
				<th>웹프론트엔드A</th>
				<th>
					<button type="button" class="blackBtn" style="background-color: orange;">모집중</button>
				</th>
				<th>모집된 팀원이 없습니다.</th>
			</tr>
			<tr>
				<th>웹백엔드A</th>
				<th>
					<button type="button" class="blackBtn" style="background-color: orange;">모집중</button>
				</th>
				<th>모집된 팀원이 없습니다.</th>
			</tr>
			<tr>
				<th>기획A</th>
				<th>
					<button type="button" class="blackBtn" disabled="disabled">모집마감</button>
				</th>
				<th>담당자 : 캡틴</th>
			</tr>
		</table>
	</div>

</div><!-- end #rightBar -->


</body>
</html>