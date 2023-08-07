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
<title>신고 관리 : Projectors</title>


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
		width: 100%;
	}
	
	th
	{
		border-bottom: 1px solid gray;
	}
	
	td
	{
		text-align: center;
	}
	
	.right-left { width: 80%;}
	.right-right { width: 10%;}
	/* ======================================================= */
	
	#paging
	{
		margin: auto;
		text-align: center;
	}
	
</style>

<script type="text/javascript">
	$(function()
	{
		$("#manageReport").click(function()
		{
			window.open('ManagementReport.jsp','manageReport',
            'left=500,top=300,width=400,height=400,resizable=no'); 
		});
	});
</script>
</head>


<body>	
	 	<!-- ========== 공통 상단 영역( 메뉴바까지) ======================== -->
		
		<div id="upperBarBox">		<!-- 로그인/ 회원가입 문의/ 쪽지 -->
			<c:import url="AdminUpperBar.jsp"></c:import>
		</div>	
		<div id="logoBox">    		<!-- 로고 이미지 -->
			<a href="AdminMainPage.jsp"><img src="images/tmp_logo_admin.jpg"/></a>
		</div>
		<div id="menuBar">						<!-- 메뉴바( 메인 | 공지..) -->
			<c:import url="AdminBar.jsp"></c:import>
		</div>
		<!-- ============================================================= -->

<div>
<h1>신고 관리</h1>
<hr />
</div>
<br />


<div id="leftBar">
	<div class="btnHeight">
		<button type="button">
			<a href="ReportManagement.jsp">신고 처리 대기</a>
		</button>
	</div>
	<div class="btnHeight">
		<button type="button">
			<a href="ReportManagementComplete.jsp">신고 처리 완료</a>
		</button>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>
			신고 처리 대기 
		</h2> 
	</div>
		<hr />
		<br />

	<div>
		<table class="table">
			<tr>
				<th>신고번호</th>
				<th>신고자아이디?닉네임?</th>
				<th>닉네임</th>
				<th>유형</th>
				<th>사유</th>
				<th>신고일자</th>
				<th></th>
			</tr>
			<tr>
				<td>1234</td>
				<td><a href="">피망</a></td><!-- 신고자 프로필 -->
				<td><a href="">말랑콩떡</a></td><!-- 피신고자 프로필 -->
				<td>쪽지</td>
				<td><a href="">욕설</a></td><!-- 클릭하면 신고당한 컨텐츠?확인 가능 -->
				<td>2023-08-01</td>
				<td><button type="button" id="manageReport" name="manageReoprt">제재</button>
				<button type="button" id="cancelReport" name="cancelReport">미처벌</button>
				</td><!-- 클릭 시 제재하는 미니 창 -->
			</tr>
			<tr>
				<td>1233</td>
				<td><a href="">피망</a></td><!-- 신고자 프로필 -->
				<td><a href="">콩떡말랑</a></td><!-- 피신고자 프로필 -->
				<td>공고</td>
				<td><a href="">비방</a></td><!-- 클릭하면 신고당한 컨텐츠?확인 가능 -->
				<td>2023-07-31</td>
				<td><button type="button">제재</button></td><!-- 클릭 시 제재하는 미니 창 -->
			</tr>
			<tr>
				<td>1233</td>
				<td><a href="">피망</a></td><!-- 신고자 프로필 -->
				<td><a href="">콩떡말랑</a></td><!-- 피신고자 프로필 -->
				<td>공고</td>
				<td><a href="">비방</a></td><!-- 클릭하면 신고당한 컨텐츠?확인 가능 -->
				<td>2023-07-31</td>
				<td><button type="button">제재</button></td><!-- 클릭 시 제재하는 미니 창 -->
			</tr>
			<tr>
				<td>1233</td>
				<td><a href="">피망</a></td><!-- 신고자 프로필 -->
				<td><a href="">콩떡말랑</a></td><!-- 피신고자 프로필 -->
				<td>공고</td>
				<td><a href="">비방</a></td><!-- 클릭하면 신고당한 컨텐츠?확인 가능 -->
				<td>2023-07-31</td>
				<td><button type="button">제재</button></td><!-- 클릭 시 제재하는 미니 창 -->
			</tr>
			<tr>
				<td>1233</td>
				<td><a href="">피망</a></td><!-- 신고자 프로필 -->
				<td><a href="">콩떡말랑</a></td><!-- 피신고자 프로필 -->
				<td>공고</td>
				<td><a href="">비방</a></td><!-- 클릭하면 신고당한 컨텐츠?확인 가능 -->
				<td>2023-07-31</td>
				<td><button type="button">제재</button></td><!-- 클릭 시 제재하는 미니 창 -->
			</tr>
			<tr>
				<td>1233</td>
				<td><a href="">피망</a></td><!-- 신고자 프로필 -->
				<td><a href="">콩떡말랑</a></td><!-- 피신고자 프로필 -->
				<td>공고</td>
				<td><a href="">비방</a></td><!-- 클릭하면 신고당한 컨텐츠?확인 가능 -->
				<td>2023-07-31</td>
				<td><button type="button">제재</button></td><!-- 클릭 시 제재하는 미니 창 -->
			</tr>
		</table>	
	</div>

	<div id="paging">
		[페이징 처리처리처리처리]
	</div>

</div><!-- end #rightBar -->

</body>
</html>
