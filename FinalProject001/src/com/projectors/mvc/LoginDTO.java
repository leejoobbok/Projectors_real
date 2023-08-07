package com.projectors.mvc;

public class LoginDTO
{
	private String adminNo, adminId, adminPw, pinNo;
   	//-- 관리자번호, 관리자아이디, 관리자패스워드, 식별번호(공용)
   	private String usersId, usersPw;
	//-- 유저 아이디, 유저 패스워드
   	private int count;
   	//-- 로그인 시 데이터 조회 되었는지 확인하는 COUNT (0 또는 1)
	public String getAdminNo()
	{
		return adminNo;
	}
	public void setAdminNo(String adminNo)
	{
		this.adminNo = adminNo;
	}
	public String getAdminId()
	{
		return adminId;
	}
	public void setAdminId(String adminId)
	{
		this.adminId = adminId;
	}
	public String getAdminPw()
	{
		return adminPw;
	}
	public void setAdminPw(String adminPw)
	{
		this.adminPw = adminPw;
	}
	public String getPinNo()
	{
		return pinNo;
	}
	public void setPinNo(String pinNo)
	{
		this.pinNo = pinNo;
	}
	public String getUsersId()
	{
		return usersId;
	}
	public void setUsersId(String usersId)
	{
		this.usersId = usersId;
	}
	public String getUsersPw()
	{
		return usersPw;
	}
	public void setUsersPw(String usersPw)
	{
		this.usersPw = usersPw;
	}
	public int getCount()
	{
		return count;
	}
	public void setCount(int count)
	{
		this.count = count;
	}
	   
	   
}
