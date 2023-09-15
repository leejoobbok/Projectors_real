package com.projectors.mvc;

import java.util.ArrayList;

public interface IWorkHistoryDAO
{
	// 나와 같은 팀 멤버가 누구인지 구하는 기능이 있어야
	// 팀 히스토리 구성가능하니 일단은 로그인 유저 기준으로 작성 
	
	ArrayList<WorkHistoryDTO> getWorkHistory(String finalNo); // 작업 히스토리
}

//workHistoryDTO 구성 
//작업자 닉네임, 작업제목, 작업일
//private String nickName, workTitle, workDate;
