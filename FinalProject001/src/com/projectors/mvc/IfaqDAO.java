package com.projectors.mvc;

import java.util.ArrayList;

public interface IfaqDAO
{
	public ArrayList<FaqDTO> studentList();   // FAQ 리스트 출력
	
	
	//--[참고] faq 등록/수정/삭제 등은 관리자 기능쪽에.
}
