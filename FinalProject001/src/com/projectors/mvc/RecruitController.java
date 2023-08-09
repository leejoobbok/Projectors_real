package com.projectors.mvc;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RecruitController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "/recruitlist.action", method = RequestMethod.GET)
	public String recruitlist(Model model, String recruitNo)
	{
		IRecruitDAO dao = sqlsession.getMapper(IRecruitDAO.class);
		List<ArrayList<String>> tools = new ArrayList<ArrayList<String>>();
		List<ArrayList<RecruitDTO>> members = new ArrayList<ArrayList<RecruitDTO>>();
		
		model.addAttribute("lists", dao.lists());
		
		for (int i=0; i < dao.lists().size(); i++)
		{
			recruitNo = dao.lists().get(i).getRecruitNo();
			tools.add(dao.showTool(recruitNo));
			members.add(dao.countRecruitMember(recruitNo));
		}
		
	    model.addAttribute("tools", tools);
	    model.addAttribute("members", members);
		
	    model.addAttribute("regions", dao.optionRegion());
	    model.addAttribute("dotypes", dao.optionDoType());
	    model.addAttribute("poss", dao.optionPos());
	    
		String result = "/recruit_jakupjung/RecruitLists.jsp";
		return result;
	}

	@RequestMapping(value = "/getsubregion.action")
	@ResponseBody
	public String getsubregion(int regionNo)
	{
		IRecruitDAO dao = sqlsession.getMapper(IRecruitDAO.class);
		
		String result = "";
		
		if ( dao.subRegionList(regionNo).size() > 1)
			result = "<option>전체</option>";
		
		for (String lists : dao.subRegionList(regionNo))
			result += "<option value='" + lists + "'>" + lists + "</option>";
		
		return result;
	}
	
	@RequestMapping(value = "/recruitarticle.action", method = RequestMethod.GET)
	public String recruitarticle(Model model, String recruitNo)
	{
		IRecruitDAO dao = sqlsession.getMapper(IRecruitDAO.class);
		
		model.addAttribute("article", dao.article(recruitNo));
		model.addAttribute("tools", dao.showTool(recruitNo));
		model.addAttribute("countPos", dao.countPosRecruitMember(recruitNo));
		model.addAttribute("recruitMember", dao.recruitMember(recruitNo));
		
		String result = "/recruit_jakupjung/RecruitArticle.jsp";
		return result;
	}
	
}
