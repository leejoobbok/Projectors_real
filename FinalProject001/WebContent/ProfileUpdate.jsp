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
<title>프로필 입력/ 수정 페이지</title>
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
	/*==================================================*/

	#wrapper	 				/* 상단 import 제외 전체 영역 */
	{
		margin: 0px 400px;
		border: 1px solid;
		border-radius: 20px;
		
		padding: 40px;
	}  
	
	#profileUpdateBox 			/* 항목 작성,선택 하는 영역*/
	{
		padding: 20px 0px;
	}
	
	#smallTitle				/* 소제목(프로필 작성/수정)*/
	{
		font-size:14pt;
		font-weight:bold; 
		display: inline-block;
		margin-bottom: 10px;
	}
	
	/*======== 유효성 검사용 메세지 ===============*/
	#msg_false, #msg_true  		/* 메세지 공통*/
	{
		font-size: 8pt;
		/* margin-left: 150px; */
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
	.profileItem				/* 입력 항목 제목들(포지션,도구,지역..)*/
	{	
		display: inline-block;
		padding-bottom: 4px;
		font-weight: bold;
	}
	#ProfileUpdateBtns				/* 버튼 영역 */
	{
		padding: 10px 0px;
	}	
	#ProfileUpdateBtns 	button	/* 버튼  */
	{
		font-size: 12pt;
		font-weight: bold;
		
		background-color: black;
		color: white;
		border-radius: 14px;
		padding: 2px 8px;
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
		<!--================================================================  -->
		
		
		<div id="wrapper"> <!-- 상단 import 제외 하고 감싸는 div -->
			
			<h1 id="smallTitle">프로필 작성/수정</h1>
	
			<div id="profileUpdateBox">	<!-- 항목 작성 영역 -->
			
				<form action="ProfileView.jsp">
					
					<!-- 프로필 이미지<input type="file" value="profileImage"/>  별도 jsp 파일로 뺌 --> 
				
					<span class="profileItem">희망 포지션</span><br>
					<select>
							<option>=== 선택해주세요 ===</option>
							<option>프론트엔드</option>
							<option>백엔드</option>
							<option>풀스택</option>
							<option>퍼블리싱</option>
							<option>디자인</option>
							<option>기획</option>
					</select>
					<span id="msg_false"> 희망 포지션을 선택해주세요.</span>
					
					<br><br>
					
					<span class="profileItem">사용 도구</span>
					<span style="font-size:8pt;">(다중선택 가능)</span>
					<span id="msg_false"> 사용 가능한 도구를 1개 이상 선택해주세요!</span>
				
					<br>
					
				    <!-- ==================== 언어 ===================-->
					<label>Java<input type="checkbox" id="java" name="java"></label>
					<label>Javascript<input type="checkbox" id="js" name="js"></label>
					<label>HTML<input type="checkbox" id="html" name="html"></label>
					<label>CSS<input type="checkbox" id="css" name="css"></label>
					<label>Python<input type="checkbox" id="python" name="python"></label>
					<label>Go<input type="checkbox" id="go" name="go"></label>
					
					<hr>
					<!-- =============== IDE 등 개발 환경 ==================-->
					<label>Eclipse<input type="checkbox" id="eclipse" name="eclipse"></label>
					<label>VsCode<input type="checkbox" id="vscode" name="vscode"></label>
					
					<hr>
					<!-- =============== 프레임워크 / 라이브러리 ===========-->
					<label>Spring<input type="checkbox" id="spring" name="spring"></label>
					<label>React<input type="checkbox" id="react" name="react"></label>
					<hr>
					
					<br>
					<span class="profileItem">지역</span>
					<span id="msg_false"> 지역을 선택해주세요!</span>
					<br>
					<select>
						<option>=== 지역 선택 ===</option>
						<option>1</option>
						<option>2</option>
					</select>
					<select>
						<option>=== 상세 지역 선택===</option>
						<option>1-a</option>
						<option>1-b</option>
					</select>
					<br>
					<br>
					<span class="profileItem">진행 방식</span>
					<span id="msg_false"> 선호하는 방식을 선택해주세요!</span><br>

			  		<input type='radio' name='doType' value='1' />대면
			  		<input type='radio' name='doType' value='2' />비대면
					<br>
					
					<div id="ProfileUpdateBtns">
						<button type="submit">저장</button>
						<button type="button" onclick="location.href='MyPage.jsp'">취소</button>
					</div>
					
				</form>
			
			</div><!-- end of #profileUpdateBox div -->
			
		</div> <!-- end of #wrapper div -->
		
	</div><!-- end of #root div -->
</body>
</html>


