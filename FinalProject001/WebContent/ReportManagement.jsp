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
<title>신고처리대기-공고 : Projectors</title>


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
	/*=========================서브메뉴바=========================*/
	a 
	{
		text-decoration: none;
		padding: 4px 14px 4px 14px;
	}
	
	#subMenuBar
	{
		text-align: left;
		font-size: 12pt;
		font-weight: bold;
		background-color: white;
	}
	/*==========================================================*/

	/* ====================== 좌측바 ========================= */
	#leftBar
	{
		float: left;
		width: 20%;
		height : 300px;
		text-align: center;
	}
	
	.btnHeight
	{
		padding: 10px;
		border-right: 3px solid black;
	}
	
	/* ======================================================= */
	
	
	/* ====================== 우측바 ========================= */
	#rightBar
	{
		float: right;
		width: 70%;
		padding : 0% 5% 0% 5%;
	}
	
	.blackBtn
	{
		font-size: x-small;
		color: white;
		background-color: black;
		border: none;
	}
	.table
	{
		text-align: auto;
		width: 100%;
	}
	
	th
	{
		border-bottom: 1px solid gray;
	}
	
	td
	{
		text-align: center;
	}
	
	.right-left { width: 80%;}
	.right-right { width: 10%;}
	/* ======================================================= */
	
	#paging
	{
		margin: auto;
		text-align: center;
	}
	
</style>

<script type="text/javascript">
	/* $(function()
	{
		$(".manageReport").click(function(event) {
		    event.preventDefault();

		    var newWindow = window.open('managementReport.action?reportedNickName='+$("#reportedNickName").val()
		    				, 'manageReport', 'left=500,top=300,width=600,height=500,resizable=no');
		    
		    newWindow.onbeforeunload = function() 
		    {
		        var reguNo = newWindow.reguNo; // 첫 번째 int 값
		        var reguPeriodNo = newWindow.reguPeriodNo; // 두 번째 int 값
		        
		        if (reguNo != undefined && reguPeriodNo != undefined) 
		        {
		        	$('#reguNo').val(reguNo);
		        	$('#reguPeriodNo').val(reguPeriodNo);
		        	
		            $('#reportForm').attr('action', 'clearManageReport.action?repResultNo='+$(".manageReport").val());
		            $('#reportForm').submit(); // 폼 제출
		    	}
		        
		    };
		});

		
		$(".cancelReport").click(function()
		{
			if (confirm("신고처리를 반려하시겠습니까?"))
			{
				$('#reportForm').attr('action', 'rejectManageReport.action?repResultNo='+$(".cancelReport").val());
			}
		});
		
	});
	 */

</script>
</head>


<body>	
	 	<!-- ========== 공통 상단 영역( 메뉴바까지) ======================== -->
		
		<div id="upperBarBox">		<!-- 로그인/ 회원가입 문의/ 쪽지 -->
			<c:import url="AdminUpperBar.jsp"></c:import>
		</div>	
		<div id="logoBox">    		<!-- 로고 이미지 -->
			<a href="adminMain.action"><img src="images/tmp_logo_admin.jpg"/></a>
		</div>
		<div id="menuBar">						<!-- 메뉴바( 메인 | 공지..) -->
			<c:import url="AdminBar.jsp"></c:import>
		</div>
		<!-- ============================================================= -->

<div>
<h1>신고 관리</h1>
<hr />
</div>
<br />


<div id="leftBar">
	<div class="btnHeight">
		<button type="button">
			<a href="reportRecruit.action">신고 처리 대기</a>
		</button>
	</div>
	<div class="btnHeight">
		<button type="button">
			<a href="ReportManagementComplete.jsp">신고 처리 완료</a>
		</button>
	</div>
</div><!-- end #leftBar -->


<div id="rightBar">
	<div>
		<h2>
			신고 처리 대기 - 공고
		</h2> 
	</div>
	<div id="subMenuBar">
		<a href="reportRecruit.action" style="background-color: gray; color: white; border-radius: 5px;">공고</a>
		<a href="reportApply.action">지원서</a>
		<a href="reportComm.action">댓글</a>
		<a href="reportNote.action">쪽지</a>
		<!-- <a href="reportTeamSpace.action">팀스페이스</a> -->
		<hr>
	</div>
	<br />

	<div>
	<form action="" method="get" id="reportForm" name="reportForm">
		<table class="table">
			<tr>
				<th>신고번호</th>
				<th>공고번호</th><!-- 클릭시 해당 게시물 이동 -->
				<th>피신고자</th><!-- 클릭시 해당 유저 프로필 이동 -->
				<th>신고자</th><!-- 클릭시 해당 유저 프로필 이동 -->
				<th>사유</th>
				<th>신고일자</th>
				<th>신고처리</th><!-- 버튼에 따라 처리결과 value 넘김 -->
			</tr>
			<c:forEach var="report" items="${lists }" varStatus="i">
				<tr class="${i.count }">
					<td>${report.repNo }</td>
					<td><a href="recruitarticle.action?recruitNo=${report.postNo }">${report.postNo }</a></td>
					<td>
						${report.reportedNickName }
						<input type="hidden" class="reportedNickName" name="reportedUserPinNo" 
							value="${report.reportedNickName }" />
						<input type="hidden" class="reportedUserPinNo" name="reportedUserPinNo" 
							value="${report.reportedUserPinNo }" />
					</td>
					<td>
						${report.reportNickName }
						<input type="hidden" class="reportUserPinNo" name="reportUserPinNo" 
							value="${report.reportUserPinNo }" />					
					</td>
					<td>
						${report.repReason } 
						<input type="hidden" class="reguNo" name="reguNo"/>
						<input type="hidden" class="reguPeriodNo" name="reguPeriodNo"/>
					</td>
					<td>
						${report.reportDate }
					</td>
					<td>
						<button type="button" class="manageReport" name="repResultNo" value="1" onclick="manageReport(this)">처리</button>
						<button type="button" class="cancelReport" name="repResultNo" value="0" onclick="cancelReport(this)">반려</button>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	</div>

	<div id="paging">
		[페이징 처리처리처리처리]
	</div>

</div><!-- end #rightBar -->

</body>
</html>
