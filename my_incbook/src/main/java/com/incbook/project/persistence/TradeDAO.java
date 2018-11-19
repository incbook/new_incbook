package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.TradeVO;

public interface TradeDAO {

	public void insertTrade(TradeVO vo) throws Exception;

	public void insertRent(Map<String, Object> rentMap) throws Exception;

	public List<TradeVO> findLendersByMemberId(MemberVO login) throws Exception;

	public List<TradeVO> findOwnerByMemberId(MemberVO login) throws Exception;
	
	public TradeVO findTradeByid(TradeVO trade) throws Exception;

	public void tradeStateChange(Map<String, Object> tradeState) throws Exception;
	
}
