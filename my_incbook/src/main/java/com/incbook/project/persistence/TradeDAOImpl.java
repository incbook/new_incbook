package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.TradeVO;

@Repository
public class TradeDAOImpl implements TradeDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.tradeMapper";

	@Override
	public void insertTrade(TradeVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertTrade", vo);
	}

	@Override
	public void insertRent(Map<String, Object> rentMap) throws Exception {
		sqlSession.insert(namespace + ".insertRent", rentMap);
	}

	@Override
	public List<TradeVO> findLendersByMemberId(MemberVO login) throws Exception {
		return sqlSession.selectList(namespace + ".findLendersByMemberId", login);
	}

	@Override
	public List<TradeVO> findOwnerByMemberId(MemberVO login) throws Exception {
		return sqlSession.selectList(namespace + ".findOwnerByMemberId", login);
	}

	@Override
	public TradeVO findTradeByid(TradeVO trade) throws Exception {
		return sqlSession.selectOne(namespace + ".findTradeByid", trade);
	}

	@Override
	public void tradeStateChange(Map<String, Object> tradeState) throws Exception {
		sqlSession.update(namespace + ".tradeStateChange", tradeState);
	}
	
}
