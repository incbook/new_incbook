package com.incbook.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

@Repository
public class BookDAOImpl implements BookDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.bookMapper";
	
	@Override
	public BookVO bookInfo(BookVO vo) throws Exception {

		return sqlSession.selectOne(namespace+".bookInfo", vo);
	}

	@Override
	public void createbookInfo(BookVO vo) throws Exception {

		sqlSession.insert(namespace+".createbookInfo", vo);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace+".listSearchCount", cri);
	}

	@Override
	public List<BookVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace+".listSearchCriteria", cri);
	}

	@Override
	public BookVO findBookByID(Integer id) throws Exception {
		return sqlSession.selectOne(namespace+".findBookByID", id);
	}

	@Override
	public void updateBook(BookVO vo) throws Exception {
		System.out.println(vo);
		sqlSession.update(namespace+".updateBook", vo);
		
	}
	
}
