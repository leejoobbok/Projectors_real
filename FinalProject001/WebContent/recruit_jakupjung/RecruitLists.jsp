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
<title>모집공고 :projectors</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/flexBoxOne.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/recruitLists.css">
</head>

<body>


<div class="wrapper">

	<div class="header">
	
		<!-- header -->
		<div class="header-member">
			<c:import url="memberBar.jsp"></c:import>
		</div>	
		
		<div class="header-logo">
			<a href=""><img style="width: 530px;" src="<%=cp %>/images/NEXTART_LOGO.png"/></a>
		</div>	
		
	</div>
	
	<div class="header-menu">
		<c:import url="menuBar.jsp"></c:import>
	</div>
	
	<div class="main">
		<h2 class="pageTitle">모집공고 둘러보기</h2>
		<br>
		
		<div class="container">
			
			<div class="filter">
				<h3 class="inline">조건 검색</h3>
				<span class="searchTag">서울
					<button type="submit" class="SearchDelBtn">x</button>
				</span>
				<span class="searchTag">서울
					<button type="submit" class="SearchDelBtn">x</button>
				</span>
				<span class="searchTag">서울
					<button type="submit" class="SearchDelBtn">x</button>
				</span>
			</div> <!-- end.filter -->
			
			<div class="search">
				<ul>
					<li>
						<span>지역</span>
						<select class="select" id="region" name="region">
							<option value="">전체</option>
							<option value="">서울</option>
							<option value="">경기</option>
							<option value="">인천</option>
							<option value="">:</option>
						</select>
					</li>
					<li>
						<span>상세 지역</span>
						<select class="select" id="subRegion" name="subRegion">
							<option value="">전체</option>
							<option value="">수원</option>
							<option value="">안산</option>
							<option value="">안양</option>
							<option value="">:</option>
						</select>
					</li>
					<li>
						<span>포지션</span>
						<select class="select" id="position" name="position">
							<option value="">전체</option>		
							<option value="">프론트엔드</option>
							<option value="">백엔드</option>
							<option value="">풀스택</option>
							<option value="">퍼블리싱</option>
							<option value="">디자인</option>
							<option value="">기획</option>
						</select>
					</li>
					<li>
						<span>진행방식</span>
						<select class="select" id="doType" name="doType">
							<option value="">전체</option>
							<option value="">대면</option>
							<option value="">비대면</option>
						</select>
					</li>
					<li>
						<button type="submit" class="searchBtn" id="searchBtn">검색</button>
					</li>
				</ul>
				<hr style="width: 70%">
			</div> <!-- end.search -->
			
			<div class="recruitLists">
				<div class="recruitList">
					<ul>
						<li>
							<span>모집 마감일  2023.09.01 (D-1)</span>
							<span style="margin-left:60px;">프로젝트 기간  2023.09.30 ~ 2023.11.30 </span>
							<span style="margin-left:60px;">모집 인원  5 / 6 </span>
						</li>
						<li>
							<span class="recruitTitle"><a href="PostFormSample.jsp">주차 시스템 프로젝트</a></span>
							<span class="recruitStatus">모집중</span>
							<!-- <span class="endStatus">모집마감</span> -->
						</li>
						<li>
							<p>안녕하세요. 취업 전 이력서에 작성할 포트폴리오를 만드려고 합니다. 상세 기획은 완성되지 않았기에
						    	머시기저시기 머시기저시기 머시기저시기 머시기저시기...
						    </p>
						</li>
						<li>
							<span>Go</span>
							<span>Spring</span>
							<span>Javascript</span>
							<span>대면</span>
							<span>서울</span>
						</li>
					</ul>
				</div> <!-- end.recruitList -->
			</div> <!-- end.recruitLists -->
			
			
			
		</div> <!-- end.container -->
	</div> <!-- end.main -->
	
	<div class="footer">
		<!-- footer -->
		<c:import url="Footer.jsp"></c:import>
	</div>
</div>


</body>
</html>
