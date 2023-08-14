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
<title>MyPage.jsp(마이페이지)</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">

/* ---------- 상단 고정 스타일(메뉴바까지) ----------*/
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
/*--- 여기까지 상단 고정 스타일 (메뉴바까지) ------*/
#myPageBox /* 전체 박스 클래스 */ {
	width: 1007px; /* 윈도우 조절해도 안 줄어들게 고정 */
	margin: auto;
	border: 1px solid;
	border-radius: 20px;
}

#myPageTitle /*마이페이지 (타이틀)*/ {
	margin: 10px 20px;
	font-weight: bold;
	font-size: 16pt;
	text-align: left;
}

.smallTitile /* 소제목 */ {
	font-size: 14pt;
	margin-left: 40px;
}

#myPageMenus /*마이페이지 메뉴들 */ {
	border: 1px solid;
	border-radius: 20px;
	font-weight: bold;
	padding: 10px 10px 10px 10px;
	background-color: white;

	/* position :sticky;  */ /*sticky 속성*/
	/*  top: 70px; */ /*sticky 속성*/
}

#myProfile /*내 프로필 영역*/ {
	
}
</style>


</head>


<body>
	<div id="root">

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
		<!-- ============================================================ -->


		<div id="myPageBox">

			<div id="myPageMenus">
				<span id="myPageTitle">마이페이지</span> <a href="profileview.action">내
					프로필</a>
				<!-- <a href="MyPage.jsp">찜한 모집 공고</a> -->
				<a href="accountManage.action">계정관리</a>
			</div>


			<!-- ====== 나의 프로필 ====== -->
			<div id="myProfile">
				<c:import url="profileview.action"></c:import>
			</div>


			<!-- ===== 내가 찜한 모집공고 ====== -->
			<%-- 			<hr>
			<div id="myPick">
				<h2 class="smallTitile">찜한 모집 공고</h2>
				<c:import url="PickedPost.jsp"></c:import>
			</div>
			 --%>
		</div>
		<!-- end of #myPageBox div -->

	</div>
	<!-- end of #root div -->

</body>
</html>
