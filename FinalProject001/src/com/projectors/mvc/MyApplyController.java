package com.projectors.mvc;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyApplyController
{
	@Autowired
	private SqlSessionFactory sessionFactory;
	
	@RequestMapping(value="/myapply.action",method = RequestMethod.GET )
	public String myApply()
	{
		
		return "/WEB-INF/view/MyApply.jsp";
	}
}
