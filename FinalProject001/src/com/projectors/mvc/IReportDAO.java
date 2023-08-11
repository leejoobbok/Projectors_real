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
	
	// 공고신고처리완료 리스트
	public ArrayList<ReportDTO> recruitReportComplete();
	// 공고신고처리완료 - 관리자 ID 검색
	public ArrayList<ReportDTO> searchAdminPinNo(String searchVal);
	// 공고신고처리완료 - 유저 닉네임 검색
	public ArrayList<ReportDTO> searchReportedUserPinNo(String searchVal);
	// 공고신고처리완료 - 신고 번호 검색
	public ArrayList<ReportDTO> searchRepNo(String searchVal);
	
	
	// 지원서신고처리대기 리스트
	public ArrayList<ReportDTO> reportedApplyList();
	// 지원서신고 처리 insert
	public int clearManageApplyReport(ReportDTO dto);
	// 지원서신고 반려 insert
	public int rejectManageApplyReport(ReportDTO dto);
	
	// 지원서 신고처리완료 리스트
	public ArrayList<ReportDTO> applyReportComplete();
	// 지원서 신고처리완료 - 관리자 ID 검색
	public ArrayList<ReportDTO> applySearchAdminPinNo(String searchVal);
	// 지원서 신고처리완료 - 유저 닉네임 검색
	public ArrayList<ReportDTO> applySearchReportedUserPinNo(String searchVal);
	// 지원서 신고처리완료 - 신고 번호 검색
	public ArrayList<ReportDTO> applySearchRepNo(String searchVal);
	
	
}
