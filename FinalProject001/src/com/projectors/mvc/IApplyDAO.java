package com.projectors.mvc;

public interface IApplyDAO
{
	public ApplyDTO memberInfo(String pinNo);
	public ApplyDTO recruitInfo(String recruitPosNo);
	public void applyInsert(ApplyDTO dto);
	public ApplyDTO applyArticle(String applyNo);
}
