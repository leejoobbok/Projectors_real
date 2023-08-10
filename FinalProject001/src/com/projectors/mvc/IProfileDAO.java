/*================================
 * IProfileDAO.java
 * ===============================*/

package com.projectors.mvc;

import java.util.ArrayList;

public interface IProfileDAO
{
	// 프로필 신규 작성
	public void insertProfile(ProfileDTO profileDTO);
	
	// 프로필 수정
	public void updateProfile(ProfileDTO profileDTO);
	
	// 프로필 수정을 위한 pinNo로 프로필 데이터 불러오는 작업
	public ProfileDTO getProfile(String pinNo);
	
	// 프로필 번호로 평가지 불러오는 작업
	// RateDTO 필요 ( or 중복 변수 생성)
	public String getRate(String profileNo);
	
	// pinNo로 이때까지 진행했던 프로필 이력 불러오는 메소드
	// ProjectDTO 필요 ( or 중복 변수 생성)
	public String getProjects(String pinNo);
	
	public ArrayList<ProfileDTO> getUserTool(String pinNo);

}
