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
<title>최상단 바(로그인 여부에 따라 분기)</title>

<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

	#upperBarMenus
	{
		font-size: 12pt;
		font-weight: bold;
	}
	#msgBtn	/* 쪽지 버튼 스타일 제거 +  a태그와 디자인 통일 */
	{	
		border: 0;
  		background-color: transparent;
		font-size: 12pt;
		font-weight: bold;
	}
	
</style>

</head>
<body>
	<div id="upperBarMenus">
	
		<a href="Login.jsp">로그인/회원가입</a>
		
		<!-- ======= 로그인 시 보이는 메뉴 ======= -->
		
		<a href="MyPage.jsp">마이페이지</a>
		
		<div style="display: inline;" >
			<button type="submit" id="msgBtn"
			 onclick="window.open('MsgList.jsp','MsgList','left=600,top=300,width=840,height=620,resizable=no, location=no')" >쪽지</button>
		</div>
		<!-- ===================================== -->
		
		<a href="faq-list.action">FAQ/문의</a>
	</div>
</body>
</html>

<!-- a태그에도 팝업 걸 수 있다는데.. 잘 안돼서 일단 주석하고 버튼으로 . -->
		<!-- <a href="MsgList.jsp" onclick="open(this.href,'width=820,height:420','top:400'
				,'left:400','resizable=no','_blank','scrollbars=no'); return false;">쪽지</a> -->
 
<!-- button 태그에 팝업 걸기 
 <div style="margin: 30px 16px;">
	<button type="submit"
	 onclick="window.open('PhotoUpdate.jsp','photoUpdate',
	 'left=500,top=300,width=400,height=400,resizable=no, location=no')" >사진 등록/수정</button>
</div><!-- location 주소창 보이기 속성은 오페라에서만 동작 
-->
 
 