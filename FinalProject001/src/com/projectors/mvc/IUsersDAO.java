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
	
	public int addPin(UsersDTO users);
	public int addUsers(UsersDTO users);
	
	public int modify(UsersDTO users);
	
	public int remove(String user_no);
	
	public int login(String id, String pw);
		
	public String getPinNo(String id, String pw);
	
	public UsersDTO get(String pin_no);
	
	
}
