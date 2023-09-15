<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원서 보기 :projectors</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/flexBoxOne.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/apply.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
/* 
	function cancel() {
		   window.close();
	}
	 */
</script>
</head>
<body>

<div class="wrapper">
	<div class="main">
		
		<div class="container">
		<c:set var="article" value="${article }" />
		
			<div class="myProfileOuter">
			<h3>지원서 보기</h3>
			
			<!-- 프로필 가져오기 -->
			<span class="smallTitle">${profile.nickname } 님의 프로필</span>
			
			<div class="myProfile">
				<div class="photo">
					<img class="img" alt="profileImg" src="<%=cp %>/${profile.photourl }">
				</div>
				<div class="etc">
				닉네임 : ${profile.nickname }<br>
				활동지역 : ${profile.regionName} | ${profile.subRegionName }<br>
				『사용가능 언어 및 환경 ↓』<br>
				──────────────
				<c:forEach var="tool" items="${tool }">
						<span>${tool.toolName}&nbsp;&nbsp;</span>	
				</c:forEach>
				</div>
			</div>	
			
			<!-- 지원 폼 -->
			<div class="applyFormOuter">
			
			<span class="smallTitle">지원하는 프로젝트</span> : ${title }<br>
			<span class="smallTitle">지원하는 포지션</span> : ${applyArticle.posName }<br><br>
			
			
			<textarea id="content" name="content" class="applyContent" rows="10" cols="70" readonly="readonly">
				${applyArticle.content }
			</textarea>
			
			</div><!-- end.applyFormOuter -->
			<input type="hidden" id="recruitPosNo" name="recruitPosNo" value="${applyArticle.recruitPosNo }">
			
			<div class="Btn">
			<button type="button" onclick="window.close()" >창닫기</button>
			</div>
			
			</div><!-- end.myProfileOuter -->
		</div> <!-- end.container -->
	</div> <!-- end.main -->
</div>


</body>
</html>
