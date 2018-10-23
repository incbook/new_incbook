package com.incbook.legacy.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.legacy.domain.LexiconVO;

@Repository
public class LexiconDAOImpl implements LexiconDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "p2_02_basic_board.mapper.inveredIndexMapper";

	@Override
	public void createLexiconByBatch(Map<String, List<LexiconVO>> map) throws Exception {
		sqlSession.insert(namespace+".createLexiconByBatch",map);
	}

	@Override
	public List<LexiconVO> findLexicon(Map<String, List<String>> map) throws Exception {
		List<LexiconVO> ret =sqlSession.selectList(namespace+".findLexicon",map);
		System.out.println(ret.size());
		return ret;
	}
	
}

