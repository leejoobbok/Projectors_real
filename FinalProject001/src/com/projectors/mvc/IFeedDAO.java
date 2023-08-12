package com.projectors.mvc;

import java.util.ArrayList;

public interface IFeedDAO
{	
	// 특정 팀 스페이스에 속한 팀원이 볼 담벼락 메세지들 가져오기
	public ArrayList<FeedDTO> loadFeed();
	
	// 담벼락에 메세지 등록
	public int add(FeedDTO dto);
	
}
