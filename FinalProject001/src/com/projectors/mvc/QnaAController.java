
/*======================================= 
	 QnaAController.java 
 - 관리자용 1:1 문의 답변 관련 컨트롤러
 ========================================*/

package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QnaAController
{	
	@Autowired
	private SqlSession sqlSession; 
	
	// [ 관리자 ] 답변 등록 (인서트) (QnAQInsert.jsp) 
	@RequestMapping(value="/answer-insert-form.action", method = RequestMethod.GET )
	public String qnaAInsert(QnaADTO dto)
	{
		String result = "";
		
		IqnaADAO dao = sqlSession.getMapper(IqnaADAO.class);
		dao.addAnswer(dto);
		
		result ="q-article-4admin.action";
		return result; 
	}
	
	
	
}
//-- 아현 메모)
// 컨트롤러는 질문-답변 같이 출력할 때 충돌 피하기 위해 통합. (08.08 )

//--> 유저쪽에 답변 확인할 때 같은 주소값으로 요청하느라 충돌나서 이 파일 자체를 주석처리했었음
//--> 관리자 기능 이어받으면서 이걸 관리자 전용 컨트롤러로 활용 (08.09)