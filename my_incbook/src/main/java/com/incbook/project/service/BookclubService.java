package com.incbook.project.service;

import java.util.List;
import java.util.Map;

import com.incbook.project.domain.BoardVO;
import com.incbook.project.domain.BookclubVO;
import com.incbook.project.domain.NoticeVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

public interface BookclubService {
	public static final int pagesize = 10;

	public List<BookclubVO> bookclubList(SearchCriteria cri) throws Exception;
	
	/*검색기능추가*/ public List<BookclubVO> bookclubSearchList(SearchCriteria cri) throws Exception;
	
	/*검색기능추가*/ public int bookclubListSearchCount(SearchCriteria cri) throws Exception;

	public List<BoardVO> boardList(Integer bookclubId) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public void bookclubInsert(PartyVO pvo, BookclubVO bvo) throws Exception;
	
	public void updateBookclub(PartyVO pvo, BookclubVO bvo) throws Exception;
	
	public void updateBoard(BoardVO vo) throws Exception;
	
	public BookclubVO readBookclub(Integer bookclubId) throws Exception;

	public BoardVO readBoard(Integer baordId) throws Exception;
	
	public void deleteBookclub(Integer bookclubId) throws Exception;
	
	public void deleteBoard(Integer boardId) throws Exception;
	
	public void boardInsert(BoardVO vo) throws Exception;
	
	public List<NoticeVO> noticeList(Integer boardId, SearchCriteria cri) throws Exception;
	
	/*검색기능추가*/ public List<NoticeVO> noticeSearchList(Integer boardId, SearchCriteria cri) throws Exception;
	
	/*검색기능추가*/ public int noticeListSearchCount(SearchCriteria cri) throws Exception;
	
	public void noticeInsert(NoticeVO vo) throws Exception;
	
	public NoticeVO readNotice(Integer noticeId) throws Exception;
	
	public void updateNotice(NoticeVO vo) throws Exception;
	
	public void deleteNotice(Integer noticeId) throws Exception;
}
