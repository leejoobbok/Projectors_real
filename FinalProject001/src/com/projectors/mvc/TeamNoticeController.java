package com.projectors.mvc;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeamNoticeController
{
	@Autowired
	private SqlSession sqlSession;
	
	// ● 공지글 등록 (팀장)
	@RequestMapping (value = "/insertTeamNotice.action", method = RequestMethod.GET)
	public String teamNoticeInsert(TeamNoticeDTO dto)
	{
		String result = "";
		
		ITeamNoticeDAO dao = sqlSession.getMapper(ITeamNoticeDAO.class);
		dao.add(dto); 
		
		result="redirect:teamNoticeList.action";
		
		return result;
	}
	
	
	//● 공지글 수정 (팀장)
	@RequestMapping(value = "/teamNoticeModify.action", method = RequestMethod.GET)
	public String teamNoticeModify(TeamNoticeDTO dto)
	{
		//System.out.println(dto.getContent());  //-- 수정한 내용 확인 
		String result = "";
		
		ITeamNoticeDAO dao = sqlSession.getMapper(ITeamNoticeDAO.class);
		
		dao.modify(dto);
		
		result = "redirect:teamNoticeArticle.action?spaceNoticeNo=" + dto.getSpaceNoticeNo();
		
		return result;
	}
	
	
	//● 공지글 삭제 (팀장)
	@RequestMapping(value = "/teamNoticeDelete.action", method = RequestMethod.GET)
	public String teamNoticeDelete(String spaceNoticeNo)
	{
		String result = "";
		
		ITeamNoticeDAO dao = sqlSession.getMapper(ITeamNoticeDAO.class);
		
		dao.delete(spaceNoticeNo);
		
		result = "redirect:teamNoticeList.action";
		
		return result;
	}
	//=========================================================================
	
	//● 공지글 리스트로 불러오기 (모든 팀원)
	@RequestMapping(value = "/teamNoticeList.action", method = RequestMethod.GET)
	public String teamNoticeList(Model model)
	{
		String result = "";
		
		ITeamNoticeDAO dao = sqlSession.getMapper(ITeamNoticeDAO.class);
		
		model.addAttribute("list", dao.getList());
		
		result = "TeamNoticeList.jsp";
		
		return result;
	}
	
	//● 공지글 아티클 읽기 (모든 팀원)
	@RequestMapping(value = "/teamNoticeArticle.action", method = RequestMethod.GET)
	public String teamNoticeArticle(String spaceNoticeNo, Model model)
	{
		String result = "";
		
		ITeamNoticeDAO dao = sqlSession.getMapper(ITeamNoticeDAO.class);
		
		model.addAttribute("teamArticle", dao.viewArticle(spaceNoticeNo));
		
		result = "TeamNoticeArticle.jsp";
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}



















