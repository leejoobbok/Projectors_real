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
<title>1:1 문의 작성 : Projectors</title>
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
	{padding-left : 5%; }

	/* ====================== 좌측바 ========================= */

	#leftBar
	{
		float: left;
		width: 20%;
		height : 300px;
		text-align: center;
	}
	
	.btn
	{	
		width: 200px;
		padding: 4px;
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
		$("#insertQnA").click(function()
		{
			$("#insertForm").submit();
		});
		
		$("#returnList").click(function()
		{
			window.location.href="QnALists.jsp";
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
		<a href="FAQLists.jsp">
			<button type="button" class="btnHeight">FAQ</button>
		</a>
		<a href="QnALists.jsp">	
			<button type="button" class="btnHeight">1:1문의</button>
		</a>
	</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>	1 : 1 문의하기 </h2>
	</div>
	<br>
	
	<div>
	<form action="" id="insertForm">
		<table class="table">
			<tr>
				<th colspan="2"><hr /></th>
			</tr>
			<tr>
				<th style="width: 20%;">제목</th>
				<th style="width: 80%;">
					<input type="text" name="title" id="questionTitle" width="100%;" />
				</th>
			</tr>
			<tr>
				<th colspan="2"><hr /></th>
			</tr>
			<tr>
				<td colspan="2">
					<textarea name="content" id="questionContent" cols="30" rows="10"
					>내용 작성 어쩌구</textarea>
				</td>
			</tr>
			<tr>
				<th colspan="2"><hr /></th>
			</tr>
			<tr style="text-align: right;">
				<td colspan="2">
					<button id="insertQnA">작성하기</button>
					<a href="QnALists.jsp">
						<button id="returnList">취소하기</button>
					</a>
				</td>
			</tr>
		</table>
	</form>
	</div>

	<br>

</div><!-- end #rightBar -->

<!-- footer 넣을 자리	 -->

</body>
</html>

<!-- 아현// 예시용으로 작성했다가 일단 보류한거

	[ css ]
	
	#QnAQuestion /* 문의글 제목,본문 묶는 전체 영역*/
	{
		text-align: center;
	}
	#questionTitle /* 문의 제목*/
	{	
		padding: 4px;
		margin: 10px 0px;
		
	}

	[ html ]


<div id="QnAQuestion" name="QnAQuestion">
	<form action="QnALists.jsp" method="POST">
		제목 : 
		<input type="text" id="questionTitle" name="questionTitle" style="width:460px;"
			   placeholder="제목을 입력해주세요." />
		<br />
		<textarea name="" id="" cols="80" rows="10" placeholder=" 문의 내용을 입력해주세요. (최대 xx자)"></textarea>
		<br />
		<button type="submit">완료</button>
		<button type="button"><a href="FAQLists.jsp">취소</a></button>
	</form>
</div>


 -->