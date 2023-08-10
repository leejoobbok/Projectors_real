/*=================
  ProfileController.java
 ================*/

package com.projectors.mvc;



import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
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

	@RequestMapping(value = "/profileview.action", method = RequestMethod.GET)
	public String profileView(Model model, HttpServletRequest request)
	{
		
		String result = "";
		
		IProfileDAO profileDAO = sqlSession.getMapper(IProfileDAO.class);
		
		HttpSession session = request.getSession();

		String pinNo = (String)session.getAttribute("pinNo");
		
		//1 프로필 내용
		
		ProfileDTO profileDTO = profileDAO.getProfile(pinNo);
		
		model.addAttribute("profileDTO",profileDTO);
		
		//2 사용 기술
		
		ArrayList<ProfileDTO> utool = profileDAO.getUserTool(pinNo);
		
		System.out.println(utool);
		
		model.addAttribute("utool",utool);
		
		result="ProfileView.jsp";

		return result;
	}
	

		

}
