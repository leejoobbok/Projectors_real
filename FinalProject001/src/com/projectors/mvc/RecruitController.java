package com.projectors.mvc;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	/*
	@RequestMapping(value = "/searchrecruitlist.action", method = RequestMethod.GET)
	public String searchrecruitlist(Model model, String recruitNo, String regionName, String subRegionName, String posNo, String doTypeName)
	{
		IRecruitDAO dao = sqlsession.getMapper(IRecruitDAO.class);
		List<ArrayList<String>> tools = new ArrayList<ArrayList<String>>();
		List<ArrayList<RecruitDTO>> members = new ArrayList<ArrayList<RecruitDTO>>();
		
		System.out.println(1);
		System.out.println(regionName);
		System.out.println(subRegionName);
		System.out.println(posNo);
		System.out.println(doTypeName);

		if (regionName==null)
			regionName = "1";

		if (subRegionName==null)
			subRegionName = "2";

		if (posNo==null)
			posNo = "3";

		if (doTypeName==null)
			doTypeName = "4";


		System.out.println(2);
		System.out.println(regionName);
		System.out.println(subRegionName);
		System.out.println(posNo);C

		
		List<RecruitDTO> searchResults = dao.searchLists(regionName, subRegionName, posNo, doTypeName);
		model.addAttribute("lists", searchResults);

		for (int i=0; i < searchResults.size(); i++)
		{
			recruitNo = searchResults.get(i).getRecruitNo();
			tools.add(dao.showTool(recruitNo));
			members.add(dao.countRecruitMember(recruitNo));
			
			System.out.println(i);
			System.out.println(recruitNo);
		}
		
	    model.addAttribute("tools", tools);
	    model.addAttribute("members", members);
		
	    model.addAttribute("regions", dao.optionRegion());
	    model.addAttribute("dotypes", dao.optionDoType());
	    model.addAttribute("poss", dao.optionPos());
	    
		String result = "/recruit_jakupjung/RecruitLists.jsp";
		return result;
	}
	*/
	
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

	@RequestMapping(value = "/writerecruit.action", method = RequestMethod.GET)
	public String writerecruit(Model model)
	{
		return "/recruit_jakupjung/RecruitInsert.jsp";
	}
	
	@RequestMapping(value = "/postrecruit.action", method = RequestMethod.POST)
	public String postrecruit(RecruitDTO dto,
							 @RequestParam String[] tool,
							 @RequestParam String[] pos)
	{	

		System.out.println("1" + dto.getToolName());
		dto.setToolName(tool[1]);
		System.out.println("1" + dto.getToolName());
		/*
		for (int i = 0; i < pos.length; i++)
		{
			System.out.println(pos[i]);
		}
		for (int i = 0; i < tool.length; i++)
		{
			System.out.println(tool[i]);
		}
		*/
		//String result = "redirect:recruitlist.action";
		String result = "";
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
}
