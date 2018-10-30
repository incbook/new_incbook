package com.incbook.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.BookclubVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

@Repository
public class BookclubDAOImpl implements BookclubDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "my_incbook.mapper.bookclubMapper";

	@Override
	public List<BookclubVO> bookclubList(SearchCriteria cri) throws Exception {

		return sqlSession.selectList(namespace + ".bookclubList", cri);
	}

	@Override
	public BookclubVO readBookclub(Integer id) throws Exception {
		
		return sqlSession.selectOne(namespace + ".readBookclub", id);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return sqlSession.selectOne(namespace + ".listSearchCount", cri);
	}

}
