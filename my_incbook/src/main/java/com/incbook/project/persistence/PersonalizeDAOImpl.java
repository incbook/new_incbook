package com.incbook.project.persistence;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PersonalizeDAOImpl implements PersonalizeDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.personalizeMapper";

	@Override
	public void deletePersonalChoice(int memberId) throws Exception {
		sqlSession.delete(namespace + ".deletePersonalChoice", memberId);
	}

	@Override
	public void insertPersonalChoice(Map<String, Object> genreMap) throws Exception {
		sqlSession.insert(namespace + ".insertPersonalChoice", genreMap);
	}
	
}
