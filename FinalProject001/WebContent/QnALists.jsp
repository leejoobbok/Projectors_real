<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 : Projectors</title>
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
	}

	.table
	{
		text-align: auto;
		width: 90%;
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
			window.location.href="QnAInsert.jsp";
		});
	});
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
<h1>FAQ / 문의</h1>
<hr />
</div>
<br />


<div id="leftBar">
	<div class="btnHeight">
		<button type="button" class="btn">
			<a href="FAQLists.jsp">FAQ</a>
		</button>
	</div>
	<div class="btnHeight">
		<button type="button" class="btn">
			<a href="QnALists.jsp">1:1문의</a>
		</button>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>	1 : 1 질문 </h2>
	</div>
	<div>
		<div id="rightBar-left">
			<h3>내 문의 내역</h3>
		</div>
		<br>
		<div id="rightBar-right">
			<button id="WriteQnA" class="blackBtn">글 작성하기</button>
		</div>
	</div>
	<br>

	<div>	
		<table class="table">
			<tr>
				<th colspan="3"><hr /></th>
			</tr>
			<tr>
				<th style="width: 10%;">번호</th>
				<th style="width: 80%;">내용</th>
				<th style="width: 10%;">상태</th>
			</tr>
			<tr>
				<th colspan="3"><hr /></th>
			</tr>
			<tr>
				<td>4</td>
				<td><a href="FAQArticle.jsp">눈이 뻐근해요</a></td>
				<td>답변대기</td>
			</tr>
			<tr>
				<td>3</td>
				<td><a href="FAQArticle.jsp">졸려요</a></td>
				<td>답변완료</td>
			</tr>
			<tr>
				<td>2</td>
				<td><a href="FAQArticle.jsp">이메일 바꾸고싶어요</a></td>
				<td>답변완료</td>
			</tr>
			<tr>
				<td>1</td>
				<td><a href="FAQArticle.jsp">닉네임 변경 안돼요?</a></td>
				<td>답변완료</td>
			</tr>
		</table>
	</div>
	<br>
	<div>
		[페이징처리]
	</div>
</div><!-- end #rightBar -->

<!-- footer 넣을 자리	 -->

</body>
</html>