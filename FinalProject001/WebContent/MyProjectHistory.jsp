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
<title>나의 모집 공고</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
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
	/*==========================================================*/

	/* 헤더 */
	div>h1
	{
		padding-left : 5%; 
	}

	/* ====================== 좌측바 ========================= */

	#leftBar
	{
		float: left;
		width: 20%;
		height : 300px;
		text-align: center;
	}
	
	.btnHeight
	{
		padding: 10px;
		border-right: 3px solid black;
	}
	

	/* ======================================================= */
	
	
	/* ====================== 우측바 ========================= */

	#rightBar
	{
		float: right;
		width: 70%;
		padding : 0% 5% 0% 5%;
	}
	
	.blackBtn
	{
		font-size: x-small;
		color: white;
		background-color: black;
		border: none;
	}

	.table
	{
		text-align: auto;
		width: 90%;
	}
	
	.right-left { width: 80%;}
	.right-right { width: 10%;}
	/* ======================================================= */
	
	
	#prjMemberLists
	{	
		border-top: 1px solid black;
		width: 100%;
		text-align: auto;
	}
	
	.projectInfo
	{
		padding-top: 10%;
	}
	
	
	th, td
	{	
		border-bottom-style:ridge;
		text-align: center;

	}
	
	.out
	{
		color:red;
	}
	
	.outMember
	{
		background-color: green;
		color: white;
	}
	
	.memberCount
	{
		font-weight: bolder;
	}
	
	#dDay
	{
		color: skyblue;
	}
	
</style>
<script type="text/javascript">
	// 모집공고 보러가기
	function showRecruit()
	{
		window.location.href = "PostFormSample.jsp";
	}
	
	// 지원서 보러가기
	$(function() 
	{
		$(".showApply").click(function() 
		{
			//alert($(this).val());
			window.open('ApplyArticle.jsp','applyArticle',
		             'left=500,top=300,width=1000,height=1000,resizable=no,location=no');
		});
	});
		
	
	function rateOneMember()
	{
		window.open('RateOneMemberForm.jsp','rateOneMbmer',
        'left=500,top=300,width=1000,height=500,resizable=no,location=no');
	}
	
	
	// 팀 스페이스 이동
	function moveToTeamSpace()
	{
		
		window.open('TeamSpace.jsp','teamSpace',
        'left=500,top=300,width=1570,height=850,resizable=no,location=no');
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
		<!-- ============================================================= -->
		
<div>
<h1>나의 프로젝트</h1>
<hr />
</div>
<br />


<div id="leftBar">
	<div class="btnHeight">
		<button type="button">
			<a href="MyProjectHistory.jsp">진행 중인 프로젝트</a>
		</button>
	</div>
	<div class="btnHeight">
		<button type="button">
			<a href="MyPastProjectHistory.jsp">과거 프로젝트 이력</a>
		</button>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>
			프로젝트
			<button type="button" id="showRecruit" name="showRecruit" class="blackBtn"
			onclick= "window.location.href='recruitarticle.action?recruitNo=${projectInfoDTO.recruitNo }'"	>
				현재 프로젝트 공고 보러가기
			</button>
			<button type="button" class="ingMember"
			onclick="moveToTeamSpace()" style="background-color: yellow;">
				팀 스페이스
			</button>
		</h2> 
		${projectInfoDTO.recruitName} (<span id="dDay">D-${projectInfoDTO.dDay }</span>)
		<br />
		<h4>나의 포지션: ${projectInfoDTO.posName }</h4>
		<p>진행 기간 (${projectInfoDTO.prjStart } ~ ${projectInfoDTO.prjEnd })</p>

	</div>
		
	
		<hr />

	<div>	
		<h2>
			멤버 정보 & 평가
		</h2>
		
		<div class="right-left">	
			<b><p>프론트엔드 1/1 | 백엔드 1/2 </p></b>
			<p id="memberCount">프로젝트 인원  ▶ <b>2</b> / 3</p>		
		</div>
		<div id="projectInfo">
			<table id="prjMemberLists">
				<tr>
					<th>멤버 번호</th>
					<th>닉네임</th>
					<th>포지션</th>
					<th>상태</th>
					<th>평가</th>
				</tr>
				<tr>
					<td>1548211</td>
					<td>감자퉤김</td>
					<td>프론트엔드</td>
					<td><span class="ing">참여 중</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="alert('프로젝트가 끝나지 않은 멤버는 평가할 수 없습니다.')">
							평가
						</button>
					</td>
				</tr>
				<tr>
					<td>1524511</td>
					<td>단호박사</td>
					<td>백엔드</td>
					<td><span class="out">이탈</span></td>
					<td>
						<button type="button" class="outMember"
						onclick="rateOneMember()">
							평가
						</button>
					</td>
				</tr>
				<tr>
					<td>2015611</td>
					<td>양념치킨</td>
					<td>백엔드</td>
					<td><span class="ing">참여 중</span></td>
					<td>
						<button type="button" class="ingMember" 
						onclick="alert('프로젝트가 끝나지 않은 멤버는 평가할 수 없습니다.')">
							평가
						</button>
					</td>
				</tr>

			</table>			
				
		</div>
	</div>
	<hr />
	



</div><!-- end #rightBar -->


</body>
</html>