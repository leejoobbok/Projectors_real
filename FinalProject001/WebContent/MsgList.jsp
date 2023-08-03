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

<title>쪽지 : Projectors</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">
	
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
	#titleBox	/* 제목 영역 */
	{
		text-align: center;
	}
	
	#title	/*제목*/
	{
		font-size: 20px;
		font-weight: bold;
		vertical-align: 10px; /* 글씨 베이스라인 높이*/
	}
	
	#msgListTable   /* 테이블 */
	{
		width: 714px;
	}
	
	#tHead	/* 리스트의 th */
	{font-size: 11pt; font-weight: bold;}
	
	.rows	/* 리스트 row들 */
	{
		font-size: 10pt;
		text-align: center;
	}
	
	#btnArea				/*버튼 영역*/
	{
		text-align: center;
		padding: 10px 0px 10px 0px;
	}
	
	.btn						/*버튼*/
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
	#closeBtn				/* 상단 닫기 버튼*/
	{	
		border-radius: 30px;
		padding: 2px 8px;
		margin-left: 96%;
	}
	#pageNumBox
	{
		text-align: center;
		font-size: 12pt;
		
	}
</style>


</head>


<body>
	
	<div id="outerBox">

		<div id="innerBox">
			<button onclick="window.close()" id="closeBtn" class="btn">X</button>
			<div id="titleBox">
				<img src="images/loveLetter.png" style="width: 40px; padding-top: 10px;">
				<span id="title">쪽지</span>
			</div> 
			
			<div id="btnArea"> 
				<button type=button class="btn">받은 쪽지</button>
				<button type=button  class="btn">보낸 쪽지 </button>	
			</div>
			<hr>
				<table id="msgListTable">
					<tr id="tHead">
						<th>확인</th>
						<th>보낸 사람</th>
						<th>내용</th>
						<th>발송 일시</th>
					</tr>
					<tr class="rows">
						<td><img src="images/Closed.png" style="width:30px"></td>
						<td>관리자</td>
						<td>[안내] 이용 규칙 위반으로 계정이 7일간 정지됩니다. 상세 내용: 어쩌구..</td>
						<td>2023.08.05 [10:35]</td>
					</tr>
					<tr class="rows">
						<td><img src="images/Opened.png" style="width:30px"></td>
						<td>진주는펄</td>
						<td>안녕 나는 반짝이는 진주야~*^^* 나랑 프로젝트 할래?</td>
						<td>2023.08.03 [10:03]</td>
					</tr>
					<tr class="rows">
						<td><img src="images/Closed.png" style="width:30px"></td>
						<td>송풍기</td>
						<td>난 우주 최고 짐승돌 송풍기야 ^_6 내 유튜브 구독해줘♡</td>
						<td>2023.08.02 [14:01]</td>
					</tr>
					<tr class="rows">
						<td><img src="images/Opened.png" style="width:30px"></td>
						<td>운영자</td>
						<td>[안내] 제출하신 지원서가 처리되었습니다. 결과를 확인해주세요!</td>
						<td>2023.08.01 [09:30]</td>
					</tr>
					<tr class="rows">
						<td><img src="images/Opened.png" style="width:30px"></td>
						<td>운영자</td>
						<td>[안내] 등록하신 공고의 모집이 완료되었습니다! 26일 단 하루! 꼭 접속...</td>
						<td>2023.06.24 [11:29]</td>
					</tr>
					<tr class="rows">
						<td><img src="images/Opened.png" style="width:30px"></td>
						<td>운영자</td>
						<td>[안내] 확인하지 않은 지원서가 2개 있습니다! </td>
						<td>2023.06.12 [10:35]</td>
					</tr>
					<tr class="rows">
						<td><img src="images/Opened.png" style="width:30px"></td>
						<td>운영자</td>
						<td>[안내] 모집글을 올리셨네요! 중요한 사항을 몇 가지 안내해드립니다..</td>
						<td>2023.06.12 [09:30]</td>
					</tr>
					<tr class="rows">
						<td><img src="images/Opened.png" style="width:30px"></td>
						<td>운영자</td>
						<td>새로운 프로젝터 한아둘셋 님! 만나서 반갑습니다 :)... </td>
						<td>2023.06.12 [09:30]</td>
					</tr>
				</table>
				<hr>
				
				<div id="pageNumBox">
					<p> ◀ 1 2 3 4 5 ▶</p>
				</div>
			
		</div><!-- end of #innerBox div -->
	</div>
</body>
</html>


