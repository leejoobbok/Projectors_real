package com.projectors.mvc;

import java.util.ArrayList;

public interface IqnaQDAO // 1:1 문의의 질문 관련 DAO 인터페이스
{	
	
	/* QnaQDTO 의 속성들
	  questionNo, questionPinNo , questionTitle, questionContent, quesstionCreatedDate
	: 문의번호, (회원)식별번호, 문의제목, 문의내용, 등록일
	*/
	
	// 회원의 질문 등록
	public int insert(QnaQDTO question); 
	
	// 특정 회원의 본인 질문 목록 출력 (제목, 등록일)
	/* public ArrayList<QnaQDTO> getQuestionList(String questionPinNo); */	
	public ArrayList<QnaQDTO> getQuestionList();	
	
	// 특정 질문 글 출력 ( 문의번호, 제목, 내용, 등록일) 
	public QnaQDTO viewQuestionDetail(String questionNo);			

}
