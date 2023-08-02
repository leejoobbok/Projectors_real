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
<title>내가 찜한 공고리스트</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style type="text/css">

	/*====================================================*/
	
	li {list-style-type: none;}		/*리스트 스타일 제거 */
	
	
	
	#myPickList 				/* 찜 리스트(썸네일들)*/
	{
		/* border: 1px solid red; */
		margin: 10px;
		overflow :hidden;   /*플로팅 요소 자식요소로 포함*/ 
		
	}
	
	.myPickThumbnail			/* 찜 공고 썸네일(개별) */
	{
		border: solid 1px;
		border-radius: 15px;
		width: 260px;
		height: 300px;
		padding: 10px;
		margin-left: 30px;
		margin-bottom: 30px;
		float: left;
		box-sizing: border-box;
	}
	.myPickThumbnail img			/*공고 썸네일 사용도구 이미지*/
	{
		width: 30px;
	}
	
	#toolBtnBox					  /*도구 버튼 영역*/
	{
		/* border: solid 1px; */
		margin: 30px 0px 5px 0px;
	}
	#toolBtnBox li	{display: inline;}	/*도구 버튼 감싸는 li */
	
	#toolBtnBox button					/*도구 버튼*/
	{
		font-size: 14pt;
		font-weight: bold;
		border-radius: 20px;
		padding: 10px;
	}
	.toolName 						/* 도구 이름*/
	{
		padding-bottom: 20px;
	}
	


</style>

</head>
<body>
	
	<div id="myPickList">
		<div class="myPickThumbnail" onclick="location.href='PostFormSample.jsp';">
			<ul>
				<li>마감일 | 2023.09.01</li>
				<li>반려동물 집사를 위한...</li>
				<li>2023.09.20 ~ 2023.11.30</li>
				<li>모집 인원</li>
				<li>프론트 2/2 </li>
				<li>백엔드 1/3</li>
				<li>사용도구</li>
				<li>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
				</li>
			</ul>
		</div>	
		<div class="myPickThumbnail" onclick="location.href='PostFormSample.jsp';">
			<ul>
				<li>마감일 | 2023.09.01</li>
				<li>반려동물 집사를 위한...</li>
				<li>2023.09.20 ~ 2023.11.30</li>
				<li>모집 인원</li>
				<li>프론트 2/2 </li>
				<li>백엔드 1/3</li>
				<li>사용도구</li>
				<li>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
				</li>
			</ul>
		</div>	
		<div class="myPickThumbnail" onclick="location.href='PostFormSample.jsp';">
			<ul>
				<li>마감일 | 2023.09.01</li>
				<li>반려동물 집사를 위한...</li>
				<li>2023.09.20 ~ 2023.11.30</li>
				<li>모집 인원</li>
				<li>프론트 2/2 </li>
				<li>백엔드 1/3</li>
				<li>사용도구</li>
				<li>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
				</li>
			</ul>
		</div>	
		<div class="myPickThumbnail" onclick="location.href='PostFormSample.jsp';">
			<ul>
				<li>마감일 | 2023.09.01</li>
				<li>반려동물 집사를 위한...</li>
				<li>2023.09.20 ~ 2023.11.30</li>
				<li>모집 인원</li>
				<li>프론트 2/2 </li>
				<li>백엔드 1/3</li>
				<li>사용도구</li>
				<li>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
				</li>
			</ul>
		</div>	
		<div class="myPickThumbnail" onclick="location.href='PostFormSample.jsp';">
			<ul>
				<li>마감일 | 2023.09.01</li>
				<li>반려동물 집사를 위한...</li>
				<li>2023.09.20 ~ 2023.11.30</li>
				<li>모집 인원</li>
				<li>프론트 2/2 </li>
				<li>백엔드 1/3</li>
				<li>사용도구</li>
				<li>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
				</li>
			</ul>
		</div>	
		<div class="myPickThumbnail" onclick="location.href='PostFormSample.jsp';">
			<ul>
				<li>마감일 | 2023.09.01</li>
				<li>반려동물 집사를 위한...</li>
				<li>2023.09.20 ~ 2023.11.30</li>
				<li>모집 인원</li>
				<li>프론트 2/2 </li>
				<li>백엔드 1/3</li>
				<li>사용도구</li>
				<li>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
				</li>
			</ul>
		</div>	
		<div class="myPickThumbnail" onclick="location.href='PostFormSample.jsp';">
			<ul>
				<li>마감일 | 2023.09.01</li>
				<li>반려동물 집사를 위한...</li>
				<li>2023.09.20 ~ 2023.11.30</li>
				<li>모집 인원</li>
				<li>프론트 2/2 </li>
				<li>백엔드 1/3</li>
				<li>사용도구</li>
				<li>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
				</li>
			</ul>
		</div>	
		<div class="myPickThumbnail" onclick="location.href='PostFormSample.jsp';">
			<ul>
				<li>마감일 | 2023.09.01</li>
				<li>반려동물 집사를 위한...</li>
				<li>2023.09.20 ~ 2023.11.30</li>
				<li>모집 인원</li>
				<li>프론트 2/2 </li>
				<li>백엔드 1/3</li>
				<li>사용도구</li>
				<li>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
					<image src="images/java.png"/>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>


