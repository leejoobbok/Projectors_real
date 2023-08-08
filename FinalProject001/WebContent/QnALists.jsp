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

	.btn
	{
		width: 150px;
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
	td{text-align: center;}
	/* ======================================================= */
	
	
	
</style>
<script type="text/javascript">
	$(function()
	{
		$("#WriteQnA").click(function()
		{
			/* window.location.href="QnAQInsert.jsp"; */
			window.location.href="question-insert-form.action";
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
			<button type="button" class="btn">FAQ</button>
		</a>	
		<a href="QnALists.jsp">
			<button type="button" class="btn">1:1문의</button>
		</a>
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
				<th colspan="4"><hr /></th>
			</tr>
			<tr>
				<th style="width: 15%;">번호</th>
				<th style="width: 55%;">제목</th>
				<th style="width: 20%;">작성일</th>
				<th style="width: 10%;">답변여부</th>
			</tr>
			<tr>
				<th colspan="4"><hr /></th>
			</tr>
			<c:forEach var="question" items="${questionList}">
				<tr>
					<td>${question.questionNo}</td> 			<!-- 문의 번호 -->
					<td><a href="question-article.action">${question.questionTitle}</a></td> 		<!-- 제목 -->
					<td>${question.qCreatedDate}</td> 			<!-- 작성일 -->
					<td>${question.isReply}</td> 				<!-- 답변여부 -->
				</tr>	
			</c:forEach>
			<!--  정적 구성 
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
			</tr> -->
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