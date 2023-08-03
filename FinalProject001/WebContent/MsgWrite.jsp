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

<title> 쪽지 쓰기 : Projectors</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">
	
	a
	{	text-decoration: none;
		color: white;
	}

	#outerBox	/*전체 박스 영역*/
	{
		width: 800px;
		height: 600px;
		border: solid 1px;
		border-radius: 14px;
		margin: auto;
		margin-top: 10px;
	}
	#innerBox	/* 내부 박스 영역*/
	{
		padding: 20px;
		width: 760px; /* float 적용을 위한 부모요소 길이 지정*/
	}
	
	#writeMsgBox	/* 쪽지 쓰는 부분 박스 */
	{
		border: solid 1px;
		border-radius: 14px;
		margin: 10px;
		padding: 20px;
	}
	#titleBox	/* 제목 영역 */
	{
		text-align: center;
	}
	
	#title	/*제목 (나의 쪽지함)*/
	{
		font-size: 20px;
		font-weight: bold;
		vertical-align: 10px; /* 글씨 베이스라인 높이*/
	}
	
	#msgContentArea				/* 보내는 쪽지 작성 영역*/
	{
		font-size: 12pt;
		
		padding: 30px;
		border: solid 1px;
		border-radius: 14px;
	}
	
	#btnArea				/* 상단 버튼 영역(받은쪽지/보낸쪽지)*/
	{
		text-align: center;
		padding: 10px 0px 10px 0px;
	}

	.btn						/*버튼 전체 */
	{
		font-weight: bold;
		font-size: 10pt;
		
		border-radius: 10px;
		padding: 2px 12px;
		background-color: black;
		color: white;
	}
	.btn:hover
	{
		background-color: pink;
		color: black;
	}
	#closeBtn						/* 상단 닫기 버튼*/
	{	
		border-radius: 30px;
		padding: 2px 8px;
		margin-left: 96%;
	}

	#sendDate					/* 보낸 일시 */
	{
		float: right;
		font-size: 10pt;
	}
	#receiver						/* 받는 사람 */
	{font-weight:bold;}		
	
	#bottomBtnArea /* 하단 버튼 영역(답장 전송/ 뒤로가기)*/
	{	
		margin: 20px 260px 0px 260px;
	}
</style>


</head>


<body>
	
	<div id="outerBox">

		<div id="innerBox">
		
			<button onclick="window.close()" id="closeBtn" class="btn">X</button>
			<div id="titleBox">
				<img src="images/loveLetter.png" style="width: 40px; padding-top: 10px;">
				<span id="title">나의 쪽지함</span>
			</div> 
			
			<div id="btnArea"> 
				<button type=button class="btn">받은 쪽지</button>
				<button type=button  class="btn">보낸 쪽지 </button>	
			</div>
			
			<div id="writeMsgBox">
				<span id="receiver">받는 사람: </span><span>송풍기</span>
				<hr>
				
				<textarea id="msgContentArea" rows="9" cols="83" placeholder="타인에게 상처주는 말을 하지 맙시다!">누구세요? 광고하지 마세요 ㅡㅡ 유튜브 가봤는데 노잼이에요</textarea>
				
				<div id="bottomBtnArea">
					<button type=button  class="btn" id="msgReplyBtn"
						    onclick="location.href='MsgWrite.jsp'">답장 전송</button>
					<button type=button  class="btn" id="backToMsgList"
						    onclick="location.href='MsgList.jsp'">뒤로 가기</button>
				</div>
				
			</div><!-- end of #writeMsgBox div -->
			
		</div><!-- end of #innerBox div -->

	</div><!-- end of #outerBox div -->
	
</body>
</html>

<!-- 받는 사람 값 넘겨받아서 채우기  -->



