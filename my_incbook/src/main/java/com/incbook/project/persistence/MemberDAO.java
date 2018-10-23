package com.incbook.project.persistence;

import com.incbook.project.domain.MemberVO;

public interface MemberDAO {

	public MemberVO checkIdPassword(MemberVO vo) throws Exception;




}
