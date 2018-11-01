package com.incbook.project.service;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.PartyVO;

public interface MemberService {
	
	public MemberVO checkIdPassword(MemberVO vo) throws Exception;

	public void signUp(PartyVO pvo, MemberVO vo) throws Exception;

	public String loginIdCeheck(MemberVO vo) throws Exception;
	
	public void memberModify(PartyVO pvo, MemberVO mvo) throws Exception;

	public void memberDelete(PartyVO pvo) throws Exception;

	public MemberVO checkPassword(MemberVO vo);
}
