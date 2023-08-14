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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">
* {
	font-size: 12pt;
	font-weight: bold;
}

#root {
	padding-top: 100px;
}

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

#categoryTitle {
	justify-content: center;
	display: flex;
	width: 100%;
	height: 80%;
	margin-bottom: 1em;
	border: 2px solid black; /* 테두리 스타일 설정 */
	font-size: 30pt;
}

#ingProject #pastProject #waitProject {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 80%;
	height: 100%;
	margin: 0;
	padding: 30;
	text-align: center; /* 텍스트 가운데 정렬 */
}

#seperateOne {
	width: 100%;
	padding: 1;
	text-align: center;
}

#present {
	font-size: 20pt;
	padding-bottom: 20;
}

#wait {
	font-size: 20pt;
	padding-bottom: 20;
}

#past {
	font-size: 20pt;
	padding-bottom: 20;
}

#none /* 미응답시 글자색  */ {
	color: gray;
}

#agree /* 수락시 글자색  */ {
	color: blue;
}

#reject /* 거절시 글자색  */ {
	color: red;
}

#paging {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
	font-size: 28px;
}
</style>

</head>
<body>

	<div id="root">

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
		<!-- =========================================================== -->



		<div id="pageTitle">
			<p id="categoryTitle">나의 지원 이력 - 현재 지원 현황</p>
		</div>


		<div>
			<button onclick="">현재 지원</button>
			<button>과거 지원</button>
		</div>


		<div>
			<p id="present">현재
			<hr />
			</p>

			<div id="ingProject">
				<p id="seperateOne">
					지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집
					중인 포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | <span id="none">상태<span>|
							<a href="ApplyFormSample.jsp">내지원서 상세보기</a>
				</p>

			</div>
		</div>



		<div>
			<!-- 프로젝트 시작일을 기다리는 공고  -->
			<p id="wait">최종 합류 여부를 기다리는 지원서
			<hr />
			</p>
		</div>
		<div id="waitProject">
			<p id="seperateOne">없음</p>

		</div>





		<div>
			<p id="past">과거
			<hr />
			</p>
		</div>


		<div id="pastProject">
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a><br />
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 |<span id="reject"> 거절
				</span> | <a href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 |<span id="agree"> 수락</span> |
				<a href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
			<p id="seperateOne">
				지원서 번호 | <a href="PostFormSample.jsp"> 프로젝트 제목</a> | 프로젝트 기간 | 모집 중인
				포지션별 인원 | 내가 지원한 포지션 | 지원 일자 | 모집자 답변 | 상태 | <a
					href="ApplyFormSample.jsp">내지원서 상세보기</a>
			</p>
		</div>

		<div id="paging">◀ 1 2 3 4 5 ....... ▶</div>

	</div>
</body>
</html>

