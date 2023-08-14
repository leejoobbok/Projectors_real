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

<title>이미 프로필을 가지고 있는 회원이 자기 프로필을 보는 곳</title>

<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">
	
	a{text-decoration: none;}
	
	#ProfileContainer		/* 전체 컨테이너 */
	{
		margin: 10px;
	}
	
	#profileTitleBox			/*타이틀 박스영역*/
	{	
		margin-right: 10px;
		text-align: left;
	}
	#profileTitle				/* 타이틀 */
	{
		font-weight: bold;
		font-size: 14pt;
	}
	#profileImgContainer		/*프로필 이미지 등록 영역*/
	{	
		float: left;
		background-color: #dedcf2;
		width: 140px;
		height: 170px;
		margin-right: 20px;
		border-radius:10px;
	}
	#profileImgBox	 	/* 프로필 사진 영역*/
	{
		width: 100px;
		height: 100px;
	}
	#ProfileTextBox	/* 프로필 텍스트 입력/수정영역 */
	{
		text-align: left;
	}
	#updateBtn /*수정 버튼*/
	{
		border-radius: 14px;
	}

	
</style>

</head>
<body>
	<div id="ProfileContainer"> <!-- 프로필 전체 컨테이너 -->
		<div id="profileTitleBox">
			<h2 id="profileTitle"> 나의 프로필</h2>
		</div>
		
		
		
		
 
<c:set var="result" value="${result}" scope="session"/>
<c:choose>
        <c:when test="${result == 1 }">
             
  	
		<div id="profileImgContainer">
			<div id="profileImgBox">
				<img style="width:100px; height: 100px; margin:20px; border-radius: 6px"
				  alt="profileImg"
				  src="${profileDTO.photourl}">
			</div>
			<div style="margin: 30px 16px;">
			<button type="submit"
				 onclick="window.open('<%= request.getContextPath()%>/photoUpdateForm.action','photoUpdate',
				 'left=500,top=300,width=400,height=400,resizable=no, location=no')" >사진 등록/수정</button>	 
			</div>
		</div>
				
		<div id="ProfileTextBox">
			<form action="" method="get">
				<table>
					<tr>
						<td>
							<button type="button" onclick="location.href='profileUpdateForm.action'"> 수정 </button>
						</td>
					</tr>
					<tr>
						<th>아이디 </th>
						<td>${profileDTO.id}</td>
						<td></td>
					</tr>
					<tr>
						<th>닉네임 </th>
						<td>${profileDTO.nickname }</td>
					</tr>
					<tr>
						<th>희망 포지션 </th>
						<td>${profileDTO.posName }</td>
					</tr>
					<tr>
						<th>사용 가능 도구</th>
						<td>
						<c:forEach var="utool" items="${utool}">
							【${utool.toolName}】
						</c:forEach>
						</td>
					</tr> 
					<tr>
						<th>지역 </th>
						<td>${profileDTO.regionName } | ${profileDTO.subRegionName }</td>
					</tr>
					</table>
					<br /><br />

					<div id=rateBox>
						
						<table border="1px solid black">
						<p>평가</p>
							<c:forEach var="totalRate" items="${totalRate}">
							<tr>
								<th>${totalRate.rateName }</th>
								<td>${totalRate.count }</td>
							</tr>	
							</c:forEach>
							
						</table>
					</div>
				</form>


<!-- 
			<table>
				<tr>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</table>
-->			
		</div> <!-- end of #ProfileBox div-->
         
        </c:when> 
        <c:otherwise>
            등록된 프로필이 존재하지 않습니다!
            <br />
            <button type="button" onclick="location.href='profileInsertForm.action'">등록하러 가기</button>
		</c:otherwise>	
</c:choose>
	
	</div> <!-- end of #wrapper div -->
</body>
</html>

<!-- location 주소창 보이기 속성은 오페라에서만 동작 -->
