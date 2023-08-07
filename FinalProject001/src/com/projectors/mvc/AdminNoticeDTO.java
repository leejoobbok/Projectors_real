package com.projectors.mvc;

public class AdminNoticeDTO
{
	// 관리자 속성 구성
	private String adminNoticeNo, pinNo, title, content;
	//-- 관리자공지번호, 관리자식별번호, 제목, 내용
	private String adminNo;
	//-- 어느 관리자가 글을 썼는지 식별할 수 있게 하기 위함
	
	// getter / setter
	public String getAdminNoticeNo()
	{
		return adminNoticeNo;
	}

	public void setAdminNoticeNo(String adminNoticeNo)
	{
		this.adminNoticeNo = adminNoticeNo;
	}

	public String getPinNo()
	{
		return pinNo;
	}

	public void setPinNo(String pinNo)
	{
		this.pinNo = pinNo;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getAdminNo()
	{
		return adminNo;
	}

	public void setAdminNo(String adminNo)
	{
		this.adminNo = adminNo;
	}

}
