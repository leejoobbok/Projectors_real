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
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/flexBoxTwo.css">
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
		<h2 class="pageTitle">모집공고 둘러보기</h2>
		<br>
		
		<div class="container">
			
			
			
			
			
			
			
			
			
			
		</div> <!-- end.container -->
	</div> <!-- end.main -->
	
	
	
	<div class="footer">
		<!-- footer -->
		<c:import url="Footer.jsp"></c:import>
	</div>
</div>


</body>
</html>
