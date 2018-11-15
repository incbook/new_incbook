package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.pagecriteria.PageCriteria;
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
	@Override
	public void updateViewCnt(Integer id) throws Exception {
		
		sqlSession.update(namespace+".updateViewCnt", id);
	}

	@Override
	public BookVO findBookByID2(Integer id) throws Exception {
		return sqlSession.selectOne(namespace+".findBookByID2", id);
	}
	
	@Override
	public List<BookVO> newBookChartList(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace+".newBookChartList", cri);
	}
	
	@Override
	public List<BookVO> searchList(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace+".searchList", cri);
	}

	@Override
	public int searchListCount(SearchCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace+".searchListCount", cri);
	}
	
	@Override
	public List<BookVO> genreTop100List(PageCriteria cri) throws Exception {
		return sqlSession.selectList(namespace+".genreTop100List", cri);
	}

	@Override
	public int genreListCount(PageCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace+".genreListCount", cri);
	}

	@Override
	public BookVO findBookByOwnBookID(OwnVO vo) throws Exception {
		return sqlSession.selectOne(namespace+".findBookByOwnBookID", vo);
	}

	@Override
	public List<BookVO> personalizeList(List<Map<String, Object>> genreList) throws Exception {
		return sqlSession.selectList(namespace+".personalizeList", genreList);
	}

	@Override
	public List<BookVO> equalGenreBookRandomList(BookVO vo) throws Exception {
		return sqlSession.selectList(namespace + ".equalGenreBookRandomList", vo);
	}
	
}
