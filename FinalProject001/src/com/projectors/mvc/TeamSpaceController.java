package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeamSpaceController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value="/teamSpaceMain.action", method = RequestMethod.GET)
	public String teamSpaceMain()
	{
		String url="";
		
		url="/WEB-INF/view/TeamSpace.jsp";
				
		return url;
	}
	
	@RequestMapping(value="/teamSpaceNoticeLists.action", method = RequestMethod.GET)
	public String teamSpaceNoticeLists()
	{
		String url="";
		
		
		
		url="/WEB-INF/view/TeamNoticeInsert.jsp";
		
		return url;
	}
	
	
	
	@RequestMapping(value="/teamMemberInfo.action", method= RequestMethod.GET)
	public String teamMemberInfo()
	{
		String url="";
		
		
		url="/WEB-INF/view/TeamMemberInfo.jsp";
		
		return url;
	}
	
	

}
