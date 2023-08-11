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
	public String clearManageReoprt(HttpServletRequest request)
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
	
	//-- 공고신고 반려
	@RequestMapping (value = "/rejectManageReport.action", method = RequestMethod.GET)
	public String rejectManageReport(ReportDTO dto, HttpServletRequest request)
	{
		String result = "";
		
		HttpSession session = request.getSession();
		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		
		dto.setAdminPinNo((String)session.getAttribute("pinNo"));
		dto.setReguNo(request.getParameter("repNo"));
		
		dao.rejectManageReport(dto);
		
		
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
	//-- 리스트 출력
	@RequestMapping (value = "/reportManageComplete.action", method = RequestMethod.GET)
	public String reportManageComplete(Model model)
	{
		String result = "";
		
		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		
		model.addAttribute("lists", dao.recruitReportComplete());
		
		result = "ReportManagementComplete.jsp";
		
		return result;
	}
	//-- 검색 리스트 출력
	@RequestMapping (value = "/recruitReportManageCompleteSearch.action", method = RequestMethod.GET)
	public String reportManageCompleteSearch(Model model, String searchKey, String searchVal)
	{
		String result = "";

		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		
		//System.out.println("searchKey : " + searchKey + ", searchValue : " + searchVal);
		
		if (searchKey.equals("1"))
			model.addAttribute("lists", dao.searchAdminPinNo(searchVal));
		else if (searchKey.equals("2")) 
			model.addAttribute("lists", dao.searchReportedUserPinNo(searchVal));
		else
			model.addAttribute("lists", dao.searchRepNo(searchVal));
		
		//ArrayList<ReportDTO> lists = dao.searchAdminPinNo(searchVal);
		//System.out.println(lists);
		
		result = "ReportManagementComplete.jsp";
		
		return result;
	}
	
	// ※ 지원서
	// ※ 팀스페이스
	// ※ 댓글
	// ※ 쪽지

	//==========================================처리완료===============================================

}
