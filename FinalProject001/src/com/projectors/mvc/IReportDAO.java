package com.projectors.mvc;

import java.util.ArrayList;

public interface IReportDAO
{
	// 신고 처벌 - 유형
	public ArrayList<ReportDTO> punishContent();
	// 신고 처벌 - 기간
	public ArrayList<ReportDTO> periods();
	
	
	// 공고신고처리대기 리스트
	public ArrayList<ReportDTO> reportedRecruitList();
	// 공고신고 처리 insert
	public int clearManageReport(ReportDTO dto);
	// 공고신고 반려 insert
	public int rejectManageReport(ReportDTO dto);
}