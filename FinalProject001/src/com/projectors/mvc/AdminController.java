package com.projectors.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AdminController
{
	// 주요속성구성
	@Autowired
	private SqlSession sqlSession;
	
	
	//admin으로 로그인 시 보여질 main 페이지 list 
	//-- (금일 회원 접속 수, 새 문의 건수 확인, 새 신고 건수 확인)
}
