package com.projectors.mvc;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.javafx.collections.SetAdapterChange;
import com.sun.org.apache.bcel.internal.generic.DALOAD;

@Controller
public class LoginController
{

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/loginForm.action", method = RequestMethod.GET)
	public String loginForm(Model model)
	{
		String result = "";

		result = "Login.jsp";

		return result;
	}
	

	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(Model model, LoginDTO loginDTO)
	{
		String result = "";
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		
		if (loginDTO.getManagerCheck() != null)
		{
			loginDTO.setAdminId(loginDTO.getUsersId());
			loginDTO.setAdminPw(loginDTO.getUsersPw());
			
			if (dao.adminLogin(loginDTO) == 1)
			{
				System.out.println("관리자 로그인 성공");
				result="MainPage.jsp";
				
				/*관리자 핀 번호 찾는 메소드로
				  핀번호 구하고 세션에 넣을 자리*/
				
				
			}
			else
			{
				System.out.println("관리자 로그인 실패");
				result="redirect:loginForm.action";
			}
		}
		else 
		{
			if (dao.userLogin(loginDTO) == 1)
			{
				System.out.println("사용자 로그인 성공");
				result="MainPage.jsp";
				
				
				/*사용자 핀 번호 찾는 메소드로
				  핀번호 구하고 세션에 넣을 자리*/
			}
			else
			{
				System.out.println("사용자 로그인 실패");
				result="redirect:loginForm.action";
			}
		}
		
		return result;
	}

}
