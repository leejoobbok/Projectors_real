/*=================
  ProfileController.java
 ================*/

package com.projectors.mvc;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ProfileController
{
	@Autowired
	private SqlSession sqlSession;
	

	@RequestMapping(value = "/profileView.action", method = RequestMethod.GET)
	public String creatAccountForm(Model model, HttpServletRequest request)
	{
		
		HttpSession session = request.getSession();
		
		String pinNo = (String) session.getAttribute("pinNo");
		
		System.out.println(pinNo);
		
		/* String result = ""; */

		String result = "ProfileView.jsp";

		return result;
	}

	


		
	
	
}
