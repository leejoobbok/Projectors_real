package com.projectors.mvc;

import java.util.ArrayList;

public interface IfaqDAO
{
	public ArrayList<FaqDTO> getFaqList();   // FAQ 리스트 출력 (번호, 제목)
	
	public FaqDTO viewFaqDetail();			// 특정 FAQ 아티클 출력 (번호, 제목, 내용)  
	
	//--[참고] faq 등록/수정/삭제 등은 관리자 기능쪽에.
}
