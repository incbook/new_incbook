package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.PaymentVO;

@Repository
public class PaymentDAOImpl implements PaymentDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.paymentMapper";

	@Override
	public void insertPoint(PaymentVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertPoint", vo);
	}

	@Override
	public List<PaymentVO> historyAll(Map<String, Object> historyMap) throws Exception {
		return sqlSession.selectList(namespace+".historyAll", historyMap);
	}

	@Override
	public int historyCount(int memberId) {
		return sqlSession.selectOne(namespace+".historyCount", memberId);
	}

	@Override
	public void roulettePoint(Map<String, Object> rPoint) throws Exception {
		sqlSession.insert(namespace+".roulettePoint", rPoint);
	}
	
	
	
	
}
