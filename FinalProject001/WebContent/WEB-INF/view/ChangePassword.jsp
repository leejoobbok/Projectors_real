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
<title>비밀번호 변경</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

	#changePwBox	 /* 전체 영역 */
	{
		border: 1px solid;
		border-radius: 20px;
		padding: 10px;
		
		width: 500px;
		height:400px;
	}
	
	#changePwBox span /* 항목 글씨부분 */
	{	
		display: inline-block;
		width: 160px;
	}
	

	
	#changePwBtn		/* 변경 버튼 */
	{
		font-weight: bold;
		border-radius: 10px;
		padding: 4px;
		margin: 10px 0px;
		
		background-color: black;
		color: white;
	}
	
	#msg_false, #msg_true  		/* 메세지 공통*/
	{
		font-size: 8pt;
		margin-left: 168px;
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
</style>

</head>
<body>
	<div id="root">

		<div id="changePwBox">
			<h3>비밀번호 변경</h3>
			
			<form action="">
				<span>현재 비밀번호 </span> 
				<input type="password" id="password" name="password"  />
				<br>
				<p id="msg_false">비밀번호가 틀렸습니다.</p>
				<p id="msg_true">비밀번호 확인.</p>
				
				<span>변경할 비밀번호 </span> 
				<input type="password" id="newPassword" name="newPassword" />
				<br>
				<p id="msg_false">8~16자 영문 숫자 혼합으로 만들어주세요!</p>
				<p id="msg_true">사용 가능한 비밀번호 입니다.</p>
				
				<span>변경할 비밀번호 확인</span> 
				<input type="password" id="newPasswordChk" name="newPasswordChk" />
				<br>
				<p id="msg_false">위에 입력한 비밀번호와 다릅니다. 다시 확인해주세요</p>
				<p id="msg_true">확인되었습니다.</p>
				
				<button type=button onclick="alert('비밀번호 변경 완료')" id="changePwBtn">변경하기</button>
			</form>
			<!-- 비밀번호 변경 완료 후 재로그인 해야 함 -->
		
		</div><!-- end of #changePwBox div -->

	</div><!-- end of #root div -->
</body>
	
	
</html>