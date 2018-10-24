package com.incbook.project.persistence;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.MemberVO;

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
	
}
