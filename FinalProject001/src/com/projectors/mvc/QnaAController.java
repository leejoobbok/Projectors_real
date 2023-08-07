/*==================================
 	QnaAController.java
 - 관리자 답변 컨트롤러 
===================================*/
package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QnaAController
{
	@Autowired   
	private SqlSession sqlSession;
	
	// 문의 답변 인서트 (QnAAInsert.jsp) 
	@RequestMapping(value="/answer-insert-form.action", method = RequestMethod.GET )
	public String qnaAInsert(QnaADTO dto)
	{
		String result = "";
		
		IqnaADAO dao = sqlSession.getMapper(IqnaADAO.class);
		dao.insert(dto);
		
		result ="redirect:answer-insertform.action";
		return result; 
	}
	
	// 특정 답변 글 출력 (QnAArticle.jsp)
	@RequestMapping(value="/answer-article.action", method = RequestMethod.GET)
	public String questionArticle(String answerNo, Model model)
	{	
		String result = "";
		IqnaADAO dao = sqlSession.getMapper(IqnaADAO.class);	
	
		model.addAttribute("answerArticle", dao.viewAnswerDetail(answerNo));
		
		/* result = "/WEB-INF/view/QnAArticle.jsp"; */
		result = "QnAArticle.jsp";
		return result; 
	}
}