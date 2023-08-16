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
<title>문의관리 FAQ : Projectors</title>
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
		font-size: 11pt;
		float: right;
		width: 120px;
		margin-right: 11%;
		font-weight: bold;
		padding: 5px 10px
	}
	.table
	{
		text-align: center;
		margin: auto;
		width: 90%;
		margin-left: 0%;
	}
	
	.leftTd
	{
		text-align: left;
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
			window.location.href="faqInsertForm.action";
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
		<c:import url="adminLogo.jsp"></c:import>
	</div>
	<div id="menuBar">						<!-- 메뉴바( 메인 | 공지..) -->
		<c:import url="AdminBar.jsp"></c:import>
	</div>
	<!-- ============================================================= -->
		
	<div>
		<h1>문의관리</h1>
		<hr />
	</div>
	<br>


	<div id="leftBar">
		<div class="btnHeight">
			<a href="faqManagement.action">
				<button type="button" class="btn">FAQ 관리</button>
			</a>
		</div>
		<div class="btnHeight">
			<a href="q-list-4admin.action">
				<button type="button" class="btn">1:1 문의 관리</button>
			</a>
		</div>
	</div><!-- end #leftBar -->


	<div id="rightBar">
		<div>
			<h2>	FAQ 관리 </h2>
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
					<th colspan="2"><hr /></th>
				</tr>
				<tr>
					<th style="width: 10%;">번호</th>
					<th style="width: 90%;">제목</th>
				</tr>
				<tr>
					<th colspan="2"><hr /></th>
				</tr>
				<c:forEach var="faq" items="${lists }">
					<tr>
						<td>${faq.faqNo }</td>
						<td><a href="faqManagementArticle.action?faqNo=${faq.faqNo }">${faq.title }</a></td>
					</tr>
				</c:forEach>
				
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
