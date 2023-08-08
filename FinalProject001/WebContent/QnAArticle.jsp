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
		<h2> 1 : 1 문의: 상세 보기 </h2>
	</div>
	<br>
	
	<div>	
		<table class="table">
			<tr>
				<th colspan="3"><hr /></th>
			</tr>
			<tr>
				<th style="width: 5%;">번호</th>
				<th style="width: 65%;">제목</th>
				<th style="width: 20%;">작성일</th>
			</tr>
			<tr>
				<th colspan="3"><hr /></th>
			</tr>
			<c:forEach var="qArticle" items="${questionArticle}">
				<tr>
					<td style="width: 5%;">${qArticle.questionNo}</td>
					<td style="width: 65%;">${qArticle. }</td>
					<td style="width: 20%;">2023-07-25</td>
				</tr>
			</c:forEach>
			
			<!--  문의 상세: 번호, 제목, 날짜  정적구성 
			<tr>
				<td style="width: 5%;">3</td>
				<td style="width: 65%;">졸려요</td>
				<td style="width: 20%;">2023-07-25</td>
			</tr> -->
			<tr>
				<th colspan="3"><hr /></th>
			</tr>
			
			<!-- 내용   정적구성 
			<tr>
				<td colspan="3">작성한 내용이 여기에 보여집니다.
				가나다라마바사아자차카타파하아이우에오
				가나다라마바사아자차카타파하아이우에오
				가나다라마바사아자차카타파하아이우에오
				가나다라마바사아자차카타파하아이우에오
				가나다라마바사아자차카타파하아이우에오
				가나다라마바사아자차카타파하아이우에오
				가나다라마바사아자차카타파하아이우에오
				</td>
			</tr> -->
			<tr>
				<th colspan="4"><hr /></th>
			</tr>
		</table>
	</div>
	
	<div>
		<table class="table">
			<tr>
				<td>관리자</td>
				<td>답변일자</td>
			</tr>
			<tr style="background-color: lightgray;">
				<td>
					침대에 들어가서 주무시면 됩니다.<br>
					단, 할 일은 다 끝내셨겠죠?
				</td>
				<td>2023-07-27</td>
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