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
<title>회원 관리 : Projectors</title>


<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">

	/*==========  상단 공통 요소 (메뉴바까지) ==================*/
	#logoBox 					   /*로고 이미지*/
	{
		text-align: center;
		height: 100px;
		padding-top: 20px;
		/* border: 1px solid; */
	}
	#upperBarBox 				 /*최상단 바(로그인..쪽지)*/
	{
		text-align: right;
	}
	#menuBar					/*메뉴바(메인|공지..)*/
	{
		text-align: center;
		position :sticky;  
		padding-top: 32px;
	    top: -32px;
	}
	/*==========================================================*/
	
	.table
	{
		width: 90%;
	}
	
	
	#userSearch
	{
		text-align: center;
	}
	
	.userList
	{
		margin: auto;
		margin-top: 5%;
		margin-bottom: 5%;
		text-align: center;
	}
	
	#paging
	{
		margin: auto;
		text-align: center;
	}
	
	th
	{
		border-bottom: 1px solid gray;
	}
	
</style>

<script type="text/javascript">

</script>
</head>


<body>	

	<div id="root">
	 	
	 	<!-- ========== 공통 상단 영역( 메뉴바까지) ======================== -->
		
		<div id="upperBarBox">		<!-- 로그인/ 회원가입 문의/ 쪽지 -->
			<c:import url="AdminUpperBar.jsp"></c:import>
		</div>	
		<div id="logoBox">    		<!-- 로고 이미지 -->
			<a href="AdminMainPage.jsp"><img src="images/tmp_logo_admin.jpg"/></a>
		</div>
		<div id="menuBar">						<!-- 메뉴바( 메인 | 공지..) -->
			<c:import url="AdminBar.jsp"></c:import>
		</div>
		<!-- ============================================================= -->
	
		<div id="userSearch">
			유저 검색
			<select id="searchKey" name="searchKey">
				<option value="1">아이디</option>
				<option value="2">닉네임</option>
			</select>
			<input type="text" style="width: 30%;"/>
			<button>검색</button>
		</div>
		
		<div id="userList">
		<!-- 닉네임 클릭 시 해당 유저 프로필 확인 -->
			<table class="table userList">
				<tr>
					<th>아이디</th>
					<th>닉네임</th>
					<th>가입일자</th>
				</tr>
				<tr>
					<td>aigo@naver.com</td>
					<td><a href="">아이고</a></td>
					<td>2023.07.25</td>
				</tr>
				<tr>
					<td>haigo@naver.com</td>
					<td><a href="">하이고</a></td>
					<td>2023.07.27</td>
				</tr>
			</table>
		</div>
		
		
		<div id="paging">
			[페이징 처리처리처리처리]
		</div>
		
	</div><!-- end of #root div -->

</body>
</html>
<!--
2.유저 관리 기능 
2-1. 관리자 페이지를 통해 유저 데이터를 검색할 수 있고, 사이트 운영정책에 근거하여    
        사용자의 계정을 정지/탈퇴 상태로 전환할 수 있다.
2-2.  일시, 영구 정지 회원의 계정 정보와 사유를 별도의 목록으로 확인할 수 있다.
2-3.  탈퇴 회원의 계정 정보와 사유를 별도의 목록으로 확인할 수 있다.
-->