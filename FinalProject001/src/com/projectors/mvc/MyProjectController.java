package com.projectors.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyProjectController
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/myproject.action", method = RequestMethod.GET)
	public String myProject(Model model, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		IMyProjectDAO dao = sqlSession.getMapper(IMyProjectDAO.class);
		
		String pinNo = (String) session.getAttribute("pinNo");
		
		String url="";
	
		
		
		int checkPresentProject = dao.checkPresentProject(pinNo);
		/* System.out.println("확인용 카운트:" + checkPresentProject); */
		
		
		if (checkPresentProject == 0)
		{
			model.addAttribute("checkPresentProject", checkPresentProject);
		}
		else
		{
			MyProjectDTO projectInfoDTO =  dao.presentProject(pinNo);
			
			ArrayList<MyProjectDTO> memberDTO = dao.getMember(projectInfoDTO.getRecruitNo());
			
			projectInfoDTO.setCount(dao.getMemberCount(projectInfoDTO.getRecruitNo()));
			
			ArrayList<MyProjectDTO> positionDTO = dao.positionCount(projectInfoDTO.getRecruitNo());
			
			model.addAttribute("projectInfoDTO", projectInfoDTO);
			model.addAttribute("memberDTO", memberDTO);
			model.addAttribute("positionDTO", positionDTO); 
			model.addAttribute("checkPresentProject", checkPresentProject);
		}
		
		
		url="MyProjectHistory.jsp";
		
		return url;
	}
	
	
	@RequestMapping(value="/myPastProject.action", method = RequestMethod.GET)
	public String myPastProject(Model model, HttpServletRequest request)
	{
		String url="";
		
		HttpSession session = request.getSession();
		
		IMyProjectDAO dao = sqlSession.getMapper(IMyProjectDAO.class);
		
		String pinNo = (String) session.getAttribute("pinNo");
		
		
		int checkPastProject = dao.checkPastProject(pinNo);
		
		if (checkPastProject == 0)
		{
			model.addAttribute("checkPastProject", checkPastProject);
		}
		else
		{
			ArrayList<MyProjectDTO> pastProjectDTO = dao.pastProject(pinNo);
			
			
			for (MyProjectDTO pastProject : pastProjectDTO)
			{
				pastProject.setCount(dao.getMemberCount(pastProject.getRecruitNo()));
			}
			
			model.addAttribute("pastProjectDTO", pastProjectDTO);
			model.addAttribute("memberCountDTO", pastProjectDTO);
			model.addAttribute("checkPastProject", checkPastProject);
			
			
			
			
		}
		
		
	
		url="MyPastProjectHistory.jsp";
		
		return url;
	}
	
	
}
