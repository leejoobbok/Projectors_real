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
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
/*==========  상단 공통 요소 (메뉴바까지) ==================*/
#logoBox /*로고 이미지*/ {
	text-align: center;
	height: 100px;
	padding-top: 20px;
	/* border: 1px solid; */
}

#upperBarBox /*최상단 바(로그인..쪽지)*/ {
	text-align: right;
}

#menuBar /*메뉴바(메인|공지..)*/ {
	text-align: center;
	position: sticky;
	padding-top: 32px;
	top: -32px;
}
/*==========================================================*/

/* 헤더 */
div>h1 {
	padding-left: 5%;
}

/* ====================== 좌측바 ========================= */
#leftBar {
	float: left;
	width: 20%;
	height: 300px;
	text-align: center;
}

.btnHeight {
	padding: 10px;
	border-right: 3px solid black;
}

/* ======================================================= */

/* ====================== 우측바 ========================= */
#rightBar {
	float: right;
	width: 70%;
	padding: 0% 5% 0% 5%;
}

.table {
	text-align: auto;
	width: 90%;
}

.right-left {
	width: 80%;
}

.right-right {
	width: 10%;
}
/* ======================================================= */
#pastPrjLists {
	border-top: 1px solid black;
	width: 100%;
	text-align: auto;
}

.projectInfo {
	padding-top: 10%;
}

th, td {
	border-bottom-style: ridge;
	text-align: center;
}

.out {
	color: red;
}

.outMember {
	background-color: white;
	color: gray;
}

.memberCount {
	font-weight: bolder;
}

.footer {
	padding-top: 50px;
	text-align: center;
	padding-bottom: 20px;
}
</style>
<script type="text/javascript">
	function rateAllMember()
	{

		window
				.open('RateAllMemberForm.jsp', 'rateAllMember',
						'left=500,top=300,width=1000,height=800,resizable=no,location=no');

	}

	// 팀 스페이스 이동
	function moveToTeamSpace()
	{

		window
				.open('TeamSpace.jsp', 'teamSpace',
						'left=500,top=300,width=1570,height=850,resizable=no,location=no');
	}
</script>
</head>
<body>
	<!-- ========== 공통 상단 영역( 메뉴바까지) ======================== -->

	<div class="header">

		<!-- header -->
		<c:choose>
			<c:when test="${not empty pinNo}">
				<div class="header-member">
					<c:import url="memberBar.jsp"></c:import>
				</div>
			</c:when>
			<c:otherwise>
				<div class="header-member">
					<c:import url="GuestBar.jsp"></c:import>
				</div>
			</c:otherwise>
		</c:choose>

		<div class="header-logo">
			<a href="projectorsmain.action"><img style="width: 530px;"
				src="<%=cp%>/images/NEXTART_LOGO.png" /></a>
		</div>

	</div>

	<div class="header-menu">
		<c:import url="menuBar.jsp"></c:import>
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
				<a href="myproject.action">진행 중인 프로젝트</a>
			</button>
		</div>
		<div class="btnHeight">
			<button type="button">
				<a href="myPastProject.action">과거 프로젝트 이력</a>
			</button>
		</div>
	</div>
	<!-- end #leftBar -->


	<div id="rightBar">
		<div>
			<h2>프로젝트</h2>
		</div>
		<hr />

		<div>
			<h2>과거 프로젝트 이력</h2>

			<div class="right-left">
				<p id="pastProjectCount">
					과거 프로젝트 수 <b>${checkPastProject}</b>
				</p>
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
					<c:choose>
						<c:when test="${checkPastProject == 0 }">
							<td colspan="8"><b>진행되었던 과거 프로젝트 이력이 존재하지 않습니다.</b></td>
						</c:when>
						<c:otherwise>

						</c:otherwise>
					</c:choose>


					<c:forEach var="pastProject" items="${pastProjectDTO}">
						<tr>
							<td>${pastProject.prjNo }</td>
							<td>${pastProject.recruitName }</td>
							<td>${pastProject.prjStart }~ ${pastProject.prjEnd }</td>
							<td>${pastProject.count }</td>
							<td>${pastProject.posName }</td>
							<td><span class="prjStatus">완료(정적)</span></td>
							<td>
								<button type="button" class="ingMember"
									onclick="moveToTeamSpace()">이동</button>
							</td>
							<td>
								<button type="button" class="ingMember"
									onclick="rateAllMember()">팀원 평가</button>
							</td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>

		<div class="footer">◀ 1 2 ▶</div>





	</div>
	<!-- end #rightBar -->


</body>
</html>