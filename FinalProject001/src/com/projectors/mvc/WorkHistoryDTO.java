package com.projectors.mvc;

public class WorkHistoryDTO
{
	// 작업자 닉네임, 작업글 제목, 작업일 
	private String nickName, workTitle, workDate;

	public String getNickName()
	{
		return nickName;
	}

	public void setNickName(String nickName)
	{
		this.nickName = nickName;
	}

	public String getWorkTitle()
	{
		return workTitle;
	}

	public void setWorkTitle(String workTitle)
	{
		this.workTitle = workTitle;
	}

	public String getWorkDate()
	{
		return workDate;
	}

	public void setWorkDate(String workDate)
	{
		this.workDate = workDate;
	}
	
	
}
