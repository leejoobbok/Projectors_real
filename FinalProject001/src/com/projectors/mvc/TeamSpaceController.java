package com.projectors.mvc;


import javax.servlet.http.HttpServletRequest;

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
	
	// 팀 스페이스 메인으로 이동
	@RequestMapping(value="/teamSpaceMain.action", method = RequestMethod.GET)
	public String teamSpaceMain()
	{
		String url="";
		
		url="/WEB-INF/view/TeamSpace.jsp";
				
		return url;
	}

	
	// 팀 공지게시판 메인으로 이동 
	@RequestMapping(value="/teamNoticeList.action", method = RequestMethod.GET)
	public String teamSpaceNoticeLists()
	{
		String url="";

		url="/WEB-INF/view/TeamNoticeList.jsp";
		
		return url;
	}
	
	// 내 작업실로 이동
	
	// 회의록 게시판 메인으로 이동 
	@RequestMapping(value="/TeamMeetingList.action", method = RequestMethod.GET)
	public String TeamMeetingList()
	{
		String url="";

		url="/WEB-INF/view/TeamMeetingList.jsp";
		
		return url;
	}
	
	
	
	// 팀 멤버정보로 이동 
	@RequestMapping(value="/teamMemberInfo.action", method= RequestMethod.GET)
	public String teamMemberInfo()
	{
		String url="";
		
		
		url="/WEB-INF/view/TeamMemberInfo.jsp";
		
		return url;
	}
	
	//팀 스페이스 나가기(메인으로)
	@RequestMapping(value="/projectorsmain.action", method= RequestMethod.GET)
	public String backTomain()
	{
		String url="";
		url="/WEB-INF/view/ProjectorsMainPage.jsp";
		return url;
	}

}
