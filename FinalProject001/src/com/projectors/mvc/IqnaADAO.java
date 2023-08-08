package com.projectors.mvc;

public interface IqnaADAO // 1:1 문의 답변 DAO 인터페이스
{	
	/* QnaADTO 의 속성들
	 	 questionNo, answerNo, answerPinNo, answerContent, answerCreatedDate;
	    : 질문번호, 답변번호, (관리자)식별번호, 답변내용, 답변등록일 
	*/
	
	public int insert(QnaADTO answer);					// 관리자의 답변 등록
	public QnaADTO viewAnswerDetail();	// 특정 답변 출력 ( 답변번호, 내용, 등록일) 
}
