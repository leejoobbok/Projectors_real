package com.projectors.mvc;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.javafx.collections.SetAdapterChange;

@Controller
public class LoginController
{
	/*
	 * @Autowired private SqlSession sqlSession;
	 * 
	 * @RequestMapping(value="/loginForm.action",method=RequestMethod.GET) public
	 * String loginForm(Model model) { String result="";
	 * 
	 * result="Login.jsp";
	 * 
	 * return result; }
	 * 
	 * 
	 * @RequestMapping(value="/login.action", method=RequestMethod.POST) public
	 * String login(Model model, String id, String pw, String ManagerCheck) { String
	 * result="";
	 * 
	 * ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
	 * 
	 * if (ManagerCheck != null) { if (dao.userLogin(id, pw)==1) {
	 * System.out.println("로그인 성공"); model.addAttribute("pinNo", dao.getUserPin(id,
	 * pw));
	 * 
	 * result=""; } else { System.out.println("로그인 실패"); result=""; }
	 * 
	 * } else { result=""; }
	 * 
	 * 
	 * result=""; return result; }
	 */
}
