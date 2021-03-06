package com.incbook.project.service;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.domain.PaymentVO;
import com.incbook.project.domain.TradeVO;

public interface MemberService {
	
	public MemberVO checkIdPassword(MemberVO vo) throws Exception;
	
	public MemberVO memberInfo(OwnVO vo) throws Exception;

	public MemberVO findMemberById(int id) throws Exception;

	public MemberVO findMemberByLoginIdAndJumin(MemberVO vo) throws Exception;

	public String loginIdCeheck(MemberVO vo) throws Exception;

	public void signUp(PartyVO pvo, MemberVO vo) throws Exception;
	
	public void memberModify(PartyVO pvo, MemberVO mvo) throws Exception;

	public void memberDelete(PartyVO pvo) throws Exception;

	public MemberVO checkPassword(MemberVO vo) throws Exception;

	public void roulettePoint(MemberVO vo, int point) throws Exception;
	
	public void endOfTradeAmountOwner(TradeVO tradeVO) throws Exception;

	public void endOfTradeAmountLender(TradeVO tradeVO) throws Exception;
	
	public void passwordChange(MemberVO memberVO) throws Exception;
}
