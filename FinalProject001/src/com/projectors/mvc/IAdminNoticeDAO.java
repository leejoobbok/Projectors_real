package com.projectors.mvc;

import java.util.ArrayList;

public interface IAdminNoticeDAO
{
	public ArrayList<AdminDTO> lists();
	
	public int add(AdminDTO dto);
	
	public int remove(String adminNoticeNo);
}
