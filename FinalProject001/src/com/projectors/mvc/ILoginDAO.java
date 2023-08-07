package com.projectors.mvc;

public interface ILoginDAO
{
	public int count();
	
	public UsersDTO userLogin();
	
	public AdminDTO adminLogin();	
	
	
	
}
