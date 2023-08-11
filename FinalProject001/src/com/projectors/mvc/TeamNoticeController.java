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
public class TeamNoticeController
{
	@Autowired
	private SqlSession sqlSession;
	
	// ● 공지글 등록 (팀장)
	/*
	@RequestMapping (value = "/insertTeamNotice.action", method = RequestMethod.GET)
	public String insertTeamNotice(HttpServletRequest request)
	{
		String result = "";
		
		HttpSession session = request.getSession();
		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		
		ReportDTO dto = new ReportDTO();
		
		dto.setAdminPinNo((String)session.getAttribute("pinNo"));
		dto.setRepNo(request.getParameter("repNo"));
		dto.setReguNo(request.getParameter("reguNo"));
		dto.setReguPeriodNo(request.getParameter("reguPeriodNo"));
		
		//System.out.println("adminPinNo : "+dto.getAdminPinNo());
		//System.out.println("repNo : "+request.getParameter("repNo"));
		//System.out.println("reguNo : "+request.getParameter("reguNo"));
		//System.out.println("reguPeriodNo : "+request.getParameter("reguPeriodNo"));
		
		dao.clearManageReport(dto);

		result = "redirect:reportRecruit.action";
		
		return result;
	}
	*/
	
}
