package com.projectors.mvc;

public interface ILoginDAO
{
	public int count();
	
	//-- 유저 로그인
	public int userLogin(LoginDTO loginDTO);

	public String getUserPin(LoginDTO loginDTO);
	
	
	//-- 관리자 로그인
	public int adminLogin(LoginDTO loginDTO);	
	
	public String getAdminPin(LoginDTO loginDTO);
	


	
	//-- 로그인 기록
	
	public int loginRec(String pinNo);
	
	
	
}
