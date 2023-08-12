package com.projectors.mvc;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "/projectorsmain.action", method = RequestMethod.GET)
	public String projectorsmain(Model model, String recruitNo)
	{
		IRecruitDAO dao = sqlsession.getMapper(IRecruitDAO.class);
		List<ArrayList<String>> tools = new ArrayList<ArrayList<String>>();
		List<ArrayList<RecruitDTO>> recruitMember = new ArrayList<ArrayList<RecruitDTO>>();
		
		model.addAttribute("lists", dao.lists());
		
		for (int i=0; i < dao.lists().size(); i++)
		{
			recruitNo = dao.lists().get(i).getRecruitNo();
			tools.add(dao.showTool(recruitNo));
			recruitMember.add(dao.countPosRecruitMember(recruitNo));
		}
		
	    model.addAttribute("tools", tools);
	    model.addAttribute("recruitMember", recruitMember);
	    
		// String result = "/WEB-INF/view/RecruitLists.jsp";
		return "/recruit_jakupjung/ProjectorsMainPage.jsp";
	}

}