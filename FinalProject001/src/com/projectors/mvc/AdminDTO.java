package com.projectors.mvc;

public class AdminDTO
{
	// 관리자 속성 구성
	private String admin_no, admin_id, admin_pw, reg_date, pin_no;
	
	// getter / setter 구성

	public String getAdmin_no()
	{
		return admin_no;
	}

	public void setAdmin_no(String admin_no)
	{
		this.admin_no = admin_no;
	}

	public String getAdmin_id()
	{
		return admin_id;
	}

	public void setAdmin_id(String admin_id)
	{
		this.admin_id = admin_id;
	}

	public String getAdmin_pw()
	{
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw)
	{
		this.admin_pw = admin_pw;
	}

	public String getReg_date()
	{
		return reg_date;
	}

	public void setReg_date(String reg_date)
	{
		this.reg_date = reg_date;
	}

	public String getPin_no()
	{
		return pin_no;
	}

	public void setPin_no(String pin_no)
	{
		this.pin_no = pin_no;
	}
	
}
