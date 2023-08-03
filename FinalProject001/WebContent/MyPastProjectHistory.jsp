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
	
	.table
	{
		text-align: auto;
		width: 90%;
	}
	
	.right-left { width: 80%;}
	.right-right { width: 10%;}
	/* ======================================================= */
	
	#pastPrjLists
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
	
	.footer
	{	
		padding-top: 50px;
		text-align: center;
		padding-bottom: 20px;
	}
	
</style>
<script type="text/javascript">

	
	function rateAllMember()
	{
		
		window.open('rateAllMemberForm.jsp','rateAllMember',
        'left=500,top=300,width=1000,height=800,resizable=no,location=no');
	
	}
	
	function moveToTeamSpace()
	{
		
		window.open('TeamSpace.jsp','teamSpace',
        'left=500,top=300,width=1400,height=800,resizable=no,location=no');
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
		</h2> 
	</div>
		<hr />

	<div>	
		<h2>
			과거 프로젝트 이력
		</h2>
		
		<div class="right-left">	
			<p id="pastProjectCount">과거 프로젝트 수 <b>17</b></p>		
		</div>
		<div id="projectInfo">
			<table id="pastPrjLists">
				<tr>
					<th>프로젝트 번호</th>
					<th>프로젝트 명</th>
					<th>프로젝트 기간</th>
					<th>인원</th>
					<th>나의 포지션</th>
					<th>상태</th>
					<th>팀 스페이스</th>
					<th>평가</th>
				</tr>
				<tr>
					<td>8211</td>
					<td>키오스크 프로젝트</td>
					<td>2023.10.21 ~ 2024.02.07</td>
					<td>9</td>
					<td>백엔드</td>
					<td><span class="prjStatus">완료</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
				<tr>
					<td>9567</td>
					<td>여행 플래너 프로젝트</td>
					<td>2023.07.01 ~ 2023.08.19</td>
					<td>4</td>
					<td>프론트엔드</td>
					<td><span class="prjStatus">완료(이탈)</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
				<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
						<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
						<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
						<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
						<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
						<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
						<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
						<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>
						<tr>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td>:</td>
					<td><span class="prjStatus">:</span></td>
					<td>
						<button type="button" class="ingMember"
						onclick="moveToTeamSpace()">
							이동
						</button>
					</td>
					<td>
						<button type="button" class="ingMember"
						onclick="rateAllMember()">
							팀원 평가
						</button>
					</td>
				</tr>

			</table>			
		</div>
	</div>

	<div class="footer">
		◀  1  2  ▶  
	</div>	
	
	



</div><!-- end #rightBar -->


</body>
</html>