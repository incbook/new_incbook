package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.TradeVO;

public interface TradeService {

	public void insertTrade(TradeVO tradeVO, OwnVO ownVO, int memberId) throws Exception;

	public List<TradeVO> findLendersByMemberId(MemberVO login) throws Exception;

	public List<TradeVO> findOwnerByMemberId(MemberVO login) throws Exception;

}
