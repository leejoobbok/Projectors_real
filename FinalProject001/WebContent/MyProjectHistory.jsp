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
<style type="text/css">

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
	
	
	.btnContainer 
	{
	  display: flex;
	  align-items: flex-start;
	  justify-content: center;
 	  height: 30vh;
      flex-direction: column; /* 수직으로 정렬 */
	}
	
	.moveProject
	{
	  padding: 10px 20px;
	  background-color: #f0f0f0;
	  color: #fff;
	  border: 1px solid black;
	  border-radius: 4px;
	  cursor: pointer;
	  text-decoration: none;
	  text-align: center;
	  margin: 5px;
	}
	
	
  #pageTitle 
  {
    width:100%;
    text-align: left;
    margin: 10px auto;
    padding-left: 0%; 
    border-radius: 5px;
  }
  
  .buttonText 
  {
 	margin-left: 100px; /* 원하는 간격으로 조정 */
  }
	
</style>

<script type="text/javascript">
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
		<!-- =========================================================== -->



<br />
<br />
<div id="pageTitle">
<h1>나의 프로젝트</h1>
</div>
<hr />

<div class="btnContainer">
	<button type="button" class="moveProject">
		<a href="MyProjectHistory.jsp">
			진행 중인 프로젝트
		</a>
	</button>
	<button type="button" class="moveProject">
		<a href="MyPastProjectHistory.jsp">
			과거 프로젝트 이력
		</a>
	</button>
	
	<span class="buttonText">
		버튼 옆 글자 테스트
	</span>
</div>

<!-- 커밋  -->


<div>
	안녕
</div>

<div>
<h2>현재 진행 중인 프로젝트</h2>
<br />
<a href="TeamSpace.jsp">프로젝트 번호 | 프로젝트 명| 나의 포지션 | 프로제트 기간 23.07.30 ~ 23.09.09 |  <a href="">평가</a> | <a href="">로그</a>
</div>


<hr />

<div>
 ※ 진행 중인 프로젝트가 없는 경우 "진행 중인 프로젝트다 없습니다." 출력
</div>

</body>
</html>