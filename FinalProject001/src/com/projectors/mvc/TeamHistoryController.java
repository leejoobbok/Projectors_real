package com.projectors.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeamHistoryController
{	
	//----해야될 것
	// 회의랑 작업 jsp 따로 받는 페이지만들어서 
	// 히스토리에 import (담벼락 했던것처럼) 해야하는데 시간안에 할 수 있을까..
	
	
	// 팀 히스토리 탭으로 이동
	@RequestMapping(value = "/TeamHistory.action", method = RequestMethod.GET)
	public String teamHistory()
	{
		String result = "";
		result = "/WEB-INF/view/TeamHistory.jsp";
		return result;
	}
	
	
}
