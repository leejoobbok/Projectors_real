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
				<span class="titleText1">현재 모집 이력</span>
				<br>
				
				<div class="listsDiv">	
				
				<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★시작 -->
				
				
				<div>
			<h2>
				모집 중인 공고
				<button type="button" id="showRecruit" name="showRecruit"
					class="blackBtn" onclick="showRecruit()">모집공고 보러가기</button>
			</h2>
			프로젝트 명
		</div>
		<hr />
		<br />

		<div>
			<h2>모집 마감일</h2>
			2023.07.31 (D-1)
		</div>
		<hr />
		<br />

		<div>
			<h2>신규 지원자</h2>
			<hr />
			<br />
			<form action="">
				<table class="table">
					<tr>
						<th>지원포지션</th>
						<th>지원자</th>
						<th>사용가능언어</th>
						<th>내용</th>
						<th></th>
					</tr>
					<tr>
						<td>웹프론트엔드A</td>
						<td>말랑콩떡</td>
						<td>JavaScript, JSTL ...</td>
						<td>첫 프로젝트지만 잘...</td>
						<td>
							<button type="button" class="blackBtn showApply" value="">지원서
								보러가기</button>
						</td>
					</tr>
					<tr>
						<td>웹백엔드A</td>
						<td>햄찌사랑</td>
						<td>Java, Phython ...</td>
						<td>백엔드만큼은 자부심 있슴다!</td>
						<td>
							<button type="button" class="blackBtn showApply" value="">지원서
								보러가기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<hr />
		<br />
		<div>
			<div class="right-left">
				<p>모집 현황 &nbsp; 1 / 4</p>
			</div>
			<div class="right-right">
				<button class="blackBtn" style="background-color: red;">모집
					취소하기</button>
			</div>
			<hr>
			<br>

			
		</div>

					
					
					
				<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★끝 -->
					
					
				</div><!-- listsDiv -->
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