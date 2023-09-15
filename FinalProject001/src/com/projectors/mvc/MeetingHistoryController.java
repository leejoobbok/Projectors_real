package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MeetingHistoryController
{	
	@Autowired
	private SqlSession sqlSession;
	
	//● 회의 히스토리 불러오기 (제목, 회의일)
	@RequestMapping(value = "/getMeetingHistory.action", method = RequestMethod.GET)
	public String getMeetingHistory(String finalNo, Model model)
	{
		String result = "";
		IMeetingHistoryDAO dao = sqlSession.getMapper(IMeetingHistoryDAO.class);
		model.addAttribute("meetingHistory", dao.getMeetingHistory(finalNo));
		
		result = "/WEB-INF/view/MeetingHistory.jsp"; // 임포트용 페이지
		return result;
	}
	
}
