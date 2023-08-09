<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모집공고 :projectors</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/flexBoxOne.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/recruitLists.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	var regionNoChoice = "";
	var subRegionNameChoice = "";
	var posNoChoice = "";
	var doTypeNoChoice = "";
	
	// 지역선택 → 태그 올리기
	function changeRegionSelect()
	{
		var regionSelect = document.getElementById("region").value;
		
		var inlineTag = document.querySelector(".inlineTagReg");
        var newSpan = document.createElement("span");
        newSpan.className = "searchTag";

        while (inlineTag.firstChild)
        {
            inlineTag.removeChild(inlineTag.firstChild);
        }

		if (regionSelect !== "default" && regionSelect !== "")
		{
			var regionSelectValue = document.getElementById("region").querySelector('option[value="' + regionSelect + '"]').textContent;
	        newSpan.innerHTML = regionSelectValue + "<button type='submit' class='SearchDelBtn' onclick='deleteRegion()'>x</button>";
	        inlineTag.appendChild(newSpan);
	        
	        regionNoChoice = regionSelect;
		}
	}
	
	// 태그 x 버튼 → 지우기
	function deleteRegion()
	{
		var inlineTag = document.querySelector(".inlineTagReg");
        var newSpan = document.createElement("span");
        newSpan.className = "searchTag";

        while (inlineTag.firstChild)
        {
            inlineTag.removeChild(inlineTag.firstChild);
        }

        regionNoChoice = "";
        subRegionNameChoice = "";
	}

	// 상세지역선택 → 태그 올리기
	function changeSubregionSelect()
	{
		var subRegionSelect = document.getElementById("subRegion").value;
		
		var inlineTag = document.querySelector(".inlineTagReg");
        var newSpan = document.createElement("span");
        newSpan.className = "searchTag";

        while (inlineTag.firstChild.nextSibling)
        {
            inlineTag.removeChild(inlineTag.firstChild.nextSibling);
        }
        
		if (subRegionSelect !== "default" && subRegionSelect !== "")
		{
			var subRegionSelectValue = document.getElementById("subRegion").querySelector('option[value="' + subRegionSelect + '"]').textContent;
	        newSpan.innerHTML = subRegionSelectValue + "<button type='submit' class='SearchDelBtn' onclick='deleteSubRegion()'>x</button>";
	        inlineTag.appendChild(newSpan);

	        subRegionNameChoice = subRegionSelect;
		}
	}

	// 태그 x 버튼 → 지우기
	function deleteSubRegion()
	{
		var inlineTag = document.querySelector(".inlineTagReg");
        var newSpan = document.createElement("span");
        newSpan.className = "searchTag";

        while (inlineTag.firstChild.nextSibling)
        {
            inlineTag.removeChild(inlineTag.firstChild.nextSibling);
        }
        
        subRegionNameChoice = "";
	}

	// 포지션선택 → 태그 올리기
	function changePosSelect()
	{
		var posSelect = document.getElementById("position").value;
		
		var inlineTag = document.querySelector(".inlineTagPos");
        var newSpan = document.createElement("span");
        newSpan.className = "searchTag";

        while (inlineTag.firstChild)
        {
            inlineTag.removeChild(inlineTag.firstChild);
        }

		if (posSelect !== "default" && posSelect !== "")
		{
			var posSelectValue = document.getElementById("position").querySelector('option[value="' + posSelect + '"]').textContent;
	        newSpan.innerHTML = posSelectValue + "<button type='submit' class='SearchDelBtn' onclick='deletePos()'>x</button>";
	        inlineTag.appendChild(newSpan);

	    	posNoChoice = posSelect;
		}
	}

	// 태그 x 버튼 → 지우기
	function deletePos()
	{
		var inlineTag = document.querySelector(".inlineTagPos");
        var newSpan = document.createElement("span");
        newSpan.className = "searchTag";

        while (inlineTag.firstChild)
        {
            inlineTag.removeChild(inlineTag.firstChild);
        }
        
        posNoChoice = "";
	}

	// 진행방식선택 → 태그 올리기
	function changeDoTypeSelect()
	{
		var doTypeSelect = document.getElementById("doType").value;
		
		var inlineTag = document.querySelector(".inlineTagDo");
        var newSpan = document.createElement("span");
        newSpan.className = "searchTag";

        while (inlineTag.firstChild)
        {
            inlineTag.removeChild(inlineTag.firstChild);
        }

		if (doTypeSelect !== "default" && doTypeSelect !== "")
		{
			var doTypeSelectValue = document.getElementById("doType").querySelector('option[value="' + doTypeSelect + '"]').textContent;
	        newSpan.innerHTML = doTypeSelectValue + "<button type='submit' class='SearchDelBtn' onclick='deleteDo()'>x</button>";
	        inlineTag.appendChild(newSpan);

	    	doTypeNoChoice = doTypeSelect;
		}
	}

	// 태그 x 버튼 → 지우기
	function deleteDo()
	{
		var inlineTag = document.querySelector(".inlineTagDo");
        var newSpan = document.createElement("span");
        newSpan.className = "searchTag";

        while (inlineTag.firstChild)
        {
            inlineTag.removeChild(inlineTag.firstChild);
        }

    	doTypeNoChoice = "";
	}
	
	// ajax 로 지역번호 넘겨서 상세지역 option 가져오기
	$(function() {
		$("#region").change(function()
		{
			var regionNo = $.trim($(this).val());
			
			$.ajax(
			{
				type:"POST"
				, url:"getsubregion.action"
				, data:{ regionNo: regionNo }
				, contentType:  "application/x-www-form-urlencoded; charset=UTF-8"
				, success:function(result)
				{
					// alert(result);
					$('#subRegion').html(result);
				}
				, complete:changeRegionSelect
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});
		});
	});
	
	
	
	function searchRecruit()
	{
		alert(regionNoChoice + " / " + subRegionNameChoice + " / " + posNoChoice + " / " + doTypeNoChoice);
	}

	

</script>


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
			
			<div class="filter">
				<h3 class="inlineTitle">조건 검색</h3>
				<div class="inlineTagReg"></div>
				<div class="inlineTagPos"></div>
				<div class="inlineTagDo"></div>
			</div> <!-- end.filter -->
			
			<div class="search">
				<ul>
					<li>
						<span>지역</span>
						<select class="select" id="region" name="region">
							<option>-</option>
						<c:forEach var="regions" items="${regions }">
							<option value="${regions.regionNo }">${regions.regionName }</option>
						</c:forEach>
						</select>
					</li>
					<li>
						<span>상세 지역</span>
						<select class="select" id="subRegion" name="subRegion" onchange="changeSubregionSelect()">
						</select>
					</li>
					<li>
						<span>포지션</span>
						<select class="select" id="position" name="position" onchange="changePosSelect()">
							<option>-</option>
						<c:forEach var="poss" items="${poss }">
							<option value="${poss.posNo }">${poss.posName }</option>
						</c:forEach>
						</select>
					</li>
					<li>
						<span>진행방식</span>
						<select class="select" id="doType" name="doType" onchange="changeDoTypeSelect()">
							<option>-</option>
						<c:forEach var="dotypes" items="${dotypes }">
							<option value="${dotypes.doTypeNo }">${dotypes.doTypeName }</option>
						</c:forEach>
						</select>
					</li>
					<li>
						<button type="button" class="searchBtn" id="searchBtn" onclick="searchRecruit()">검색</button>
					</li>
				</ul>
				<hr style="width: 70%">
			</div> <!-- end.search -->
			
			<div class="recruitLists">
				
				<c:forEach var="recruit" items="${lists }" varStatus="status">
					<div class="recruitList">
					<ul>
					
						<li>
							<span>모집 마감일  ${recruit.deadlineDate } (D-${recruit.dDay })</span>
							<span style="margin-left:60px;">프로젝트 기간 ${recruit.prjStart } ~ ${recruit.prjEnd } </span>
							<span style="margin-left:60px;">모집 인원  5 / 6 </span>
						</li>
						<li>
							<span class="recruitTitle"><a href="PostFormSample.jsp">${recruit.title } </a></span>
							<span class="recruitStatus">모집중</span>
							<!-- <span class="endStatus">모집마감</span> -->
						</li>
						<li>
							<p>${recruit.content }
						    </p>
						</li>
						<li>
							<c:forEach var="tool" items="${tools[status.index] }">
								<span>${tool }</span>
							</c:forEach>
							<span>${recruit.doTypeName }</span>
							<span>${recruit.regionName }</span>
							<span>${recruit.subRegionName }</span>
						</li>
						
					</ul>
					</div> <!-- end.recruitList -->
				</c:forEach>
				
			
		</div> <!-- end.container -->
	</div> <!-- end.main -->
	
	<div class="footer">
		<!-- footer -->
		<c:import url="Footer.jsp"></c:import>
	</div>
</div>


</body>
</html>
