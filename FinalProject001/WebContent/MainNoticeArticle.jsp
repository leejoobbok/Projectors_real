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
	
	#mainNoticeInsert
	{
		  display: flex;
	    flex-direction: column;
	    justify-content: center;
	    align-items: center;
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
	
	#pageTitle
	{
		 display: flex;
	    flex-direction: column;
	    justify-content: center;
	    align-items: center;
	}
	
	
	#categoryTitle
	{	
		 justify-content: center;
		 display: table-cell;
		 width: 60%;
	     height: 80%;
	     margin-bottom: 1em;
		 border: 2px solid black; /* 테두리 스타일 설정 */
	     text-align: center;
	     font-size: 30pt;
	}
		
	#noticeInsertTitle
	{	 
		display: flex;
	    flex-direction: column;
	    justify-content: center;
	    align-items: center;
	
	}
	
	#noticeTitleInsert
	{
		
		flex-direction: column;
		justify-content: center;
		align-items: center;
		text-align: left;
		padding-left: 20%;
		padding-right: 20%;
		padding-bottom: 2%;
		
	}
	
	
	#noticeTitle
	{
		font-weight:bold;
		font-size: 20pt;
		
	}
	
	#noticeContentInsert
	{
		text-align: center;
	}
	
	
	
	.btnContainer 
	{
	  display: flex;
	  align-items: center;
	  justify-content: right;
	  padding-left: 20%;
	  padding-right: 20%;
	  height: 30vh;
	}
	
	.buttonToLists, .buttonToUpate
	{
	  padding: 10px 20px;
	  background-color: #bf5fe8;
	  color: #fff;
	  border: none;
	  border-radius: 4px;
	  cursor: pointer;
	  text-decoration: none;
	  text-align: center;
	  margin: 10px;
	}
</style>
<script type="text/javascript">
	
	function toLists()
	{
		window.location.href="MainNoticeLists.jsp";
	}
	
	function toUpdate()
	{
		window.location.href="MainNoticeUpdate.jsp"
	}

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
<div id="pageAllBox">
		<div id="pageTitle">
			<p id="categoryTitle">공지글</p>
		</div>



<div id="MainNoticeInsert" name="MainNoticeInsert">
<form action="mainNoticeArticle.jsp">
	<div id="noticeTitleInsert" >
		<span id="noticeTitle">
			제목  : 
		</span>
			<span id="noticeTitleInput" style="width: 55%; height: 30pt; font-size: 20pt;"/>
				제목은 제목 제목은 제목 제목은 제목 제목은 제목
			</span>
	</div>
	<div class="adminInfo" style="text-align: right; font-weight: bold;
	padding-left: 20%; padding-right: 20%" >
		<hr />
	</div>
	
	<div class="adminInfo" style="text-align: right; font-weight: bold;
	padding-left: 20%; padding-right: 20%" >

	 	공지번호: 997512 | 작성자: 관리자159753  | 작성일: 2023-08-02
	</div>
	<div id="noticeContentInsert">
		<p style="font-weight: bold; text-align:left; font-size: 20pt;
		padding-left: 20%; padding-right: 20%; padding-bottom: 0%;" >
			내용
		</p>
		<textarea name="noticeContent" id="noticeContent" cols="70" rows="20"
		placeholder="내용 입력" style="font-size:15pt;
		width: 60%;" readonly="readonly">
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지 공지는 공지
		</textarea>
		
		
	</div>

	<br />
	<div class="btnContainer">
		<button type="button" class="buttonToUpdate" style="font-size: 20px;"
		onclick="toUpdate()">
			수정
		</button>
		<button type="button" class="buttonToLists" style="font-size: 20px;"
		onclick="toLists()">
			목록으로
		</button>
	</div>
	
</form>
</div>
</div>

</body>
</html>