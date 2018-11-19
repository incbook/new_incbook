package com.incbook.project.service;

import java.util.List;
import java.util.Map;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;

public interface PersonalizeService {

	public List<String> findPersonalByMemberId(MemberVO vo) throws Exception;

	public List<String> maxTradeGenre(MemberVO vo) throws Exception;
	
	public List<String> maxOwnGenre(MemberVO vo) throws Exception;

	public void personalChoiceRenew(int memberId) throws Exception;

	public void personalChoiceRenew(String[] genre, int memberId) throws Exception;

	public List<BookVO> personalizeList(MemberVO login) throws Exception;

	public List<BookVO> personalizeListOfIndex(MemberVO login) throws Exception;

}
