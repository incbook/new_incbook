package com.incbook.project.persistence;

import java.util.Map;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.domain.TradeVO;

public interface MemberDAO {

	public MemberVO checkIdPassword(MemberVO vo) throws Exception;
	
	public MemberVO memberInfo(OwnVO vo) throws Exception;

	public MemberVO findMemberById(int id) throws Exception;
	
	public String loginIdCeheck(MemberVO vo) throws Exception;

	public void signUp(Map<String, Object> vo) throws Exception;

	public void memberModify(Map<String, Object> vo) throws Exception;
	
	public void memberDelete(PartyVO vo) throws Exception;
	
	public MemberVO checkPassword(MemberVO vo) throws Exception;
	
	public void pointSpend(Map<String, Object> pointMap) throws Exception;

	public void endOfTradeAmountOwner(TradeVO tradeVO) throws Exception;

	public void endOfTradeAmountLender(TradeVO tradeVO) throws Exception;
}
