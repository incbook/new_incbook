package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;

public interface PersonalizeDAO {

	public List<String> findPersonalByMemberId(MemberVO vo) throws Exception;

	public List<String> maxTradeGenre(MemberVO vo) throws Exception;

	public void deletePersonalChoice(int memberId) throws Exception;

	public void insertPersonalChoice(Map<String, Object> genreMap) throws Exception;

	public List<String> maxOwnGenre(MemberVO vo) throws Exception;
	
}
