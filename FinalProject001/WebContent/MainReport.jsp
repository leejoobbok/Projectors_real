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
<title>신고하기 : Projectors</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<style type="text/css">

	*
	{
		font-size: 12pt;
		font-weight: bold;
	}
	
	#logoBox 					   /*로고 이미지*/
	{
		padding-top: 100px;
		text-align: center;
		height: 100px;
		padding-top: 20px;
	}
	
	#reportBox
	{
		width: 500px;
		height: 300px;
		margin: auto;
		border: 3px solid black;
	}
	
</style>
<script type="text/javascript">
	$(function()
	{
		$("#reportInsert").click(function()
		{
			$("#reportForm").submit();
		});
		
		$("#closeReport").click(function()
		{
			window.close();
		});
	});
</script>
</head>
<body>
		<div id="logoBox"> 
			<img src="images/tmp_logo.JPG"/>
		</div>	

		<div id="reportBox">
			<form action="AfterReport.jsp" id="reportForm">
				<table style="margin: auto; margin-top: 10%;">
					<tr>
						<th colspan="2" style="font-size: x-large;">신고하기</th>
					</tr>
					<tr>
						<th colspan="2"><hr /></th>
					</tr>					
					<tr>
						<th>신고대상</th>
						<td><input type="text" readonly="readonly" value="닉네임"/></td>						
					</tr>
					<tr>
						<th>신고사유</th>
						<td>
							<select name="reason" id="reason">
								<option selected="selected">-- 사유 선택 --</option>
								<option value="1">욕설/비방</option>
								<option value="2">관련없는 내용</option>
								<option value="3">...</option>
								<option value="4">...</option>
								<option value="5">...</option>
							</select>
						</td>
					</tr>
					<tr style="text-align: center;">
						<td colspan="2" style="color: red; font-size: x-small;">
							※ 허위 신고 시, 재제를 받을 수 있습니다.
						</td>
					</tr>
					<tr>
						<th colspan="2"><hr /></th>
					</tr>					
					<tr style="text-align: center;">
						<td colspan="2">
							<button id="reportInsert" >신고하기</button>
							<button id="closeReport">취소하기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>

