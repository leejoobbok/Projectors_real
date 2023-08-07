package com.projectors.mvc;

public class AdminDTO
{
	// 관리자 속성 구성
	private String adminNo, adminId, adminPw, pinNo, regDate, loginRec, logoutRec;
	//-- 관리자번호, 관리자아이디, 관리자패스워드, 식별번호, 등록일, 로그인 기록, 로그아웃 기록
	
	// getter / setter
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

	public String getRegDate()
	{
		return regDate;
	}

	public void setRegDate(String regDate)
	{
		this.regDate = regDate;
	}

	public String getLoginRec()
	{
		return loginRec;
	}

	public void setLoginRec(String loginRec)
	{
		this.loginRec = loginRec;
	}

	public String getLogoutRec()
	{
		return logoutRec;
	}

	public void setLogoutRec(String logoutRec)
	{
		this.logoutRec = logoutRec;
	}
	
	

}
