package com.projectors.mvc;

public interface ILoginDAO
{
	public int count();
	
	//-- 유저 로그인
	public int userLogin(String userId, String userPw);

	public String getUserPin(String userId, String userPw);
	
	public int checkWDUser(String pinNo);
	

	
	//-- 관리자 로그인
	public int adminLogin(String adminId, String adminPw);	
	
	public String getAdminPin(String adminId, String adminPw);
	
	public int checkQuitAdmin(String pinNo);
	

	
	//-- 로그인 기록
	
	public int loginRec(String pinNo);
	
	
	
}
