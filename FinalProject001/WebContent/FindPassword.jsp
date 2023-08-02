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
<title> 비밀번호 찾기 :Projectors </title>

<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

	*{font-size: 14pt;}
	
	#root
	{	
		padding-top: 160px;
		width: 1224px;				/* 가로길이 고정*/
		margin: auto;
	}
	
	#logoBox 					   /*로고 이미지*/
	{
		width: 249px; 			  /* 이미지 파일 가로길이 */
		margin: auto;
		
		padding-top: 20px;
		/* border: 1px solid; */
	}
	
	#wrapper{margin: 10px 300px;}
	/*==================================================*/
	
	#findPwBox /* 박스 영역 */
	{	
		width: 360px;
		height:140px;
		margin: 0px auto 4px;
		padding: 10px 30px 20px 50px;
		
		border: 1px solid;
		border-radius: 20px;
		
		font-weight: bold;
	}
	
	#findPwTitile	/* 비번 찾기 타이틀*/
	{	
		display:block;
		padding-top: 20px;
	}
	
	#pwFindBtn			/* 검색 버튼*/
	{	
		width: 60px;
		height: 30px;
		display: inline;
		background-color: black;
		color: white;
		border-radius: 12px;
		
		padding: 2px;
		margin-left: 6px;
		font-weight: bold;
		
	}
	
	input::placeholder      /*플레이스 홀더*/
	{
	  color: gray;
	  font-size: 10pt;
	  text-align: center;
	}
	
	#findIdInputBox		/* 검색값 입력 박스*/
	{
		display: inline;		
		width:280px
	}
	
	.msg  						/* 메세지 공통*/
	{
		font-size: 8pt;
	}
	
	#msg_false					/* 실패 메세지 */
	{
		color: red;
		/* display: none; */
	}
	#msg_true					/* 성공 메세지 */
	{
		color: green;
		/* display: none; */
	}
	#underMenu					/*하단 메뉴영역 (가입, 비번찾기..)*/
	{
		text-align: center;
		width: 400px;
		margin: auto;
	}
	#underMenu a			/* 하단메뉴 a태그 */
	{
		text-decoration: none;
		color: gray;
		font-size: 11pt;
		font-weight: bold;
		margin-left: 18px;
	}

	
</style>

</head>
<body>
	<div id="root">
		<!-- ========== 로고만 import ======================== -->
		<div id="logoBox">    		<!-- 로고 이미지 -->
			<a href="MainPage.jsp"><img src="images/tmp_logo.JPG"/></a>
		</div>	
		<!-- ================================================= -->
		
		<div id="wrapper">
		
			<div id="findPwBox"><!-- 박스 영역  -->
				
				<form action="">
					<span id="findPwTitile">비밀번호 찾기</span> 
					<input type="text" id="findIdInputBox" name="findIdInputBox"
					 placeholder="이메일 전체를 정확하게 입력해주세요."/><button id="pwFindBtn" type="submit">확인</button>
					<span id="msg_false" class="msg">해당 이메일로 가입된 계정이 없습니다.</span><br>
					<span id="msg_true" class="msg">해당 이메일로 임시 비밀번호를 전송했습니다.</span>
				</form>
				
			</div><!-- end of #findIdBox div -->
					
			<div id="underMenu">
				<a href="Login.jsp">로그인</a>
				<a href="CreateAccount.jsp">회원가입</a>
				<a href="FindId.jsp">아이디 찾기</a>
			</div>
		</div><!-- end of #wrapper div -->
	</div><!-- end of #root div -->
</body>
</html>


