package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyApplyController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="/myapply.action",method = RequestMethod.GET )
	public String myApply(Model model)
	{
		return "/WEB-INF/view/MyApply.jsp";
	}
	
	

	@RequestMapping(value="/mypastapply.action",method = RequestMethod.GET )
	public String mypastapply(Model model)
	{
		return "/WEB-INF/view/MyPastApply.jsp";
	}
}
