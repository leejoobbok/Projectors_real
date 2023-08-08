package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController
{
	// 주요속성구성
	@Autowired
	private SqlSession sqlSession;
	
	//admin으로 로그인 시 보여질 AdminMain 페이지 
	//-- (금일 회원 접속 수, 새 문의 건수 확인, 새 신고 건수 확인)
	@RequestMapping (value = "/adminMain.action", method = RequestMethod.GET)
	public String main(Model model)
	{
		String result = "";
		
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		model.addAttribute("todayMemberCnt", dao.todayMemberCnt());
		model.addAttribute("newReportCnt", dao.newReportCnt());
		model.addAttribute("newQuestionCnt", dao.newQuestionCnt());
		
		result = "/AdminMainPage.jsp";
		
		return result;
	}
	
	//-- 공지사항으로 페이지 연결 - 리스트
	@RequestMapping (value = "/mainNoticeList.action", method = RequestMethod.GET)
	public String noticeLists(Model model)
	{
		String result = "";
		
		IAdminNoticeDAO dao = sqlSession.getMapper(IAdminNoticeDAO.class);
		
		model.addAttribute("lists", dao.lists());
		
		result = "/AdminMainNoticeLists.jsp";
		
		return result;
	}
	
	//-- 공지사항 아티클 들어가기
	@RequestMapping (value = "/adminNoticeArticle.action", method = RequestMethod.GET)
	public String noticeInsert(Model model, String adminNoticeNo)
	{
		String result = "";
		
		IAdminNoticeDAO dao = sqlSession.getMapper(IAdminNoticeDAO.class);
		
		// 이 부분 부터 작성하면 됨
		// AdminNoticeDTO, IAdminNoticeDAO, AdminNoticeDAO.xml 사용 예정
		//-- 이전 페이지 get 방식으로 수신해온 AdminNoticeNo 받아오는 법 확인하기.
		
		model.addAttribute("article", dao.article(adminNoticeNo));
		
		result = "/AdminMainNoticeArticle.jsp";
		
		return result;
	}
	
	//-- 공지사항 아티클 작성하기
}
