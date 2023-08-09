/*==================================
 	QnaQController.java
 -  1:1 문의 관련 컨트롤러 (유저용)  
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
	private SqlSession sqlSession;    // 질문 관련 SQL 세션
	
	@Autowired
	private SqlSession answerSqlSession; // 답변 출력용 SQL 세션 
	 
	 
	 
	// (유저) 문의글 인서트 (QnAQInsert.jsp) 
	@RequestMapping(value="/question-insert-form.action", method = RequestMethod.GET )
	public String qnaQInsert(QnaQDTO dto)
	{
		String result = "";
		
		IqnaQDAO dao = sqlSession.getMapper(IqnaQDAO.class);
		dao.insert(dto);
		
		result ="question-list.action";
		return result; 
	}
	
	// (유저)나의 질문 리스트 출력 (QnALists.jsp) 
	@RequestMapping(value="/question-list.action", method = RequestMethod.GET)
	public String qList(String pinNo, Model model)
	{	
		String result = "";
		IqnaQDAO dao = sqlSession.getMapper(IqnaQDAO.class);	
	
		model.addAttribute("questionList", dao.getQuestionList(pinNo));
		/* result = "/WEB-INF/view/MyQuestionLists.jsp"; */
		result = "QnALists.jsp";
		
		return result; 
	}
	
	
	// (유저) 특정 질문 아티클 출력 (답변 포함) (QnAArticle.jsp)
	@RequestMapping(value = "/question-article.action", method = RequestMethod.GET)
	public String combinedData(String questionNo, Model model) {
	    IqnaQDAO qDAO = sqlSession.getMapper(IqnaQDAO.class);
		IqnaADAO aDAO = answerSqlSession.getMapper(IqnaADAO.class); //-- 세션 다름! 

	    QnaQDTO questionArticle = qDAO.viewQuestionDetail(questionNo);
		QnaADTO answerArticle = aDAO.answerView(questionNo);

	    model.addAttribute("questionArticle", questionArticle);
		model.addAttribute("answerArticle", answerArticle); 

	    return "QnAArticle.jsp";
	}
	//=========================================================================
	
	
	// [관리자 ]모든 유저의 문의글 리스트로 가져오기 (AnswerManagement.jsp )
	@RequestMapping(value = "/q-list-4admin.action", method = RequestMethod.GET)
	public String getAllQList(Model model)
	{
		String result = "";
		
		IqnaQDAO dao = sqlSession.getMapper(IqnaQDAO.class);
		
		model.addAttribute("qListForAdmin", dao.getAllQList());
		//result = "/WEB-INF/view/AnswerManagement.jsp";
		result = "AnswerManagement.jsp";
		return result;
	}
	
	// [관리자 ] 특정 질문 아티클 출력 (등록된 답변 포함) (AnswerManagementArticle.jsp)
		@RequestMapping(value = "/q-article-4admin.action", method = RequestMethod.GET)
		public String adAnswerWrite(String questionNo, Model model) 
		{	
			String result = "";
			
		    IqnaQDAO qDAO = sqlSession.getMapper(IqnaQDAO.class);
			IqnaADAO aDAO = answerSqlSession.getMapper(IqnaADAO.class);  //-- 세션 다름! 

		    QnaQDTO qArticleForAdmin = qDAO.viewQuestionDetail(questionNo);	 //-- 질문 조회
			QnaADTO aArticleForAdmin = aDAO.answerView(questionNo); 		//-- 답변 조회

		    model.addAttribute("qArticleForAdmin", qArticleForAdmin);
		    model.addAttribute("nickName", qArticleForAdmin.getNickName());
			model.addAttribute("aArticleForAdmin", aArticleForAdmin);
			
			result = "AnswerManagementArticle.jsp";
			
			System.out.println();
		    return result; 
		}
	
}

/* dto 속성
 questionNo, questionPinNo , questionTitle, questionContent, qCreatedDate, isReply
 */
