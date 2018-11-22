package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.BoardVO;
import com.incbook.project.domain.BookclubVO;
import com.incbook.project.domain.NoticeVO;
import com.incbook.project.domain.PartyVO;
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
	public List<BoardVO> boardList(Integer bookclubId) throws Exception {

		return sqlSession.selectList(namespace + ".boardList", bookclubId);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return sqlSession.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public void bookclubInsert(Map<String, Object> bookclubMap) throws Exception {
		sqlSession.insert(namespace + ".bookclubInsert", bookclubMap);
	}

	@Override
	public void updateBookclub(Map<String, Object> bookclubMap) throws Exception {
		sqlSession.insert(namespace + ".updateBookclub", bookclubMap);
		
	}

	@Override
	public BookclubVO readBookclub(Integer bookclubId) throws Exception {
		return sqlSession.selectOne(namespace + ".readBookclub", bookclubId);
	}

	@Override
	public void deleteBookclub(Integer bookclubId) throws Exception {
		sqlSession.delete(namespace + ".deleteBookclub", bookclubId);
		
	}

	@Override
	public void deleteAllBoard(Integer bookclubId) throws Exception {
		sqlSession.delete(namespace + ".deleteAllBoard", bookclubId);
		
	}

	@Override
	public void boardInsert(BoardVO vo) throws Exception {
		sqlSession.insert(namespace + ".boardInsert", vo);
	}

	@Override
	public List<NoticeVO> noticeList(Map<String, Object> noticeMap) throws Exception {
		return sqlSession.selectList(namespace + ".noticeList", noticeMap);
	}

	@Override
	public BoardVO readBoard(Integer boardId) throws Exception {
		return sqlSession.selectOne(namespace + ".readBoard", boardId);
		
	}

	@Override
	public void updateBoard(BoardVO vo) throws Exception {
		sqlSession.selectOne(namespace + ".updateBoard", vo);
	}

	@Override
	public void deleteBoard(Integer boardId) throws Exception {
		sqlSession.delete(namespace + ".deleteBoard", boardId);

	}

	@Override
	public void deleteAllNotice(Integer boardId) throws Exception {
		sqlSession.delete(namespace + ".deleteAllNotice", boardId);

	}

	@Override
	public void noticeInsert(NoticeVO vo) throws Exception {
		sqlSession.insert(namespace + ".noticeInsert", vo);
		
	}

	@Override
	public NoticeVO readNotice(Integer noticeId) throws Exception {
		return sqlSession.selectOne(namespace + ".readNotice", noticeId);
	}

	@Override
	public void updateNoticeViewCount(Integer noticeId) throws Exception {
		sqlSession.update(namespace+".updateNoticeViewCount", noticeId);		
	}

	@Override
	public void updateNotice(NoticeVO vo) throws Exception {
		sqlSession.selectOne(namespace + ".updateNotice", vo);
		
	}

	@Override
	public void deleteNotice(Integer noticeId) throws Exception {
		sqlSession.delete(namespace + ".deleteNotice", noticeId);
	}

	@Override
	public List<Integer> boardIdList(Integer bookclubId) throws Exception {
		return sqlSession.selectList(namespace + ".boardIdList", bookclubId);
	}
/*북클럽 검색기능 두개추가*/
	@Override
	public List<BookclubVO> bookclubSearchList(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".bookclubSearchList", cri);
	}

	@Override
	public int bookclubListSearchCount(SearchCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace + ".bookclubListSearchCount", cri);
	}
//게시글 검색기능 두개추가
	@Override
	public List<NoticeVO> noticeSearchList(Map<String, Object> noticeMap) throws Exception {
		return sqlSession.selectList(namespace + ".noticeSearchList", noticeMap);
	}

	@Override
	public int noticeListSearchCount(SearchCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace + ".noticeListSearchCount", cri);
	}

	@Override
	public BookclubVO bookclubNameOfReadNotice(Integer bookclubId) throws Exception {
		return sqlSession.selectOne(namespace + ".bookclubNameOfReadNotice", bookclubId);
	}

	@Override
	public BoardVO boardTitleOfReadNotice(Integer boardId) throws Exception {
		return sqlSession.selectOne(namespace + ".boardTitleOfReadNotice", boardId);
	}

	

	
}
