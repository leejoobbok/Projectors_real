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
<title>특정 공지 글 - 이준복</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style>

	*
	{
		font-size: 12pt;
		font-weight: bold;
	}

  .center-div 
  {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh; /* 화면 높이의 100% */
  }
  
  
  #modifyCancleBtn
  {
  	display: flex;
    justify-content: flex-end;
  }
  
  
  	#logoBox 					/*import 로고 이미지*/
	{
		text-align: center;
		height: 100px;
	}
  
</style>

</head>
<body>
		<div id="logoBox">    		<!-- 로고 이미지 -->
			<a href="MainPage.jsp"><img src="images/tmp_logo.JPG"/></a>
		</div>	


<%-- 	<c:import url="MainLogo.jsp"></c:import> --%>
	<c:import url="UpperBar.jsp"></c:import>
	<hr />
	<c:import url="Bar.jsp"></c:import>
<hr />
<br />

<div id="mainNoticeArticle" name="mainNoticeArticle" class='center-div '>
<form action="MainNoticeUpdate.jsp">
	<div id="noticeTitle">
		<h2>제목 : </h2>
		<br />
	</div>
	<div>
		<h4>작성자 | 작성 일시</h4>
		<br />
	</div>
	<textarea name="mainNoticeContent" id="mainNoticeContent" cols="70" rows="40"
	disabled="disabled">
		공지 내용~~~~~~
	</textarea>
		
	<br />
	
	<div id="modifyCancleBtn">
		<button type="submit" >수정하기</button>
		<button type="button" ><a href="MainNoticeLists.jsp">취소</a></button>
	</div>
</form>
</div>



</body>
</html>