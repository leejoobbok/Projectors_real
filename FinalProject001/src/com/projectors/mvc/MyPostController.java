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
public class MyPostController
{
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/mypost.action", method = RequestMethod.GET)
	public String myApply(Model model, HttpServletRequest request)
	{
		HttpSession session = request.getSession();

		IMyPostDAO dao = sqlSession.getMapper(IMyPostDAO.class);

		String pinNo = (String) session.getAttribute("pinNo");

		String url = "";

		int check = dao.presentCheck(pinNo);
		// 현재 모집 중인 공고가 존재한다면
		if (check > 0)
		{

			MyPostDTO presentRecruit = dao.presentRecruit(pinNo);

			String recruitNo = presentRecruit.getRecruitNo();

			model.addAttribute("presentRecruit", presentRecruit);
			
			model.addAttribute("positionCount", dao.postionCount(recruitNo));
		
			
			// 미열람자 존재시
			if (dao.checkPresentNone(recruitNo) > 0)
			{

				ArrayList<MyPostDTO> dto = dao.presentNone(recruitNo);

				ArrayList<MyPostDTO> presentNone = new ArrayList<MyPostDTO>();

				for (MyPostDTO dtoElement : dto)
				{
					// 마감이 아닐때
					if (dao.fullCheckRecPos(dtoElement.getRecruitPosNo()) == 0)
					{
						dtoElement.setFullCount(0);
					}
					// 마감되었을 때
					else
					{
						dtoElement.setFullCount(1);
					}

					presentNone.add(dtoElement);
				}

				model.addAttribute("presentNone", presentNone);

			}

			if (dao.checkPresentX(recruitNo) > 0)
			{
				ArrayList<MyPostDTO> dto = dao.presentX(recruitNo);

				ArrayList<MyPostDTO> presentX = new ArrayList<MyPostDTO>();

				for (MyPostDTO dtoElement : dto)
				{
					// 마감이 아닐때
					if (dao.fullCheckRecPos(dtoElement.getRecruitPosNo()) == 0)
					{
						dtoElement.setFullCount(0);
					}
					// 마감되었을 때
					else
					{
						dtoElement.setFullCount(1);
					}

					presentX.add(dtoElement);
				}

				model.addAttribute("presentX", presentX);

				// model.addAttribute("presentX", dao.presentX(recruitNo));
			}

			if (dao.checkPresentO(recruitNo) > 0)
			{
				model.addAttribute("presentO", dao.presentO(recruitNo));
			}

			model.addAttribute("checkPresentNone", dao.checkPresentNone(recruitNo));
			model.addAttribute("checkPresentX", dao.checkPresentX(recruitNo));
			model.addAttribute("checkPresentO", dao.checkPresentO(recruitNo));
		}

		model.addAttribute("presentCheck", check);

		url = "/WEB-INF/view/MyPostLists.jsp";

		return url;
	}

	@RequestMapping(value = "/mypastpost.action", method = RequestMethod.GET)
	public String mypastpost()
	{
		return "/WEB-INF/view/MyPastPostLists.jsp";
	}

	@RequestMapping(value = "/readApply.action", method = RequestMethod.GET)
	public String readApply(Model model, HttpServletRequest request)
	{
		HttpSession session = request.getSession();

		String url = "";

		String applyNo = request.getParameter("applyNo");

		IMyPostDAO dao = sqlSession.getMapper(IMyPostDAO.class);

		dao.readApply(applyNo);

		/*
		 * 특정 지원서 보는 action 처리해줄 파트
		 */

		url = "redirect:/mypost.action";

		return url;

	}

	@RequestMapping(value = "/passApply.action", method = RequestMethod.GET)
	public String passApply(Model model, HttpServletRequest request)
	{
		String url = "";

		IMyPostDAO dao = sqlSession.getMapper(IMyPostDAO.class);

		String applyNo = request.getParameter("applyNo");
		String recruitNo = request.getParameter("recruitNo");

		// 1차 합류 시키기
		dao.firstCk(applyNo);

		// 모집 인원수
		int recruitCount = dao.recruitCount(recruitNo);
		int firstCount = dao.firstCount(recruitNo);

		int firstFull = 0;

		// 1차 합격 수가 모집 인원 수랑 같으면
		if (firstCount == recruitCount)
		{
			// 최종합류 카테고리 활성화
			firstFull = 1;
		}

		model.addAttribute("firstFull", firstFull);

		url = "redirect:/mypost.action";

		return url;

	}

}
