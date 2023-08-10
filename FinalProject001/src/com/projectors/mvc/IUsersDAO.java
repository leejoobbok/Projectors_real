package com.projectors.mvc;

import java.util.ArrayList;

public interface IUsersDAO
{
	/*=================================
	 필요한 기능들
	 1. 로그인 -> 위한 id, pw로 일치 조회
	 2. 회원 가입을 위한 PIN_NO 생성 작업
	 3. 회원 가입을 개인 정보 입력 작업
	 
	 =================================*/
	
	public  ArrayList<UsersDTO> list();
	
	public void addPin();
	public void addUsers(UsersDTO usersDTO);
	
	public int modify(UsersDTO usersDTO);
	
	public int remove(String user_no);
		
	public String getPinNo();
	
	public UsersDTO get(String pin_no);
	
	public int checkId(String userId);
	
	public int checknickname(String nickname);
	
}
