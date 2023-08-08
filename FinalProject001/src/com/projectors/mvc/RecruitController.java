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
	public String recruitlist(Model model, String sid)
	{
		IRecruitDAO dao = sqlsession.getMapper(IRecruitDAO.class);
		List<ArrayList<String>> tools = new ArrayList<ArrayList<String>>();
		
		model.addAttribute("lists", dao.lists());
		
		for (int i=0; i < dao.lists().size(); i++)
		{
			sid = dao.lists().get(i).getRecruitNo();
			tools.add(dao.showTool(sid));
		}
		
	    model.addAttribute("tools", tools);
		
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
		System.out.println(regionNo);
		IRecruitDAO dao = sqlsession.getMapper(IRecruitDAO.class);
		// ArrayList<String> subRegList = dao.subRegionList(regionNo);
		
		// ArrayList<String> subRegList = new ArrayList<String>();
		
		String result = "";
		for (String lists : dao.subRegionList(regionNo))
			result += "<option value='" + lists + "'>" + lists + "</option>";
		
		System.out.println(result);
		/*
		StringBuilder result = new StringBuilder();
	    for (String item : subRegList) {
	        result.append("<option value='").append(item).append("'>").append(item).append("</option>");
	    }
	    */
		return result;
	}
	
	
}
