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
<title>1:1 문의 작성하기 : Projectors</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

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
		$("#returnList").click(function()
		{
			window.location.href="question-list.action?pinNo=UP2"; //정적 구성 
		});
	});
</script>
</head>
<body>
	 	<!-- ========== 공통 상단 영역( 메뉴바까지) ======================== -->
		
		<div class="header">
	
		<!-- header -->
		<c:choose>
		<c:when test="${not empty pinNo}">
			<div class="header-member">
				<c:import url="memberBar.jsp"></c:import>
			</div>
		</c:when>
		<c:otherwise>
			<div class="header-member">
				<c:import url="GuestBar.jsp"></c:import>
			</div>
		</c:otherwise>
		</c:choose>
		
		<div class="header-logo">
			<a href="projectorsmain.action"><img style="width: 530px;" src="<%=cp %>/images/NEXTART_LOGO.png"/></a>
		</div>	
		
		</div>
		
		<div class="header-menu">
			<c:import url="menuBar.jsp"></c:import>
		</div>
		<!-- ============================================================= -->
		
<div>
<h1>FAQ / 문의</h1>
<hr />
</div>
<br />


<div id="leftBar">
	<div class="btnHeight">
		<a href="faq-list.action">
			<button type="button" class="btn">FAQ</button>
		</a>
	</div>
	<div class="btnHeight">
		<a href="question-list.action?pinNo=UP2"> <!-- 정적 구성 -->
			<button type="button" class="btn">1:1문의</button>
		</a>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2> 1 : 1 문의 상세 </h2>
	</div>
	<br>
	
	<div>	
		<table class="table">
			<tr>
				<th colspan="4"><hr /></th>
			</tr>
			<tr>
				<th style="width: 10%;">번호</th>
				<th style="width: 30%;">제목</th>
				<th style="width: 40%;">내용</th>
				<th style="width: 20%;">작성일</th>
			</tr>
			<tr>
				<th colspan="4"><hr /></th>
			</tr>
			<c:set var="qArticle" value="${questionArticle}" />
	        <tr>
	            <td>${qArticle.questionNo}</td>
	            <td>${qArticle.questionTitle}</td>
	            <td>${qArticle.questionContent}</td>
	            <td>${qArticle.qCreatedDate}</td>
	        </tr>
			<tr>
				<th colspan="4"><hr /></th>
			</tr>
		</table>
	</div>
	
	<div>
		<table class="table">
			<tr>
				<th>내용</th>
				<th>답변일시</th>
			</tr>
			<c:set var="aArticle" value="${answerArticle}"/>
			<tr style="background-color: lightgray;">
				<td>${aArticle.answerContent}</td>
				<td>${aArticle.answerCreatedDate}</td>
			</tr>			
		</table>
	</div>
	<br>
	
	<div style="text-align: center;">
		<button id="returnList">목록으로</button>
	</div>
	<br>

</div><!-- end #rightBar -->

<!-- footer 넣을 자리	 -->

</body>
</html>