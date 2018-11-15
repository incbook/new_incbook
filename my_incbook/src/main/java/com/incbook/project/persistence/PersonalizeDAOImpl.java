package com.incbook.project.persistence;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.PersonalizationVO;

@Repository
public class PersonalizeDAOImpl implements PersonalizeDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.personalizeMapper";

	@Override
	public List<String> findPersonalByMemberId(MemberVO vo) throws Exception {
		return sqlSession.selectList(namespace + ".findPersonalByMemberId", vo);
	}
	
	@Override
	public List<String> maxTradeGenre(MemberVO vo) throws Exception {
		return sqlSession.selectList(namespace + ".maxTradeGenre", vo);
	}

	@Override
	public List<String> maxOwnGenre(MemberVO vo) throws Exception {
		return sqlSession.selectList(namespace + ".maxOwnGenre", vo);
	}

	@Override
	public void deletePersonalChoice(int memberId) throws Exception {
		sqlSession.delete(namespace + ".deletePersonalChoice", memberId);
	}

	@Override
	public void insertPersonalChoice(Map<String, Object> genreMap) throws Exception {
		sqlSession.insert(namespace + ".insertPersonalChoice", genreMap);
	}
	
}
