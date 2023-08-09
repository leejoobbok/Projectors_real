package com.projectors.mvc;


public interface IqnaADAO // 1:1 문의 답변 DAO 인터페이스
{	
	
	public QnaADTO viewAnswerDetail(String questionNo);	// 특정 답변 출력 ( 내용, 등록일) //-- 유저
	
	//========[관리자 기능] 답변 등록,수정,삭제, 최근답변 번호 찾기 ==========
	
	// 유저의 전체 질문 리스트 조회 기능은 QDAO 쪽에 있음 
	// 특정 질문글 아티클 - 답변 등록란 같이 뜨는 관리자용 아티클 페이지도 QDAO쪽에.
 
	// 등록
	public int addAnswer(QnaADTO dto);
	
	// 수정
	public int updateAnswer(QnaADTO dto);
	
	// 삭제
	public int removeAnswer(String answerNo);
	
	// 가장 최근에 생성한 Answer 넘버 가져오기 ( 새 글 등록 후 바로 해당 아티클 확인 가능하도록) 
	public String findAnswerNo();
}

/* QnaADTO 의 속성들
 questionNo, answerNo, answerPinNo, answerContent, answerCreatedDate;
: 질문번호, 답변번호, (관리자)식별번호, 답변내용, 답변등록일 
*/