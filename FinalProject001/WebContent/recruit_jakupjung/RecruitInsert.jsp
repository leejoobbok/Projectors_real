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
<title>메뉴명 :projectors</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/flexBoxOne.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/recruitInsertForm.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	// 제목 글자수 제한
	
	// 내용 글자수 제한



</script>
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
		<h3 class="pageTitle">모집공고 작성하기 <span class="right">모집 마감일 2023.08.24</span></h3>
		<hr class="line1">
		<br>
		
		
		<div class="writeContainer">
		<form action="postrecruit.action" method="post" id="myForm">
			
		<div class="smallContainer">
			<span class="smallTitle">프로젝트명</span><br>
			<input type="text" id="title" name="title" class="title">
		</div>
			
			
		<div class="smallContainer">
			<span class="smallTitle">프로젝트 설명</span><br>
			<textarea rows="5" cols="100" id="content" name="content" class="content"
			></textarea>
		</div>
			
			
		<div class="smallContainer">
			<span class="smallTitle">프로젝트 시작일</span>
			<input type="text" id="prjStart" name="prjStart" class="prjStart" placeholder="YYYY-MM-DD">
			<span class="smallTitle">프로젝트 종료일</span>
			<input type="text" id="prjEnd" name="prjEnd" class="prjEnd" placeholder="YYYY-MM-DD">
		</div><br>
			
			
		<div class="smallContainer">
			<span class="smallTitle">사용언어 &amp; 환경</span>
			<span class="right">최대 8개 선택 가능</span><br><hr class="line2">
			
			<c:forEach var="tool" items="${tools }" varStatus="count">
				<input type="checkbox" id="tool${count.index }" name="tool" class="tool" value="${tool.toolNo }"
				><span class="toolName">${tool.toolName }</span>
				<c:if test="${count.index % 5 == 4}"><br></c:if>
			</c:forEach>

		</div>
			
			
		<div class="smallContainer">
			<span class="smallTitle">프로젝트 팀원 구성</span>
			<span class="right">최대인원 10명 (팀장 포함)</span><br><hr class="line2">
			
			<ul class="ulPos">
			
			<c:forEach var="pos" items="${poss }" varStatus="count">
				<li>
					<input type="checkbox" id="pos${count.index }" name="pos" class="pos" value="${pos.posNo }"> <span class="posName">${pos.posName }</span>
					<input type="number" id="posCount${count.index }" name="posCount" class="posCount" value="0"> <span class="posName">명</span>
				</li>
			</c:forEach>

			</ul>
			<span class="alert">* 자신이 담당할 포지션을 체크(</span>
			<input type="checkbox" class="alertCheck" checked="checked">
			<span class="alert">)해주세요. 인원은 본인까지 포함한 인원으로 설정하셔야 합니다.</span>
			
		</div>
		
			
		<div class="smallContainer">
			<span class="smallTitle">진행방식</span>
			<select id="doTypeNo" name="doTypeNo" class="doType">
				<option value="1">대면</option>
				<option value="0">비대면</option>
			</select>
		</div>
			
			
		<div class="confirmContainer">
			<span>
			<input type="checkbox"> 위 사실 머시기 저시기 확인하였습니다.
			</span><br>
			<button type="submit" class="insertBtn"><span>등록하기</span></button>
		</div>	
		
		
		</form>
		</div> <!-- end.writeContainer -->
	</div> <!-- end.main -->
	
	
	
	<div class="footer">
		<!-- footer -->
		<c:import url="Footer.jsp"></c:import>
	</div>
</div>


</body>
</html>
