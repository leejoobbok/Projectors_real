package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WorkHistoryController
{
	@Autowired
	private SqlSession sqlSession;
	
	//● 작업실 히스토리 불러오기 (담당자, 작업글 제목, 작업일)
	@RequestMapping(value = "/getWorkHistory.action", method = RequestMethod.GET)
	public String getWorkHistory(String finalNo, Model model)
	{
		String result = "";
		IWorkHistoryDAO dao = sqlSession.getMapper(IWorkHistoryDAO.class);
		model.addAttribute("workHistory", dao.getWorkHistory(finalNo));
		
		result = "/WEB-INF/view/WorkHistory.jsp"; // 임포트용 페이지
		return result;
	}
}
