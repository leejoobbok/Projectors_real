package com.projectors.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyProjectController
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/myproject.action", method = RequestMethod.GET)
	public String myProject(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		IMyProjectDAO dao = sqlSession.getMapper(IMyProjectDAO.class);
		
		String pinNo = (String) session.getAttribute("pinNo");
		
		String url="";
	
		MyProjectDTO projectInfo =  dao.presentProject(pinNo);
		
		
		
		
		
		url="MyProjectHistory.jsp";
		
		return url;
	}
	
	
}
