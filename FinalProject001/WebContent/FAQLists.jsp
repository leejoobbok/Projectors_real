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

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
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
	a:hover
	{
		text-decoration: underline;
	 	font-weight: bold;
	}
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
	button:hover
	{
		background-color: white;
		color: black;
		border: 1px solid black;
	}
	#writeQnA /* 문의하기 버튼 */
	{
		display: inline;
		padding: 4px 10px;
		font-size: 12px;
		font-weight: bold;
		border-radius: 10px;
	}
	
	.faqTable
	{
		text-align: center;
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
		<hr>
	</div>
		<!-- <div id="rightBar-right">
			<button id="writeQnA" class="blackBtn">1:1 문의하기</button>
		</div> 
		문의 버튼 글귀 바로 옆에있는게 좋을 것 같아서 옮겨놨어요(아현) 
		-->
	<br>

	<div>	
		<table class="faqTable">
        	<thead>
            	<tr>
                	<th style="witdh: 20%">번호</th>
                     <th style="witdh: 80%">제목</th>
                </tr>
            </thead>
            <tbody>
                  <c:forEach var="faq" items="${faqList}">
              	  <tr>
            		  <td>${faq.faqNo}</td>
            		  <td><a href="faq-article.action?faqNo=${faq.faqNo}">${faq.title}</a></td>
              	  </tr>
                  </c:forEach>
             </tbody>
	     </table>
	</div>
	
	<div>
		<span>[페이징처리]</span>
	</div>
</div><!-- end #rightBar -->

<!-- footer 넣을 자리	 -->

</body>
</html>


<!--  정적 구성 
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
				<td><a href="FAQArticle.jsp">지원한 내역이 안보여요</a></td>
			</tr>
			<tr>
				<td>9</td>
				<td><a href="FAQArticle.jsp">상대방에게 쪽지를 보내고 싶어요</a></td>
			</tr>
			<tr>
				<td>8</td>
				<td><a href="FAQArticle.jsp">프로젝트를 삭제하고 싶어요</a></td>
			</tr>
			<tr>
				<td>7</td>
				<td><a href="FAQArticle.jsp">프로젝트 나가기 하고 싶어요</a></td>
			</tr>
		</table> -->