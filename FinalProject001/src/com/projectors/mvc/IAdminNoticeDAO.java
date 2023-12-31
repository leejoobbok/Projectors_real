package com.projectors.mvc;

import java.util.ArrayList;

public interface IAdminNoticeDAO
{
	public ArrayList<AdminNoticeDTO> lists();
	
	public int add(AdminNoticeDTO dto);
	
	public int remove(String adminNoticeNo);
	
	public AdminNoticeDTO article(String adminNoticeNo);
	
}
