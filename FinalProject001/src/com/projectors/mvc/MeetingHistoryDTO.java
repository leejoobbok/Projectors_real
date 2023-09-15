package com.projectors.mvc;

public class MeetingHistoryDTO
{
	// 회의제목, 회의일 
	private String meetingTitle, meetingDate;

	public String getMeetingTitle()
	{
		return meetingTitle;
	}

	public void setMeetingTitle(String meetingTitle)
	{
		this.meetingTitle = meetingTitle;
	}

	public String getMeetingDate()
	{
		return meetingDate;
	}

	public void setMeetingDate(String meetingDate)
	{
		this.meetingDate = meetingDate;
	}

	
}
