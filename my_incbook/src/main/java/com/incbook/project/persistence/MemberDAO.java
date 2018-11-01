package com.incbook.project.persistence;

import java.util.Map;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.PartyVO;

public interface MemberDAO {

	public MemberVO checkIdPassword(MemberVO vo) throws Exception;
	
	public void signUp(Map<String, Object> vo) throws Exception;

	public String loginIdCeheck(MemberVO vo) throws Exception;

	public void memberModify(Map<String, Object> vo) throws Exception;
	
	public void memberDelete(PartyVO vo) throws Exception;
	
	public MemberVO checkPassword(MemberVO vo);
}
