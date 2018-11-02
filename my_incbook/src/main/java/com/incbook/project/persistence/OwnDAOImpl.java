package com.incbook.project.persistence;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.PartyVO;

@Repository
public class OwnDAOImpl implements OwnDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.ownMapper";

	@Override
	public OwnVO findOwnByID(OwnVO vo) throws Exception {
		return sqlSession.selectOne(namespace+".findOwnByID", vo);
	}

	@Override
	public void ownInsert(Map<String, Object> ownMap) {
		sqlSession.insert(namespace + ".ownInsert", ownMap);
	}
}
