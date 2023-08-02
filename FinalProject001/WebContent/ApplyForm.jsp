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
  
  #profileView
  {
  	width:100%;
  	text-align: center;
  	display: flex;
    justify-content: center;
    align-items: center;
  }
  
 #buttonContainer 
 {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  #submitBtn, #cancleBtn
  {
  	font-size : 30px;
  	margin-left: 10px; 
  	margin-right: 10px;
  	
  	
  }
  
	
	#detailsDiv 
	{
	    display: flex;
	    flex-direction: column;
	    justify-content: center;
	    align-items: center;
 	 }
 	 
	#applyContent
	{
		width: 80%;
		height: 60;
		margin-bottom: 50px;
	}
	
</style>

</head>
<body>
<div id="root">

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

	
		
<div id="pageAllBox">

		<div id="pageTitle">
			<p id="categoryTitle">지원서</p>
		</div>

		<div>
		<form action="ApplyComplete.jsp">
			<div id="profileView">
				<c:import url="ProfileView.jsp"></c:import>
			</div>
				<a href="ProfileUpdate.jsp" style="text-align: right;">
				프로필 수정하러 가기
				</a>
			<hr />
				<p style="font-size:25pt;">지원 포지션 
					<input type="text" disabled="disabled" value="프론트엔드" style="font-size:25pt;
					text-align: center; color:skyblue"/>
				</p>
			</div>
			<p style="text-align: center; font-size: 30pt;">상세 내용 입력<br /></p>
			<div id="detailsDiv">
				
				<textarea cols="100" rows="30" id="applyContent" name="applyContent"></textarea>
			</div>

			<div id="buttonContainer">
				<button type="submit" id="submitBtn"><a href="ApplyComplete.jsp">지원하기</a></button>
				
				<button type="button" id="cancleBtn"><a href="PostLists.jsp">취소하기</a></button>	
			</div>
			<br />
		</form>
	</div>
	
</div>
</div>
</body>
</html>