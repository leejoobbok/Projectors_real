package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminReportController
{
	// 주요속성구성
	@Autowired
	private SqlSession sqlSession;
	
	// 관리자 신고 관련 컨트롤러
	
	//==========================================처리대기===============================================
	
	//-- 공고, 지원서 ,쪽지, 댓글 신고 처리시 띄워줄 미니창 
	@RequestMapping (value = "/managementReport.action", method = RequestMethod.GET)
	public String managementReport(Model model, String reportedNickName)
	{
		String result = "";
		
		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		
		model.addAttribute("punishContent", dao.punishContent());
		model.addAttribute("periods", dao.periods());
		model.addAttribute("reportedNickName", reportedNickName);
		
		result = "ManagementReport.jsp";
		
		return result;
	}
	
	// ※ 공고
	//-- 공고신고 처리대기 리스트 페이지
	@RequestMapping (value = "/reportRecruit.action", method = RequestMethod.GET)
	public String reportedRecruitList(Model model)
	{
		String result = "";
		
		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		
		model.addAttribute("lists", dao.reportedRecruitList());
		
		result = "ReportManagement.jsp";
		
		return result;
	}
	
	//-- 공고신고 처리 insert
	@RequestMapping (value = "/clearManageReport.action", method = RequestMethod.GET)
	public String clearManageReoprt(ReportDTO dto)
	{
		String result = "";
		
		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		
		int out = dao.clearManageReport(dto);

		System.out.println("처리 결과 : " + out);
		
		result = "redirect:reportRecruit.action";
		
		return result;
	}
	
	//-- 공고신고 반려
	@RequestMapping (value = "/rejectManageReport.action", method = RequestMethod.GET)
	public String rejectManageReport(ReportDTO dto)
	{
		String result = "";
		
		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		
		int out = dao.rejectManageReport(dto);
		
		System.out.println("반려 결과 : " + out);
		
		result = "redirect:reportRecruit.action";
		return result;
	}
	
	
	//-------------------------------------------------
	
	// ※ 지원서
	
	//-------------------------------------------------
	
	// ※ 댓글
	
	//-------------------------------------------------
	
	// ※ 쪽지
	
	//-------------------------------------------------
	
	// ※ 팀스페이스
	
	
	//==========================================처리대기===============================================
	
	
	//==========================================처리완료===============================================
	// ※ 공고
	// ※ 지원서
	// ※ 팀스페이스
	// ※ 댓글
	// ※ 쪽지

	//==========================================처리완료===============================================

}
