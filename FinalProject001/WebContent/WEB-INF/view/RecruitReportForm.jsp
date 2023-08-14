<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String recruitNo = request.getParameter("recruitNo"); //-- 이전 페이지로부터 넘겨받은 공고번호 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모집 공고 신고 : Projectors</title>
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
			<form action="sendRecruitReport.action" id="reportForm">
				<table style="margin: auto; margin-top: 10%;">
					<tr>
						<th colspan="2" style="font-size: x-large;">신고하기</th>
					</tr>
					<tr>
						<th colspan="2"><hr /></th>
					</tr>					
					<tr>
						<th>신고사유</th>
						<td>
							<select name="repReason" id="repReason">
								<option selected="selected">-- 사유 선택 --</option>
								<option value="1">부적절한 언어 사용</option>
								<option value="2">저작권 침해</option>
								<option value="3">도배 및 광고</option>
								<option value="4">개인정보 침해</option>
								<option value="5">허위사실유포</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="hidden" name="recruitNo" value="<%=recruitNo%>"></td>
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
							<button type="button" id="reportInsert">신고하기</button>
							<button type="button" id="closeReport">취소하기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>

