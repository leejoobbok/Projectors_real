package com.projectors.mvc;

import java.util.ArrayList;


public interface IqnaQDAO // 1:1 문의 질문 관련 DAO 인터페이스
{	
	// 회원의 질문 등록(인서트)
	public int insert(QnaQDTO question); 
	
	// 특정 회원의 본인 질문 목록 출력 (문의번호, 제목, 등록일, 답변여부)
	public ArrayList<QnaQDTO> getQuestionList(String pinNo); 
	
	// [관리자] 의 모든 회원 문의 목록 출력 (문의번호, 작성자, 제목, 등록일, 답변여부)
	public ArrayList<QnaQDTO> getAllQList(); 
	
	// 특정 질문 글 출력 ( 문의번호, 제목, 내용, 등록일) 
	public QnaQDTO viewQuestionDetail(String questionNo);		
	
	// [관리자] 의 특정 질문 글 출력 (답변 작성란 포함) 
	public QnaQDTO adAnswerWrite(String questionNo); 

}
