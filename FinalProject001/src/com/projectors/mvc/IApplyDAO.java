package com.projectors.mvc;

public interface IApplyDAO
{
	public ApplyDTO memberInfo(String pinNo);
	public ApplyDTO recruitInfo(String recruitPosNo);
}
