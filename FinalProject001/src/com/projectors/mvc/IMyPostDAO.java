package com.projectors.mvc;

import java.util.ArrayList;

public interface IMyPostDAO
{
	
	// 현재 모집 중인 공고가 있는지 체크
	public int presentCheck(String pinNo);
	
	// 현재 모집 중인 공고 검색
	public MyPostDTO presentRecruit(String pinNo);
	
	
	// 미열람자 수 체크
	public int checkPresentNone(String recruitNo);
	// 현재 공고 중 미열람자
	public ArrayList<MyPostDTO> presentNone(String recruitNo);
	
	
	// 불합격자 수 체크
	public int checkPresentX(String recruitNo);
	// 현재 공고 중 불합격자
	public ArrayList<MyPostDTO> presentX(String recruitNo);
	
	
	// 합격자 수 체크
	public int checkPresentO(String recruitNo);
	// 현재 공고 중 합격자
	public ArrayList<MyPostDTO> presentO(String recruitNo);
	
	
	
	// 모집 포지션 번호 입력 해서 마감된 포지션인지 확인하는 메소드
	// 반환 값이 != 0 이면 마감된 모집 포지션의 번호
	public int fullCheckRecPos(String recruitPosNo);
	
	//-- 특정 지원서 보기 클릭 시 열람 처리 할 메소드
	public void readApply(String applyNo);
	
	
	//-- 특정 지원서에 대해 수락 버튼 클릭 시 수행될 메소드들
	//1. first_ck 테이블이 insert
	public void firstCk(String applyNo);
	
	// 1차 합격자 수 구하기 메소드
	public int firstCount(String recruitNo);
	// 모집 예정 인원수     -- ★★★★★★  1차 합격자수 인원가 비교해서 같으면 최종 합류 열어줄거임
	public int recruitCount(String recruitNo);
	
	// 특정 
	
	// 각 포지션별 모집 인원 구하는 메소드
	public ArrayList<MyPostDTO> positionInfo(String recruitNo);
	// 각 포지션별 마감 인원 구하는 메소드
	public ArrayList<MyPostDTO> doneInfo(String recruitNo);
	// 각
	
	//2. final 테이블에 insert
	public void finalCk(String applyNo);
	// a- final 테이블에 있는 인원수 
	public int finalCount(String recruitNo);

	/*
	 * // 모집 현황 포지션 명 2 /3 이런꼴로 보이기 위함 public ArrayList<MyPostDTO>
	 * posYetCount(String recruitNo); public ArrayList<MyPostDTO>
	 * posDoneCount(String recruitNo);
	 * 
	 * 
	 */
	// 모집 현황 포지션 명 2 /3 이런꼴로 보이기 위함 public ArrayList<MyPostDTO>
	public ArrayList<MyPostDTO> postionCount(String recruitNo);
	
	
	
	
	/*
	 * // project 테이블에 기입 
	 * public void insertProject(String recruitNo);
	 */
	
	
	
}
