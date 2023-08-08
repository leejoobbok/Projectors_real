/*=================
  UsersController.java
 ================*/

package com.projectors.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.DispatcherServlet;

import com.sun.javafx.sg.prism.NGShape.Mode;

@Controller
public class UsersController
{
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/createAccountForm.action", method = RequestMethod.GET)
	public String creatAccountForm(Model model)
	{
		String result = "";

		result = "CreateAccount.jsp";

		return result;

	}
	
	
	@RequestMapping(value = "/toidcheck.action", method = RequestMethod.GET)
	public void toCheckId(HttpServletRequest request, HttpServletResponse response)
	{
		
		
	}
	
	

	@RequestMapping(value = "/idcheck.action", method = RequestMethod.GET)
	public void CheckId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
		IUsersDAO dao = sqlSession.getMapper(IUsersDAO.class);
		
		String userId = request.getParameter("userId");
		
		int result = 0;
		
		if (dao.checkId(userId) > 0)
		{
			result = 1;
		}
		else
		{
			result = 0;
		}
	
		
		System.out.println(userId);
		
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("id_ck_ajax.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

}
