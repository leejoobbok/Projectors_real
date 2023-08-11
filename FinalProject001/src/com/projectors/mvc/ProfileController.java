/*=================
  ProfileController.java
 ================*/

package com.projectors.mvc;

import java.io.IOException;
import java.util.ArrayList;

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

	@RequestMapping(value = "/profileview.action", method = RequestMethod.GET)
	public String profileView(Model model, HttpServletRequest request)
	{

		String url = "";

		IProfileDAO profileDAO = sqlSession.getMapper(IProfileDAO.class);

		HttpSession session = request.getSession();

		String pinNo = (String) session.getAttribute("pinNo");

		// 0 프로필 유무 확인

		int result = profileDAO.getResult(pinNo);

		System.out.println(result);

		model.addAttribute("result", result);

		// 1 프로필 내용

		ProfileDTO profileDTO = profileDAO.getProfile(pinNo);

		model.addAttribute("profileDTO", profileDTO);

		// 2 사용 기술

		ArrayList<ProfileDTO> utool = profileDAO.getUserTool(pinNo);

		System.out.println(utool);

		model.addAttribute("utool", utool);

		// 3 평가 출력

		ArrayList<ProfileDTO> totalRate = profileDAO.getTotalRate(pinNo);

		System.out.println("평가출력의" + totalRate);

		model.addAttribute("totalRate", totalRate);

		url = "ProfileView.jsp";

		return url;

	}

	@RequestMapping(value = "/profileInsertForm.action", method = RequestMethod.GET)
	public String profileInsertForm(Model model, HttpServletRequest request)
	{
		String url;

		IProfileDAO dao = sqlSession.getMapper(IProfileDAO.class);

		HttpSession session = request.getSession();

		String pinNo = (String) session.getAttribute("pinNo");

		// 1. 포지션 SELECT OPTION 출력
		ArrayList<ProfileDTO> positionList = dao.getPosition();

		model.addAttribute("positionList", positionList);

		// 2. 도구 번호 출력 checkBox
		ArrayList<ProfileDTO> toolList = dao.getTool();

		model.addAttribute("toolList",toolList);

		
		//3. 지역 번호와 이름 출력
		ArrayList<ProfileDTO> regionList = dao.getRegion();
		
		model.addAttribute("regionList", regionList);
		
		
		url = "ProfileInsert.jsp";
		return url;

	}

	
	
	
	
	  @RequestMapping(value="/changeSubRegionList.action", method = RequestMethod.GET)
	  public void subRegionList(HttpServletRequest request, HttpServletResponse
	  response) throws ServletException, IOException 
	  {
	  
		  
		  String result="";
		  
		  IProfileDAO dao = sqlSession.getMapper(IProfileDAO.class);
		  
		  String regionNo = request.getParameter("regionNo");
		 
		  
		  ArrayList<ProfileDTO> subRegionList = dao.getSubRegion(regionNo);
		  
		  result+="<option>========상세 지역 선택=========</option>";
		  for (ProfileDTO subRegion : subRegionList)
		  {
			result+="<option value="+subRegion.getSubRegionNo()+">"+subRegion.getSubRegionName()+"</option>";
		  
			System.out.println(result);
		  }
		  
		  request.setAttribute("result", result);
		  
		  RequestDispatcher dispatcher = request.getRequestDispatcher("show_subregion_ajax.jsp");
		  dispatcher.forward(request, response);
		  
	  
	  }
	  

}
