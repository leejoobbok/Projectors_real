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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

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
		fon
	}
	#menuBar					/*메뉴바(메인|공지..)*/
	{
		text-align: center;
		position :sticky;  
		padding-top: 32px;
	    top: -32px;
	}
		
	
	#completeMent
	{
		text-align: center;
		font-size: 50px;
	}
	
	.btnContainer 
	{
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  height: 50vh;
	}
	
	.buttonToOtherPage 
	{
	  padding: 10px 20px;
	  background-color: #007bff;
	  color: #fff;
	  border: none;
	  border-radius: 4px;
	  cursor: pointer;
	  text-decoration: none;
	  text-align: center;
	  margin: 10px;
	}
	
	.buttonToOtherPage a 
	{
	  text-decoration: none;
	  color: #fff;
	}
	
</style>

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
		
		
	
	
	<div id="mentShow">
		<p id="completeMent">
		<br /><br />
			지원이 완료되었습니다.
		</p>

	</div>
	
	<div class="btnContainer">
		<button type="button" class="buttonToOtherPage">
			<a href="MainPage.jsp">
				메인 페이지로
			</a>
		</button>
		<button type="button" class=" buttonToOtherPage"  >
			<a href="MyApply.jsp">
				나의 지원 이력 페이지로
			</a>
		</button>
	</div>

	</div>
</body>
</html>