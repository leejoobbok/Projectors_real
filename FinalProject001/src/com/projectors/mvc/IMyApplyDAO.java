package com.projectors.mvc;

public interface IMyApplyDAO
{
	// 현재 지원서가 있는지 조회
	public int checkPresentApply(String pinNo);
	
	// 현재 지원서 정보
	public MyApplyDTO getPresentApply(String pinNo);
	
	// 현재 1차 합격 지원서가 있는지 조회
	public int checkFirstCk(String pinNo);
	
	// 1차 합격한 지원서 정보
	public MyApplyDTO getFirstCk(String pinNo);
	
	// 최종 합류 대기 중인 지원서가 있는지 조회
	public int checkFinal(String pinNo);
	
	// 최종 합류 대기 중인 지원서 정보
	public MyApplyDTO getFinal(String pinNo);
}
