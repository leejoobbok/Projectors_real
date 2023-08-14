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
<title>FAQ : Projectors</title>
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
	
	#writeQnA, #returnList /* 문의하기 버튼, 목록으로 버튼 */
	{
		display: inline;
		padding: 4px 10px;
		font-size: 12px;
		font-weight: bold;
		border-radius: 10px;
	}
	
	.faqArticleTable
	{
		text-align: center;
		width: 90%;
	}

	/* ======================================================= */
	
	
	
</style>
<script type="text/javascript">
	$(function()
	{
		$("#returnList").click(function()  // faq 목록으로 돌아가기 버튼 클릭시 호출 
		{
			window.location.href="faq-list.action";
		});
		
		$("#writeQnA").click(function()  // 1:1 문의하기 버튼 클릭시 호출 
		{
			window.location.href="question-list.action";
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
		<a href="question-list.action?questionPinNo='UP1'">
			<button type="button" class="btn">1:1문의</button>
		</a>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>FAQ: 자주하는 질문</h2>
	</div>
	<div id="rightBar-left">
		<h3>찾으시는 질문이 없다면 .. →
			<button id="writeQnA" class="blackBtn">1:1 문의하기</button>
		</h3>
	</div>
	<br>

	<div>	
		<table class="faqArticleTable">
			<tr>
				<th colspan="3"><hr /></th>
			</tr>
			<tr>
				<th style="width: 10%;">번호</th>
				<th style="width: 20%;">제목</th>
				<th style="width: 70%;">내용</th>
			</tr>
			<c:set var="faq" value="${faqArticle}"/>
			<tr>
				<td>${faq.faqNo}</td>
				<td>${faq.title}</td>
				<td>${faq.content}</td>
			</tr>
		</table>
	</div>
	<br>
	<div style="text-align: center;">
		<button id="returnList">목록으로</button>
	</div>
</div><!-- end #rightBar -->

<!-- footer 넣을 자리	 -->

</body>
</html>