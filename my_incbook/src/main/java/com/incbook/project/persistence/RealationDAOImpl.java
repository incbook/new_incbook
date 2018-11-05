package com.incbook.project.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.PartyVO;
import com.incbook.project.domain.RealationVO;

@Repository
public class RealationDAOImpl implements RealationDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.realationMapper";

	@Override
	public void realationInsert(RealationVO rvo) {
		sqlSession.insert(namespace + ".realationInsert", rvo);
	}

}
