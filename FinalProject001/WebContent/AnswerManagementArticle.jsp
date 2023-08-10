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
	
	#answerTitle {font-size: 14pt; font-weight: bold;}
	
	.btn		/* 버튼 클래스 공통 */
	{
		background-color: black;
		color: white;
		font-weight: bold;
		font-size: 11pt;
		padding: 4px 10px;
		border-radius: 12px;
	}
	
	#modifyBtn 						/* 수정 버튼 */
	{
		background-color: #fadc6e;
		color: black;
	}
	#deleteBtn					/* 삭제 버튼*/
	{
		background-color: #fa6e6e;
		color: black;
	}
	
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
	.replydate				/* 답변 일시*/
	{
		font-size: 9pt;
		color: gray;
		padding-left: 30px;
	}
</style>

<script type="text/javascript">
	$(function()
	{	
		$("#returnList").click(function()
		{
			window.location.href="q-list-4admin.action";
		});
		
		$("#writeQnA").click(function()
		{
			window.location.href="answer-insert-form.action";
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
				<h2> 1:1 문의 상세 </h2>
			</div>
			<hr>
			
			<div>	<!--  ============사용자 문의 상세 내용 출력부분 =========== -->
				<table class="table">
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>제목</th>
						
					</tr>
				    <tr>
				        <td>${qArticleForAdmin.questionNo}</td>
				        <td>${qArticleForAdmin.nickName}</td>
				        <td>${qArticleForAdmin.qCreatedDate}</td>
				        <td>${qArticleForAdmin.questionTitle}</td>
				    </tr>
				    <tr>
				    	 <td colspan="4">${qArticleForAdmin.questionContent}</td>
				    </tr>
				</table>
			</div>
			<hr>
			
			
			<div class="wrapper"> <!--  ============관리자 답변 관련 출력부분 =========== -->
			
				<span id="answerTitle">등록된 답변</span>
				<c:choose>					<%-- 등록된 답변이 있는 경우 수정/삭제 버튼 출력 --%>
					<c:when test="${not empty aArticleForAdmin.answerContent}">
							<button type="submit" id="modifyBtn" class=" btn">수정</button>
							<button type="submit" id="deleteBtn" class=" btn">삭제</button>
					</c:when>
					<c:otherwise>
						<span> 작성하기 </span>
					</c:otherwise>
				</c:choose>
				<hr style="margin-left: 0px; width: 90%">
				
				
				<div>
					<span style="font-weight: bold;"><img src="images/adminPic.png" style="width:20px">관리자</span>
				</div>
				
				<div>
				    <c:choose>
				        <c:when test="${not empty aArticleForAdmin.answerContent}">
				            <p class="reply">${aArticleForAdmin.answerContent}</p>
				            <span class="replydate">답변일시: ${aArticleForAdmin.answerCreatedDate}</span>
				        </c:when>
				        <c:otherwise>
				            <!-- answerContent 가 null 이면, 이 부분 출력( 아무것도 나오지 않음 )  -->
				        </c:otherwise>
				    </c:choose>
				</div>
				
				<hr style="margin-left: 0px; width: 90%">
				
				<c:if test="${empty aArticleForAdmin.answerContent}">
				    <form action="" method="get">
				        <textarea style="margin-left: 30px;" cols="100" rows="5" id="answerContent" name="answerContent" placeholder="문의에 답변을 남겨주세요."></textarea>
				        <button type="submit" class="WriteBtn">댓글 등록</button>
				    </form>
				</c:if>
				
				<br>
			</div>
			
			
			<div style="text-align: center;">
				<br>
				<button id="returnList">목록으로</button>
			</div>
		
		</div><!-- end #rightBar -->

<!-- footer 넣을 자리	 -->

</body>
</html>