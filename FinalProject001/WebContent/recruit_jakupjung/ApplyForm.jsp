<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	/* 
	String pinNo = (String)request.getAttribute("pinNo");
	if (pinNo != null)
		pinNo = pinNo.trim();
	 */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원하기 :projectors</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/flexBoxOne.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/apply.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">


	 
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
		
		<div class="container">
		<c:set var="memberInfo" value="${memberInfo }" />
		<c:set var="recruitInfo" value="${recruitInfo }" />
		
		
			<div class="myProfileOuter">
			<h3>지원하기</h3>
			
			<!-- 프로필 가져오기 -->
			<span class="smallTitle">나의 프로필</span><button class="updateProfileBtn">프로필 수정하기</button><br>
			<div class="myProfile">
				<div class="photo">
					<img class="img" alt="profileImg" src="<%=cp %>/images/${memberInfo.photoUrl }">
				</div>
				<div class="etc">
				닉네임 : ${memberInfo.nickName }<br>
				활동지역 : ${memberInfo.subRegionName }<br>
				사용가능 언어 및 환경<br>
				: &nbsp; <span>Java &nbsp;&nbsp;</span><span>JavaScript</span>
				</div>
			</div>	
			
			<!-- 지원 폼 -->
			<div class="applyFormOuter">
			
			<span class="smallTitle">지원하는 프로젝트</span> : ${recruitInfo.title }<br>
			<span class="smallTitle">지원하는 포지션</span> : ${recruitInfo.posName }<br><br>
			
			<textarea id="content" class="applyContent" rows="10" cols="70" placeholder="전달하고 싶은 내용을 작성해주세요."></textarea>
			</div><!-- end.applyFormOuter -->
			
			<div class="submitBtnDiv">
			<button class="submitBtn">제출하기</button>
			</div>
			
			
			<!-- 
			프로필 가져오기
			<span class="smallTitle">나의 프로필</span><button class="updateProfileBtn">프로필 수정하기</button><br>
			<div class="myProfile">
				<div class="photo">
				 ㅁㅁㅁㅁㅁㅁ<br>
				 ㅁㅁㅁㅁㅁㅁ<br>
				 ㅁㅁㅁㅁㅁㅁ<br>
				 ㅁㅁㅁㅁㅁㅁ<br>
				 ㅁㅁㅁㅁㅁㅁ<br>
				</div>
				<div class="etc">
				닉네임 : ㅁㅁㅁ<br>
				활동지역 : ㅁㅁㅁ<br>
				사용가능 언어 및 환경<br>
				: &nbsp; <span>Java &nbsp;&nbsp;</span><span>JavaScript</span>
				</div>
			</div>
			
			
			지원 폼
			<div class="applyFormOuter">
			
			<span class="smallTitle">지원하는 프로젝트</span> : ㅁㅁㅁㅁㅁㅁ<br>
			<span class="smallTitle">지원하는 포지션</span> : ㅁㅁㅁㅁㅁㅁ<br><br>
			
			<textarea class="applyContent" rows="10" cols="70" placeholder="전달하고 싶은 내용을 작성해주세요."></textarea>
			</div>end.applyFormOuter
			
			<div class="submitBtnDiv">
			<button class="submitBtn">제출하기</button>
			</div>
			 -->
			
			</div><!-- end.myProfileOuter -->
		</div> <!-- end.container -->
	</div> <!-- end.main -->
	
	
	<div class="footer">
		<!-- footer -->
		<c:import url="Footer.jsp"></c:import>
	</div>
</div>


</body>
</html>
