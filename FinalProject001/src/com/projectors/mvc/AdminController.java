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
}
