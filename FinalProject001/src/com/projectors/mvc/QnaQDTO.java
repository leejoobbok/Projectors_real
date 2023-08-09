package com.projectors.mvc;

public class QnaQDTO // 1:1 문의의 질문(Q) 관련 DTO  
{
	private String questionNo, pinNo , questionTitle, questionContent, qCreatedDate, isReply;
	// 문의번호, (회원)식별번호, 문의제목, 문의내용, 등록일, 답변 여부 
	
	// getter setter
	public String getQuestionNo()
	{
		return questionNo;
	}

	public void setQuestionNo(String questionNo)
	{
		this.questionNo = questionNo;
	}

	public String getPinNo()
	{
		return pinNo;
	}

	public void setPinNo(String pinNo)
	{
		this.pinNo = pinNo;
	}

	public String getQuestionTitle()
	{
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle)
	{
		this.questionTitle = questionTitle;
	}

	public String getQuestionContent()
	{
		return questionContent;
	}

	public void setQuestionContent(String questionContent)
	{
		this.questionContent = questionContent;
	}

	public String getqCreatedDate()
	{
		return qCreatedDate;
	}

	public void setqCreatedDate(String qCreatedDate)
	{
		this.qCreatedDate = qCreatedDate;
	}

	public String getIsReply()
	{
		return isReply;
	}

	public void setIsReply(String isReply)
	{
		this.isReply = isReply;
	}
	
}