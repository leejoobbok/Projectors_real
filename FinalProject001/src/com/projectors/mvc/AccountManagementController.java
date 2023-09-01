/*=================
  AccountManagementController.java
 ================*/

package com.projectors.mvc;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class AccountManagementController
{
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/preChangePw.action")
	@ResponseBody
	public String preChangePw(String password, String pinNo)
	{
		AccountManagementDTO dto = new AccountManagementDTO();
		
		IAccountManagementDAO dao = sqlSession.getMapper(IAccountManagementDAO.class);
		
		dto.setPinNo(pinNo);
		dto.setPw(password);
		
		String result = dao.checkPw(dto);

		//System.out.println("password :" + password + ",pinNo : " + pinNo);
		//System.out.println("변경전 현재 비밀 번호 확인" + result);

		return result;
	}
	
	@RequestMapping(value = "/changePw.action" )
	public String changePw(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String pinNo = (String) session.getAttribute("pinNo");
		String newPw = request.getParameter("newPassword");
		
		AccountManagementDTO dto = new AccountManagementDTO();
		
		dto.setPinNo(pinNo);
		dto.setNewPw(newPw);
		
		IAccountManagementDAO dao = sqlSession.getMapper(IAccountManagementDAO.class);

		dao.changePw(dto);
		
		session.invalidate();
		
		return "redirect:projectorsmain.action";
	}
	
}
