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
	public String login(Model model, LoginDTO loginDTO, HttpServletRequest request)
	{
		String result = "";
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		HttpSession session = request.getSession();
		
		/*관리자라면*/
		if (loginDTO.getManagerCheck() != null)
		{
			
			if (dao.adminLogin(loginDTO) == 1)
			{
				System.out.println("관리자 로그인 성공");
				result="adminMain.action";
				
				/*관리자 핀 번호 찾는 메소드로
				  핀번호 구하고 세션에 넣을 자리*/
				
				//System.out.println(dao.getAdminPin(loginDTO));
				//System.out.println(dao.getAdminNo(loginDTO));
				
				
				/*세션에 관리자 pin 등록*/
				session.setAttribute("pinNo", dao.getAdminPin(loginDTO));
				session.setAttribute("adminNo", dao.getAdminNo(loginDTO));
				
			}
			else
			{
				System.out.println("관리자 로그인 실패");
				result="redirect:loginForm.action";
			}
		}
		/*일반 사용자라면 (관리자가 아니라면)*/
		else 
		{
			if (dao.userLogin(loginDTO) == 1)
			{
				System.out.println("사용자 로그인 성공");
				
				/*사용자 핀 번호 찾는 메소드로
				  핀번호 구하고 세션에 넣을 자리*/
				
				System.out.println("LoginController에서의 핀넘버"+dao.getUserPin(loginDTO));
				
				/*세션에 사용자 pin 등록*/
				session.setAttribute("pinNo", dao.getUserPin(loginDTO));
				
				// result="MainPage.jsp";
				result="redirect:projectorsmain.action";
				
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
