package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.PersonalizationVO;

public interface PersonalizeService {

	public List<PersonalizationVO> findPersonalByMemberId(MemberVO vo) throws Exception;

	public List<String> maxTradeGenre(MemberVO vo) throws Exception;
	
	public void personalChoiceRenew(int memberId) throws Exception;

	public void personalChoiceRenew(String[] genre, int memberId) throws Exception;

}
