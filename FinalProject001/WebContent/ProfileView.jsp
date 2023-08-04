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
			<h2 id="profileTitle">이준복 님의 프로필</h2>
		</div>
		
		<div id="profileImgContainer">
			<div id="profileImgBox">
				<img style="width:100px; height: 100px; margin:20px; border-radius: 6px"
				  alt="profileImg"
				  src="images/test_profile.JPG">
			</div>
			<div style="margin: 30px 16px;">
				<button type="submit"
				 onclick="window.open('<%= request.getContextPath()%>/PhotoUpdate.jsp','photoUpdate',
				 'left=500,top=300,width=400,height=400,resizable=no, location=no')" >사진 등록/수정</button>
			</div><!-- location 주소창 보이기 속성은 오페라에서만 동작 -->
		</div>
				
		<div id="ProfileTextBox">
			<form action="" method="get">
				<table>
					<tr>
						<td>
							<button type="submit" id="updateBtn"><a href="ProfileUpdate.jsp">프로필 수정</a>
							</button>
						</td>
					</tr>
					<tr>
						<th>아이디 </th>
						<td>만두@test.com</td>
					</tr>
					<tr>
						<th>닉네임 </th>
						<td>맨두</td>
					</tr>
					<tr>
						<th>희망 포지션 </th>
						<td>프론트엔드</td>
					</tr>
					<tr>
						<th>사용 가능 도구</th>
						<td>타입스크립트, 리액트, 피그마</td>
					</tr>
					<tr>
						<th>지역 </th>
						<td>서울시 마포구</td>
					</tr>
					<tr>
						<th>희망 진행 방식 </th>
						<td>대면</td>
					</tr>
				</table>
			</form>
		</div><!-- end of #ProfileBox div-->
		
	</div> <!-- end of #wrapper div -->
</body>
</html>



