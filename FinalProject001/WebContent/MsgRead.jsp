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

<title> 쪽지 읽기 : Projectors</title>
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
	
	#readMsgBox	/* 쪽지 읽는 부분 박스 */
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
	
	#msgContentArea				/* 받은 쪽지 본문 내용 영역*/
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
	#underBtnArea         /*중간 버튼 영역 (삭제/신고)*/
	{
		text-align: right;;
		padding: 10px;
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
	#sender{font-weight:bold;}
	
	#bottomBtnArea /* 하단 버튼 영역(목록으로/답장하기)*/
	{	
		margin: 0px 260px;
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
			
			<div id="readMsgBox">
				<span id="sender">보낸 사람: </span><span>진주는펄</span>
				<hr>
				<div id="msgContentArea">
					<p>안녕 나는 반짝이는 진주야~*^^* 나랑 프로젝트 할래? 지금 이 텍스트는 공백 포함 300자야. VARCHAR2(1000)으로는 500자까지 담을 수 있다던데 2바이트로 계산했을 때니까 안전하게 하려면 300자 정도가 좋은 것 같아. 그래서 제한 글자수가 300이란다. 어쩌구 얄라얄라 왈라왈라 어쩌구 얄라얄라 왈라왈라어쩌구 얄라얄라 왈라왈라어쩌구 얄라얄라 왈라왈라어쩌구 얄라얄라 왈라왈라어쩌구 얄라얄라 왈라왈라어쩌구 얄라얄라 왈라왈라어쩌구 얄라얄라 왈라왈라어쩌구 얄라얄라 왈라왈라어쩌구 얄라얄라왈라왈라왈라왈라..히히히히히히히히히즐겁당</p>
					<span id="sendDate">보낸 일시: 2023.08.03 [10:03]</span>
				</div>
				
				
				<div id="underBtnArea"> 
					<button type=button class="btn" id="delMsgBtn">삭제</button>
					<button type=button  class="btn" id="reportMsgBtn">신고</button>	
				</div>
				
				<div id="bottomBtnArea">
					<button type=button  class="btn" id="msgReplyBtn"
						    onclick="location.href='MsgWrite.jsp'">답장하기</button>
					<button type=button  class="btn" id="backToMsgList"
						    onclick="location.href='MsgList.jsp'">목록으로</button>
				</div>
				
			</div><!-- end of #readMsgBox div -->
			
		</div><!-- end of #innerBox div -->

	</div><!-- end of #outerBox div -->
	
</body>
</html>

<!-- 내용 클릭 시 해당 쪽지 읽기 (MsgRead.jsp 로 이동)  -->



