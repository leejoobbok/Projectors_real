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

	
	

	@RequestMapping(value = "/idcheck.action", method = RequestMethod.GET)
	public void CheckId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
		IUsersDAO dao = sqlSession.getMapper(IUsersDAO.class);
		
		String userId = (request.getParameter("userId")).trim();
		
		int result = 0;
		
		if (dao.checkId(userId) > 0 || userId.equals(""))
		{
			result = 1;
		}
		else /*중복된 아이디가 없을 때*/
		{
			result = 0;
		}
	
		
		/* System.out.println(userId); */
		
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("id_ck_ajax.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
	
	
	@RequestMapping(value="/nicknamecheck.action", method=RequestMethod.GET)
	public void CheckNickname(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		IUsersDAO dao = sqlSession.getMapper(IUsersDAO.class);
		
		String nickname = (request.getParameter("nickname")).trim();
		
		/* System.out.println("닉네임 중복 확인 버큰 작동"); */
		
		
		int result=0;
		
		if(dao.checknickname(nickname) > 0 || nickname.equals(""))
		{
			result=3;
		}
		else
		{
			result=2;
		}
		
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("nickname_ck_ajax.jsp");
		dispatcher.forward(request, response);
		
	}
/*checkrepw.action*/	
	@RequestMapping(value="/checkrepw.action", method=RequestMethod.GET)
	public void CheckRePw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String userPw = (request.getParameter("userPw")).trim();
		String userPwCk = (request.getParameter("userPwCk")).trim();
		
		int result = 0;
		
		if (userPw.equals(userPwCk))
		{
			result = 10;
		}
		else
		{
			result = 11;
		}
		
		
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("repw_ck_ajax.jsp");
		dispatcher.forward(request, response);
		
	}
	
	@RequestMapping(value="/userRegist.action",method=RequestMethod.GET)
	public String userRegist(Model model, UsersDTO usersDTO)
	{
		IUsersDAO dao = sqlSession.getMapper(IUsersDAO.class);
		
		String result="";
		dao.addPin();
		dao.addUsers(usersDTO);
		
		result="MainPage.jsp";
				
		return result;
		
		
		
	
	}
	
	
	
}
