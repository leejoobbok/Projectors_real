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
<title>나의 모집 :projectors</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/flexBoxTwo.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/mypost.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
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
			window.open('ApplyArticle.jsp', 'applyArticle','left=500,top=300,width=1000,height=1000,resizable=no,location=no');
		});
	});

</script>

</head>

<body>


<div class="wrapper">

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
			<a href="projectorsmain.action"><img style="width: 530px;" src="<%=cp %>/images/NEXTART_LOGO.png"/></a>
		</div>	
		
	</div>
	
	<div class="header-menu">
		<c:import url="menuBar.jsp"></c:import>
	</div>
	
	
	<div class="main">
		<h2 class="pageTitle">나의 모집 이력</h2>
		
		<div class="container">
		
			<div class="left">
			
				<div class="btnHeight">
					<a href="mypost.action">
						<button type="button" class="btn" id="nowButton">현재 모집</button>
					</a>
				</div>
				<div class="btnHeight">
					<a href="mypastpost.action">
						<button type="button" class="btn" id="pastButton">과거 모집</button>
					</a>
				</div>
				
			</div><!-- left -->
			
			  
			<div class="right">
				<span class="titleText1">과거 모집 이력</span>
				<br>
				
				<div class="listsDiv">	
				
				<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★시작 -->
				
				
<table class="table">
			<!-- 8개 -->
			<tr>
				<th>게시물 번호</th>
				<th>제목</th>
				<th>모집 인원</th>
				<th>합류 인원</th>
				<th>모집시작일</th>
				<th>프로젝트 기간</th>
				<th>지원서</th>
				<th>상태</th>
			</tr>
			<tr>
				<td>18997</td>
				<td>
					<a href="PostFormSample.jsp">주차 시스템  프로젝트</a>
				</td>
				<td>프론트엔드 0/4 | 백엔드 0/7</td>
				<td>프론트엔드 4  | 백엔드 7</td>
				<td>22.03.02</td>
				<td>23.03.25~23.06.10</td>
				<td>읽음 32 |  안읽음 0</td>
				<td>마감(모집완료)</td>
			</tr>
			<tr>
				<td>14221</td>
				<td>
					<a href="PostFormSample.jsp">스포츠 분석 시스템</a>
				</td>
				<td>프론트엔드 1/2 | 백엔드 2/4</td>
				<td>-</td>
				<td>21.07.08</td>
				<td>22.08.27~22.10.15</td>
				<td>읽음 3 | 안읽음 0</td>
				<td>마감(기간만료)</td>
			</tr>
			<tr>
				<td>12354</td>
				<td>
					<a href="PostFormSample.jsp">웹 메신저 ‘코코넛톡</a>
				</td>
				<td>프론트엔드 0/2 | 백엔드 0/5</td>
				<td>-</td>
				<td>21.04.01</td>
				<td>21.05.01~21.05.20</td>
				<td>읽음 3| 안읽음 1</td>
				<td>모집 취소</td>
			</tr>
		</table>

					
					
					
				<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★끝 -->
					
					
				</div><!-- listsDiv -->
				
				<div class="paging">
					<span>[페이징처리]</span>
				</div>
			
			</div><!-- right -->
			
		</div> <!-- container -->
	</div><!-- main -->
	
	<div class="footer">
		<!-- footer -->
		<c:import url="Footer.jsp"></c:import>
	</div>
</div>


</body>
</html>