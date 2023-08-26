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
public class MyApplyController
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/myapply.action",method = RequestMethod.GET )
	public String myApply(Model model, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String pinNo = (String)session.getAttribute("pinNo");
		
		IMyApplyDAO dao = sqlSession.getMapper(IMyApplyDAO.class);
		
		int checkPresent = dao.checkPresentApply(pinNo);
		
		if (checkPresent == 0)
		{
			model.addAttribute("checkPresent", checkPresent);
		}
		else
		{
			MyApplyDTO presentApplyDTO = dao.getPresentApply(pinNo);
			
			model.addAttribute("presentApply", presentApplyDTO);
			model.addAttribute("checkPresent", checkPresent);
		}
			
		return "/WEB-INF/view/MyApply.jsp";
	}
	
	

	@RequestMapping(value="/mypastapply.action",method = RequestMethod.GET )
	public String mypastapply(Model model)
	{
		return "/WEB-INF/view/MyPastApply.jsp";
	}
}
