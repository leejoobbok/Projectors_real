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
<title>문의관리 1:1 : Projectors</title>
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
	
	.btn
	{
		width: 150px;
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
		margin-right: 10%;
	}
	.FAQWriteBtn
	{
		font-size: medium;
		color: white;
		background-color: black;
		border: none;
		float: right;
		width: 10%;
		margin-right: 11%;
		right: 0px;
		bottom: 0px;
	}
	
	.table
	{
		text-align: center;
		margin: auto;
		width: 90%;
		margin-left: 0%
	}
	
	#rightBar-left
	{
		float: left;
		width: 80%;
	}
	#rightBar-right
	{
		float: right;
		width: 20%;
		right: 0px;
		bottom: 0px;		
	}
	


	/* ======================================================= */
	
	
	
</style>
<script type="text/javascript">
	$(function()
	{
		$("#WriteQnA").click(function()
		{
			window.location.href="QnAQInsert.jsp";
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
<h1>문의관리</h1>
<hr />
</div>
<br />


<div id="leftBar">
	<div class="btnHeight">
		<button type="button" class="btn">
			<a href="FAQManagement.jsp">FAQ</a>
		</button>
	</div>
	<div class="btnHeight">
		<button type="button" class="btn">
			<a href="AnswerManagement.jsp">1:1문의</a>
		</button>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>	1:1 문의 관리 </h2>
	</div>
	<div>
		<div>
			<button id="WriteQnA" class="FAQWriteBtn">FAQ 작성하기</button>
		</div>
	</div>
	<br>

	<div>	
		<table class="table">
			<tr>
				<th colspan="4"><hr /></th>
			</tr>
			<tr>
				<th style="width: 5%;">번호</th>
				<th style="width: 65%;">내용</th>
				<th style="width: 20%;">작성일</th>
				<th style="width: 10%;">상태</th>
			</tr>
			<tr>
				<th colspan="4"><hr /></th>
			</tr>
			<tr>
				<td>4</td>
				<td><a href="QnAArticle.jsp">눈이 뻐근해요</a></td>
				<td>2023-08-02</td>
				<td>답변대기</td>
			</tr>
			<tr>
				<td>3</td>
				<td><a href="QnAArticle.jsp">졸려요</a></td>
				<td>2023-07-25</td>
				<td>답변완료</td>
			</tr>
			<tr>
				<td>2</td>
				<td><a href="QnAArticle.jsp">이메일 바꾸고싶어요</a></td>
				<td>2023-07-23</td>
				<td>답변완료</td>
			</tr>
			<tr>
				<td>1</td>
				<td><a href="QnAArticle.jsp">닉네임 변경 안돼요?</a></td>
				<td>2023-07-15</td>
				<td>답변완료</td>
			</tr>
		</table>
	</div>
	<br>
	<div style="text-align: center;">
		&lt; [ 1 2 3 4 5 6 7 8 9 ] >
	</div>
	<br><br>
	<hr>
	<br><br><br><br><br><br><br>
</div><!-- end #rightBar -->

<!-- footer 넣을 자리	 -->

</body>
</html>