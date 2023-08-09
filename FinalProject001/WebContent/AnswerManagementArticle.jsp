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
	
	.WriteBtn
	{
		font-size: small;
		float: right;
		width: 80px;
		margin-right: 11%;
		right: 0px;
		bottom: 0px;
	}

	.table
	{
		text-align: center;
		width: 90%;
	}

	/* ======================================================= */
	
	
	#returnList
	{
		font-size: medium;
		background-color: #CCCCCC;
		border: none;
		width: 120px;
		border-radius: 10px;
		padding: 5px 20px
	}
	
	.reply
	{
		margin-left: 30px;
		font-size: 11pt;
	}
	
</style>
<script type="text/javascript">
	$(function()
	{
		$("#returnList").click(function()
		{
			window.location.href="AnswerManagement.jsp";
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
				<h2> 1:1 문의 상세</h2>
			</div>
			<br>
			<div>	
				<table class="table">
					<tr>
						<th>번호</th>
						<th>작성일</th>
						<th>제목</th>
						<th>내용</th>
						<th>작성자</th>
					</tr>
				    <tr>
				        <td>${qArticleForAdmin.questionNo}</td>
				        <td>${qArticleForAdmin.qCreatedDate}</td>
				        <td>${qArticleForAdmin.questionTitle}</td>
				        <td>${qArticleForAdmin.questionContent}</td>
				        <td>${qArticleForAdmin.nickName}</td>
				    </tr>
				</table>
			</div>
			<br>
			
			
				<!-- <div class="wrapper">
				
					<h4>댓글<span>(1)</span></h4>
					<hr style="margin-left: 0px; width: 90%">
					
					<div>
						<span style="font-weight: bold;"><img src="images/adminPic.png" style="width:20px">&nbsp; 관리자</span>
					</div>
					
					<div>
					<span class="reply">안녕하세요. 지원서가 보이지않아 당황스러우셨겠어요.</span><br>
					<span class="reply">사유는 아래와 같을 수 있습니다.</span><br>
					<span class="reply">1. 모집자가 게시물을 삭제한 경우</span><br>
					<span class="reply">2. ....</span><br>
					<span class="reply">감사합니다.</span><br>
					</div>
					<hr style="margin-left: 0px; width: 90%">
					
					<form action="" method="get">
						<textarea  style="margin-left: 30px;" cols="100" rows="5" id="comment" name="comment" placeholder="문의에 답변을 남겨주세요."></textarea>
						<button type="submit" class="WriteBtn">댓글 등록</button>
					</form>
					<br>
				</div> -->
			
			
			<div style="text-align: center;">
				<br>
				<button id="returnList">목록으로</button>
			</div>
		
		</div><!-- end #rightBar -->

<!-- footer 넣을 자리	 -->

</body>
</html>