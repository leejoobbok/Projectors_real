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
<title>팀스페이스 > 히스토리 > 임포트용 페이지</title>
</head>
<body>
	<table class="ArticleTbl">
	    <tr class="firstTr">
	    	<th width="220px">회의 제목</th>
			<th width="160px">회의일</th>
		<tr>
		<c:forEach items="${meetingHistory}" var="meetingHistory">
		<tr>
			<td>${meetingHistory.meetingTitle }</td>
			<td><span style="font-size: 9pt; color: gray;">${meetingHistory.meetingDate}</span></td>
		</tr>
		</c:forEach>
	</table>
    
</body>
</html>