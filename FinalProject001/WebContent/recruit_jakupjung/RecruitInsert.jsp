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
			<input type="checkbox" id="tool1" name="tool" class="tool" value="toolNo"><span class="toolName">Visual Studio Code</span>
			<input type="checkbox" id="tool2" name="tool" class="tool" value="toolNo"><span class="toolName">Oracle</span>
			<input type="checkbox" id="tool3" name="tool" class="tool" value="toolNo"><span class="toolName">C#</span>
			<input type="checkbox" id="tool4" name="tool" class="tool" value="toolNo"><span class="toolName">JavaScript</span>
			<input type="checkbox" id="tool5" name="tool" class="tool" value="toolNo"><span class="toolName">Jupyter Notebook</span>
			<br>
		</div>
			
			
		<div class="smallContainer">
			<span class="smallTitle">프로젝트 팀원 구성</span>
			<span class="right">최대인원 10명 (팀장 포함)</span><br><hr class="line2">
			
			<ul class="ulPos">
				<li>
					<input type="checkbox" id="pos1" name="pos" class="pos" value="posNo"> <span class="posName">백엔드</span>
					<input type="number" id="posCount1" name="posCount" class="posCount" placeholder="0"> <span class="posName">명</span>
				</li>
				<li>
					<input type="checkbox" id="pos2" name="pos" class="pos" value="posNo"> <span class="posName">프론트엔드</span>
					<input type="number" id="posCount2" name="posCount" class="posCount" placeholder="0"> <span class="posName">명</span>
				</li>
				<li>
					<input type="checkbox" id="pos3" name="pos" class="pos" value="posNo"> <span class="posName">프론트엔드</span>
					<input type="number" id="posCount3" name="posCount" class="posCount" placeholder="0"> <span class="posName">명</span>
				</li>
				<li>
					<input type="checkbox" id="pos4" name="pos" class="pos" value="posNo"> <span class="posName">프론트엔드</span>
					<input type="number" id="posCount4" name="posCount" class="posCount" placeholder="0"> <span class="posName">명</span>
				</li>
				<li>
					<input type="checkbox" id="pos5" name="pos" class="pos" value="posNo"> <span class="posName">프론트엔드</span>
					<input type="number" id="posCount5" name="posCount" class="posCount" placeholder="0"> <span class="posName">명</span>
				</li>
				<li>
					<input type="checkbox" id="pos6" name="pos" class="pos" value="posNo"> <span class="posName">프론트엔드</span>
					<input type="number" id="posCount6" name="posCount" class="posCount" placeholder="0"> <span class="posName">명</span>
				</li>
			</ul>
			<span class="alert">* 자신이 담당할 포지션을 체크(</span>
			<input type="checkbox" class="alertCheck" checked="checked">
			<span class="alert">)해주세요. 인원은 본인까지 포함한 인원으로 설정하셔야 합니다.</span>
			
		</div>
		
			
		<div class="smallContainer">
			<span class="smallTitle">진행방식</span>
			<select id="doType" name="doType" class="doType">
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
