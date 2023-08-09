package com.projectors.mvc;

import java.util.ArrayList;

public interface IRecruitDAO
{
	public ArrayList<RecruitDTO> lists();
	public ArrayList<String> showTool(String recruitNo);
	
	public ArrayList<RecruitDTO> optionRegion();
	public ArrayList<RecruitDTO> optionDoType();
	public ArrayList<RecruitDTO> optionPos();
	
	public ArrayList<String> subRegionList(int regionNo);
	public ArrayList<RecruitDTO> countRecruitMember(String recruitNo);
	
	public RecruitDTO article(String recruitNo);
	
	public ArrayList<RecruitDTO> countPosRecruitMember(String recruitNo);
	public ArrayList<RecruitDTO> recruitMember(String recruitNo);
}
