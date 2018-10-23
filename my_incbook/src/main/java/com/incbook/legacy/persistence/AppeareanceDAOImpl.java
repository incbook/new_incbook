package com.incbook.legacy.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.legacy.domain.AppeareanceVO;


@Repository
public class AppeareanceDAOImpl implements AppeareanceDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "p2_02_basic_board.mapper.inveredIndexMapper";
	
	@Override
	public void createAppearanceByBatch(Map<String, List<AppeareanceVO>> map) throws Exception {
		sqlSession.insert(namespace+".createAppearanceByBatch",map);
	}
	
}