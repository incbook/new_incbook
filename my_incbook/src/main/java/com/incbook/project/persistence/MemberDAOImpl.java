package com.incbook.project.persistence;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.domain.TradeVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.memberMapper";
	
	@Override
	public MemberVO checkIdPassword(MemberVO vo) throws Exception {

		return sqlSession.selectOne(namespace+".checkIdPassword", vo);
	}

	@Override
	public void signUp(Map<String, Object> vo) throws Exception {
		sqlSession.insert(namespace+".signUp", vo);
	}

	@Override
	public String loginIdCeheck(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace+".loginIdCeheck", vo);
	}

	@Override
	public void memberModify(Map<String, Object> vo) throws Exception {
		sqlSession.update(namespace+".memberModify", vo);
	}

	@Override
	public void memberDelete(PartyVO vo) throws Exception {
		sqlSession.delete(namespace+".memberDelete", vo);
	}

	@Override
	public MemberVO checkPassword(MemberVO vo) {
		return sqlSession.selectOne(namespace+".passwordCheck", vo);
	}

	@Override
	public MemberVO memberInfo(OwnVO vo) throws Exception {
		return sqlSession.selectOne(namespace+".memberInfo", vo);
	}

	@Override
	public MemberVO findMemberById(int id) throws Exception {
		return sqlSession.selectOne(namespace + ".findMemberById", id);
	}

	@Override
	public void pointSpend(Map<String, Object> pointMap) throws Exception {
		sqlSession.update(namespace+".pointSpend", pointMap);
	}

	@Override
	public void pointCharge(Map<String, Object> pointMap) throws Exception {
		sqlSession.update(namespace+".pointCharge", pointMap);
	}

	@Override
	public void roulettePoint(Map<String, Object> rPoint) throws Exception {
		sqlSession.update(namespace+".roulettePoint", rPoint);
	}
	
	@Override
	public void endOfTradeAmountOwner(TradeVO tradeVO) throws Exception {
		sqlSession.update(namespace+".endOfTradeAmountOwner", tradeVO);
	}

	@Override
	public void endOfTradeAmountLender(TradeVO tradeVO) throws Exception {
		sqlSession.update(namespace+".endOfTradeAmountLender", tradeVO);
	}
	
}
