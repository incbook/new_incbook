package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.BoardVO;
import com.incbook.project.domain.BookclubVO;
import com.incbook.project.domain.NoticeVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

public interface BookclubDAO {

	public List<BookclubVO> bookclubList(SearchCriteria cri) throws Exception;
	
	/*검색기능추가*/public List<BookclubVO> bookclubSearchList(SearchCriteria cri) throws Exception;
	
	/*검색기능추가*/public int bookclubListSearchCount(SearchCriteria cri) throws Exception;
	
	public List<BoardVO> boardList(Integer bookclubId) throws Exception;
	
	public List<Integer> boardIdList(Integer bookclubId) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public void bookclubInsert(Map<String, Object> bookclubMap) throws Exception;
	
	public void updateBookclub(Map<String, Object> bookclubMap) throws Exception;
	
	public void updateBoard(BoardVO vo) throws Exception;
	
	public BookclubVO readBookclub(Integer bookclubId) throws Exception;
	
	public BoardVO readBoard(Integer boardId) throws Exception;
	
	public void deleteBookclub(Integer bookclubId) throws Exception;
	
	public void deleteAllBoard(Integer bookclubId) throws Exception;
	
	public void deleteBoard(Integer boardId) throws Exception;
	
	public void deleteAllNotice(Integer boardId) throws Exception;
	
	public void deleteNotice(Integer noticeId) throws Exception;
	
	public void boardInsert(BoardVO vo) throws Exception;
	
	public List<NoticeVO> noticeList(Map<String, Object> noticeMap) throws Exception;
	
	/*검색기능추가*/ public List<NoticeVO> noticeSearchList(Map<String, Object> noticeMap) throws Exception;
	
	/*검색기능추가*/ public int noticeListSearchCount(SearchCriteria cri) throws Exception;
	
	public void noticeInsert(NoticeVO vo) throws Exception;
	
	public NoticeVO readNotice(Integer noticeId) throws Exception;
	
	public void updateNoticeViewCount(Integer noticeId) throws Exception;
	
	public void updateNotice(NoticeVO vo) throws Exception;

	public BookclubVO bookclubNameOfReadNotice(Integer bookclubId) throws Exception;
	
	public BoardVO boardTitleOfReadNotice(Integer boardId) throws Exception;

	
}

