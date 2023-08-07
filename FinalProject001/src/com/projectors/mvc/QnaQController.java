/*==================================
 	QnaQController.java
 - mybatis 객체 활용/ 문의 컨트롤러 
===================================*/
package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QnaQController
{
	@Autowired   
	private SqlSession sqlSession;
	
	// 문의글 인서트 (QnAQInsert.jsp) 
	@RequestMapping(value="/questioninsertform.action", method = RequestMethod.GET )
	public String qnaQInsert(QnaQDTO dto)
	{
		String result = "";
		
		IqnaQDAO dao = sqlSession.getMapper(IqnaQDAO.class);
		dao.insert(dto);
		
		result ="redirect:questioninsertform.action";
		return result; 
	}
	
	// 나의 질문 리스트 출력 (MyQuestionLists.jsp) 
	@RequestMapping(value="/questionlist.action", method = RequestMethod.GET)
	public String questionList(String questionPinNo, Model model)
	{	
		String result = "";
		IqnaQDAO dao = sqlSession.getMapper(IqnaQDAO.class);	
	
		model.addAttribute("questionList", dao.getQuestionList(questionPinNo));
		
		/* result = "/WEB-INF/view/MyQuestionLists.jsp"; */
		result = "MyQuestionLists.jsp";
		return result; 
	}
	
	// 특정 질문글 출력 (QnAArticle.jsp)
	@RequestMapping(value="/questionarticle.action", method = RequestMethod.GET)
	public String questionArticle(String questionNo, Model model)
	{	
		String result = "";
		IqnaQDAO dao = sqlSession.getMapper(IqnaQDAO.class);	
	
		model.addAttribute("questionArticle", dao.viewQuestionDetail(questionNo));
		
		/* result = "/WEB-INF/view/QnAArticle.jsp"; */
		result = "QnAArticle.jsp";
		return result; 
	}
	
}