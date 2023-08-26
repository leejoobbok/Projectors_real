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
<title>나의 지원 :projectors</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/flexBoxTwo.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/myapply.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">

table
{
	text-align: center;
}

th
{
	border: 1px solid black;
	border-radius: 50em;
}

.recruitTitle
{
	width: 250pt;
}

</style>


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
		<h2 class="pageTitle">나의 지원 이력</h2>
		
		<div class="container">
		
			<div class="left">
			
				<div class="btnHeight">
					<a href="myapply.action">
						<button type="button" class="btn" id="nowButton">현재 지원</button>
					</a>
				</div>
				<div class="btnHeight">
					<a href="mypastapply.action">
						<button type="button" class="btn" id="pastButton">과거 지원</button>
					</a>
				</div>
				
			</div><!-- left -->
			
			  
			<div class="right">
				<span class="titleText1">현재 지원 이력</span>
				<br>
				
				
				<c:choose>
				<%--<c:when test="${checkPresent == 0 || checkFirstCk !=0 || checkFinal != 0}"> --%>
				<c:when test="${checkPresent == 0}">
					<h2> 현재 지원 이력이 존재하지 않습니다.</h2>
				</c:when>
				<c:otherwise>
				
					<div class="listsDiv">	
					<table>
					<tr>
					<div> <!-- th 용  -->
						<th><div>지원서번호</div></th>
						<th><div>포지션명</div></th>
						<th class="recruitTitle"><div>공고 제목</div></th>
						<th><div>닉네임</div></th>
						<th><div>지원 날짜</div></th>
						<th><div>상태</div></th>
					</div>
					</tr>
					<tr>
					<div> <!-- 현재 지원 데이터  -->
						<td><div>${presentApply.applyNo}</div></td>
						<td><div>${presentApply.posName}</div></td>
						<td><div><a href="">${presentApply.title}</a></div></td>
						<td><div>${presentApply.nickName}</div></td>
						<td><div>${presentApply.applyDate}</div></td>
						<td><div>
								<c:choose>
									<c:when test="${not empty presentApply.ckDate }">
										읽음
									</c:when>
									<c:otherwise>
										안읽음
									</c:otherwise>
								</c:choose>
							</div></td>			
					</div>
					</tr>
					</table>
					</div> <!-- end of listDiv  -->
					
					
					<div class="applyNow">
					없음
					</div>
					<div class="applyComplete">
					없음
					</div>
					
				</c:otherwise>
				</c:choose>
				
				
		</div><!-- right -->
		
		
	</div> <!-- container1 -->
		
		
	<br />
	<div class="container">
		<!-- 1차 합격 지원서  -->
		<div class="left"></div>
		<div class="right">
				<span class="titleText1">합격 지원서</span>
				<%--<c:when test="${checkFinal != 0}"> --%>
				
				
		</div><!-- right -->
	</div><!-- container2  -->
	
	<br />
	<div class="container">	
		<!-- 최종 합류 대기 지원서  -->
		<div class="left"></div>
		<div class="right">
				<span class="titleText1">최종 합류 대기 지원서</span>
				<%--<c:when test="${checkFinal == 0}"> --%>
		</div><!-- right -->
	</div><!-- container3  -->
	
	
</div><!-- main -->
	
	<div class="footer">
		<!-- footer -->
		<c:import url="Footer.jsp"></c:import>
	</div>



</body>
</html>