package com.incbook.project.service;

import com.incbook.project.domain.MemberVO;

public interface MemberService {
	
	public MemberVO checkIdPassword(MemberVO vo) throws Exception;

}
