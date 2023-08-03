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
<title>지원서 샘플</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">

	*
	{
		font-size: 12pt;
		font-weight: bold;
	}
	#root
	{
		padding-top: 100px;
	}


  #pageTitle 
  {
    width:50%;
    text-align: center;
    margin: 10px auto;
    padding: 30px; 
    border: 2px solid #333;
    border-radius: 5px;
  }
  #categoryTitle
   {
    font-size: 24px;
    margin: 0;
    color: #333;
  }
	
  #upperBarBox, #logoBox, #menuBar {
    padding: 10px;
    background-color: #f2f2f2;
  }
  #logoBox img {
    max-width: 100px;
    height: auto;
  }

  #pageAllBox
  {
  	
  	width: 90%;
  	border: 1px solid black;
  	padding-top: 5%;
  	padding-botton: 5%;
  	padding-left: 5%;
  	padding-right: 5%;
  }

 table
 {
 	witdh: 60%;
 	border: 1px solid black;
 	display: flex;
 	justify-content: center;
 	align-content: center; 	
 }
 
 th
 {
 	border-style: outset;
 }
 
 tr, td
 {
 	border-style: groove;
 }
 
 #buttonContainer
 {
 	display: flex;
 	padding-top: 10px;
 	justify-content:center;
 	align-content: center;
 }
 
 .btn
 {
 	margin-left: 5px;
 	margin-right: 5px;
 }
	
</style>

<script type="text/javascript">

	function toMyPostLists()
	{
		window.location.href="MyPostLists.jsp";	
	}

	function rejectApply()
	{
		window.location.href="MyPostLists.jsp";	
	}
	
	function agreeApply()
	{
		window.location.href="MyPostLists.jsp";	
	}
	
	function rateRegist()
	{
		alert("평가가 제출되었습니다.");
		window.close();
	}
	
	function rateCancle()
	{
		
		window.close();
	}
	
</script>


</head>
<body>
<div id="root">
<%-- 
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
		<!-- =========================================================== -->

 --%>
		
<div id="pageAllBox">

		<div id="pageTitle">
			<p id="categoryTitle">주차장 시스템 프로젝트 - 팀원 평가</p>
		</div>
		
		<form action="">
		<div id="rateOneMember">
			<table>
				<tr>
					<th>멤버 번호</th>
					<th>닉네임</th>
					<th>평가지</th>
				</tr>
				<tr>
					<td>1524511</td>
					<td>단호박사</td>
					<td>
						긍정<input type="radio" name="rate1" value="good" disabled="disabled"/>
						부정<input type="radio" name="rate1" value="bad" checked="checked" disabled="disabled"/>
					</td>
				</tr>
				<tr>
					<td>7464511</td>
					<td>단호석사</td>
					<td>
						긍정<input type="radio" name="rate2" value="good"/>
						부정<input type="radio" name="rate2" value="bad"/>
					</td>
				</tr>
				<tr>
					<td>7892451</td>
					<td>단호학사</td>
					<td>
						긍정<input type="radio" name="rate3" value="good"/>
						부정<input type="radio" name="rate3" value="bad"/>
					</td>
				</tr>
				<tr>
					<td>1614511</td>
					<td>단호고등</td>
					<td>
						긍정<input type="radio" name="rate4" value="good"/>
						부정<input type="radio" name="rate5" value="bad"/>
					</td>
				</tr>
				<tr>
					<td>9524511</td>
					<td>단호중등</td>
					<td>
						긍정<input type="radio" name="rate6" value="good"/>
						부정<input type="radio" name="rate6" value="bad"/>
					</td>
				</tr>
				
			</table>
			
			<div id="buttonContainer">
			<button type="button" class="btn" id="regist" 
			onclick="rateRegist()">
				등록
			</button>
			<button type="button"  class="btn" id="cancle"
			onclick="rateCancle()">
				취소
			</buton>
			
		</div>
			
		</div>

	
</div>
</body>
</html>