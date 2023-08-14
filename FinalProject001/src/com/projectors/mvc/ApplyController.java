package com.projectors.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ApplyController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "/applyform.action", method = RequestMethod.GET)
	public String applyform(Model model, String recruitPosNo, HttpServletRequest request)
	{
		IApplyDAO dao = sqlsession.getMapper(IApplyDAO.class);
		
		HttpSession session = request.getSession();
		String pinNo = (String)session.getAttribute("pinNo");
		
		model.addAttribute("memberInfo", dao.memberInfo(pinNo));
		model.addAttribute("recruitInfo", dao.recruitInfo(recruitPosNo));
		
		return "/recruit_jakupjung/ApplyForm.jsp";
	}
	
	
	/*
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

		String result = "/WEB-INF/view/RecruitLists.jsp";
		return result;
	}
	
	@RequestMapping(value = "/postrecruit.action", method = RequestMethod.POST)
	public String postrecruit(RecruitDTO dto, HttpServletRequest request,
							  @RequestParam String[] posCount,
							  @RequestParam String[] pos,
							  @RequestParam String[] tool)
	{	
		IRecruitDAO dao = sqlsession.getMapper(IRecruitDAO.class);

		HttpSession session = request.getSession();
		String pinNo = (String)session.getAttribute("pinNo");
		
		System.out.println("pinNo : " + pinNo);
		
		dto.setPinNo(pinNo);
		
		// 모집공고 생성
		dao.insertRecruit(dto);
		
		// 가져온 모집공고 번호 → setter 로 dto 안에 집어넣기
		dto.setRecruitNo(dao.getRecruitNo(dto));
		
		// 모집공고 필요기술 삽입
		for (int i = 0; i < tool.length; i++) {
			int intToolNo = Integer.parseInt(tool[i]);
			dto.setToolNo(intToolNo);
			dao.insertRecruitTool(dto);
		}
		
		// 모집공고 필요포지션 삽입
		for (int i = 0; i < posCount.length; i++) {
			if (posCount[i] != "0") {
				int count = Integer.parseInt(posCount[i]);
				dto.setPosNo(i+1);
				for (int j = 0; j < count; j++)
					dao.insertRecruitPos(dto);
			}
		}
		
		// 팀장이 선택한 포지션의 지원번호 가져오기
		
		int posCap = Integer.parseInt(pos[0]);
		dto.setPosCapNo(posCap);
		dto.setRecruitPosNo(dao.getCapRecruitPosNo(dto));
		
		// 팀장이 선택한 포지션에 자동 지원
		dao.insertApplyPosCap(dto);
		
		// 팀장의 지원서 가져오기
		dto.setApplyNo(dao.getCapApplyNo(dto));
		
		// 팀장 지원서 자동합격
		dao.insertFirstCKCap(dto);
		
		
		String result = "redirect:recruitlist.action";
		return result;
	}
	
	*/
	
}
