package com.projectors.mvc;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


//import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeamSpaceController
{	
	
	@Autowired
	//private SqlSession sqlSession;
	
	// 메인에서 IMPORT한 메뉴바 클릭시 각 메뉴별 액션태그에 맞는 컨트롤러가 이미 있어서 충돌나는것같음 
	// 팀 스페이스 메인으로 이동
	
	@RequestMapping(value="/teamSpaceMain.action", method = RequestMethod.GET)
	public String teamSpaceMain(HttpServletRequest request)
	{	/*
		HttpSession session = request.getSession();
		
		String pinNo = (String)session.getAttribute("pinNo");
		
		if (pinNo == null)
		{
			return "/WEB-INF/view/Login.jsp";
		}
		*/
		
		return "/WEB-INF/view/TeamSpace.jsp";
				
	}
	

}
