/*=================
  UsersController.java
 ================*/

package com.projectors.mvc;

import javax.annotation.PostConstruct;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	@ResponseBody
	@RequestMapping(value = "/idcheck.action", method = RequestMethod.GET)
	public int idCheck(@RequestParam String userId) 
	{

		IUsersDAO dao = sqlSession.getMapper(IUsersDAO.class);
	
		
		System.out.println(dao.checkId(userId));
		
		System.out.println("구분선");
		
		return dao.checkId(userId);
		
		

	}

}
