package com.projectors.mvc;

public class UsersDTO
{
	// 유저 속성 구성
	private String user_no, pin_no, id, pw, nickname, photourl;
	
	// getter / setter
	public String getUser_no()
	{
		return user_no;
	}

	public void setUser_no(String user_no)
	{
		this.user_no = user_no;
	}

	public String getPin_no()
	{
		return pin_no;
	}

	public void setPin_no(String pin_no)
	{
		this.pin_no = pin_no;
	}

	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	public String getPw()
	{
		return pw;
	}

	public void setPw(String pw)
	{
		this.pw = pw;
	}

	public String getNickname()
	{
		return nickname;
	}

	public void setNickname(String nickname)
	{
		this.nickname = nickname;
	}

	public String getPhotourl()
	{
		return photourl;
	}

	public void setPhotourl(String photourl)
	{
		this.photourl = photourl;
	}
	
}
