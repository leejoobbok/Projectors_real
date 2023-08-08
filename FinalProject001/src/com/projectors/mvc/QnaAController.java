/*
 * ================================== QnaAController.java - 관리자 답변 컨트롤러
 * ===================================
 */
/*
 * package com.projectors.mvc;
 * 
 * import org.apache.ibatis.session.SqlSession; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod;
 * 
 * @Controller public class QnaAController {
 * 
 * @Autowired private SqlSession sqlSession;
 * 
 * // 특정 답변 글 출력 (QnAArticle.jsp)
 * 
 * @RequestMapping(value="/question-article.action", method = RequestMethod.GET)
 * public String questionArticle(Model model) { String result = ""; IqnaADAO dao
 * = sqlSession.getMapper(IqnaADAO.class);
 * 
 * model.addAttribute("answerArticle", dao.viewAnswerDetail());
 * System.out.println( dao.viewAnswerDetail());
 * 
 * result = "/WEB-INF/view/QnAArticle.jsp"; 
 * result = "QnAArticle.jsp"; 
 * return result; 
 * }}
 */
// 컨트롤러는 질문-답변 같이 출력할 때 충돌 피하기 위해 통합. (맞는 방식인지 확실하진 않음 )