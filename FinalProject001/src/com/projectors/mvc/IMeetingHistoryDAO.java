package com.projectors.mvc;

import java.util.ArrayList;

public interface IMeetingHistoryDAO
{	
	// 나와 같은 팀 멤버가 누구인지 구하는 기능이 있어야
	// 팀 히스토리 구성가능하니 일단은 로그인 유저 기준으로 작성 
	
	public ArrayList<MeetingHistoryDTO> getMeetingHistory(String finalNo); // 회의 히스토리
	
	
	
}

// meetingHistoryDTO 구성
//회의제목, 회의일 
//private String meetingTitle, meetingDate;

