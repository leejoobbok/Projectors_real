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
			<th width="80px">담당자</th>
			<th width="240px">작업 제목</th>
			<th width="160px">작업일</th>
		</tr>
		<c:forEach items="${workHistory}" var="workHistory">	
		<tr>
			<td>${workHistory.nickName }</td>
			<td>${workHistory.workTitle }</td>
			<td><span style="font-size: 9pt; color: gray;">${workHistory.workDate}</span></td>
		</tr>
    	</c:forEach>
    </table>
</body>

</body>
</html>