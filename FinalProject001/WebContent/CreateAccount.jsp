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
<title>회원가입 페이지</title>

<style type="text/css">
	
	
	*
	{
		font-size: 12pt;
		font-weight: bold;
	}
	#root{padding-top: 100px}
	
	#logoBox 					/*import 로고 이미지*/
	{
		text-align: center;
		height: 100px;
	}
	
	#wrapper					/* 가입 영역 박스 */
	{	
		width: 540px;
		margin: 10px auto;
		border: 1px solid;
		border-radius: 20px;
		padding: 30px 30px 30px 50px;
	}
	/*==================================================*/
	
	#joinTitile 			/* 타이틀 */
	{	
		font-size: 16pt;
		margin-left: 680px;
	}
	
	#joinBox span		/* 항목 글씨길이 고정*/
	{	
		display: inline-block;
		width: 140px;
		margin: 2px;
	}
	button						/* 버튼*/
	{
		background-color: black;
		color: white;
		border-radius: 14px;
		
		font-size: 10pt;
	}
	input::placeholder  		/*플레이스 홀더*/
	{
	  color: gray;
	  font-size: 10pt;
	  text-align: center;
	}
	
	#msg_false, #msg_true  		/* 메세지 공통*/
	{
		font-size: 8pt;
		margin-left: 150px;
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
	#sendPinBtn					/*인증번호 발송 버튼*/
	{
		margin-left: 150px;
		/* display: none; */
	}	
	a:link,a:visited,a:hover,a:active /*하이퍼링크 스타일 전체제거*/
	{ 
		text-decoration: none;
	  	color: white;
	}	
	
	#sendJoinBtn  /*가입하기 버튼 (유효성 검사 후 전송)*/
	{	
		display: block;
		width: 180px;
		font-size: 16pt;
		margin: 30px 200px 0px 180px;
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
		
		
		<h2 id="joinTitile">회원가입</h2>
		
		<div id="wrapper">
			<div id="joinBox">
				<form action="AfterCreateAccount.jsp">
					<span>이메일(ID)</span>
					<input type="text" id="id" name="id" placeholder="이메일 입력(ex.abd1223@test.com)"/>
					<button type="button">아이디 확인</button><br>
					
					<p id="msg_false">이미 사용중이거나 사용 불가한 아이디입니다.</p>
					<p id="msg_true">사용 가능한 아이디입니다. 인증번호 발송 버튼을 눌러 인증을 완료해주세요.</p>
					
					<button type="button" id="sendPinBtn">인증번호 발송</button><br>
					<p id="msg_true">인증번호가 발송되었습니다. 작성하신 이메일 계정을 통해 확인해주세요.</p>
					
					<span>인증번호 입력</span>
					<input type="text" id="emailPinNo" name="emailPinNo" />
					<button type="button">인증번호 확인</button><br>
					
					<p id="msg_false">인증번호가 틀렸습니다. 정확하게 입력해주세요.</p>
					<p id="msg_true">이메일 인증이 완료되었습니다.</p>
					
					
					<span>비밀번호 </span>
					<input type="text" id="password" name="password" placeholder="최소 8자 최대 16자, 영문 숫자 조합"/>
					<button type="button">비밀번호 확인</button><br>
					<p id="msg_false">잘못된 비밀번호입니다. 8~16자 영문 숫자 조합으로 입력해주세요.</p>
					<p id="msg_true">사용가능한 비밀번호입니다. 아래에도 동일하게 입력해주세요.</p>
					
					
					<span>비밀번호 재입력</span>
					<input type="text" id="password" name="password" placeholder="비밀번호를 동일하게 입력해주세요."/>
					<button type="button">재입력 확인</button><br>
					
					<p id="msg_false"> 위의 비밀번호와 같지 않습니다. 동일하게 입력해주세요.</p>
					<p id="msg_true">비밀번호 확인이 완료되었습니다.</p>
					
					<span>닉네임</span>
					<input type="text" id="nickName" name="nickName"placeholder="최소 2글자, 최대 4글자" />
					<button type="button">중복 확인</button><br>
					
					<p id="msg_false">이미 사용중인 닉네임입니다.</p>
					<p id="msg_true">사용 가능한 닉네임입니다.</p>
					
					<!-- == 가입하기 전송 / 유효성 ok → 가입완료 페이지로 ==== -->
					<button type="submit" id="sendJoinBtn">
					<a href="AfterCreateAccount.jsp">가입하기</a>
					</button>
					
				</form>	
			</div><!-- end of #joinBox div -->
			
		</div><!-- end of #wrapper div -->
		
	</div><!-- end of #root div -->
</body>
</html>


