package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPostController
{
	@Autowired
	private SqlSession session;
	
	
	@RequestMapping(value="/mypost.action",method = RequestMethod.GET )
	public String mypost()
	{
		return "/WEB-INF/view/MyPostLists.jsp";
	}

	@RequestMapping(value="/mypastpost.action",method = RequestMethod.GET )
	public String mypastpost()
	{
		return "/WEB-INF/view/MyPastPostLists.jsp";
	}
}
