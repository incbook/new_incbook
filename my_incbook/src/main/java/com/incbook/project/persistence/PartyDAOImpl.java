package com.incbook.project.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.PartyVO;

@Repository
public class PartyDAOImpl implements PartyDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.partyMapper";

	@Override
	public void signUp(PartyVO vo) throws Exception {
		sqlSession.insert(namespace+".signUp", vo);
	}
	
	
}
