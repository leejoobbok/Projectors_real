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
	}

	.table
	{
		text-align: auto;
		width: 90%;
	}

	/* ======================================================= */
	
	
	
</style>
<script type="text/javascript">
	$(function()
	{
		$("#returnList").click(function()
		{
			window.location.href="FAQLists.jsp";
		});
		
		$("#writeQnA").click(function()
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
			<a href="QnAQInsert.jsp">1:1문의</a>
		</button>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>	FAQ 자주하는 질문</h2>
	</div>
	<br>

	<div>	
		<table class="table">
			<tr>
				<th colspan="2"><hr /></th>
			</tr>
			<tr>
				<th style="width: 10%;">번호</th>
				<th style="width: 90%;">내용</th>
			</tr>
			<tr>
				<td>10</td>
				<td>지원한 내역이 안보여요</td>
			</tr>
			<tr>
				<td colspan="2">
					<div>
					<br>
					여러분 많이 당황하셨죠<br>
					네... 저희도 많이 당황했습니다. 멋슥^^<br>
					하지만...! 이건 바로 프로젝트 올린 놈들이 삭튀한 것입니다!!!!!<br>
					그르니까... 사람을 잘~ 만나야한다는 이 말입니다. 후후후후
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: right;">
					<button id="writeQnA" class="blackBtn">1:1문의하러가기</button>
				</td>
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