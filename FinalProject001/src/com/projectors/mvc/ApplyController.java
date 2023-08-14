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
		System.out.println(5);
		
		return "/recruit_jakupjung/ApplyForm.jsp";
	}

	
}
