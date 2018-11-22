package com.incbook.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.domain.BoardVO;
import com.incbook.project.domain.BookclubVO;
import com.incbook.project.domain.NoticeVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.persistence.BookclubDAO;
import com.incbook.project.persistence.PartyDAO;

@Service
public class BookclubServiceImpl implements BookclubService {

	@Inject
	private BookclubDAO bookclubDAO;
	@Inject
	private PartyDAO partyDAO;

	@Override
	public List<BookclubVO> bookclubList(SearchCriteria cri) throws Exception {
		return bookclubDAO.bookclubList(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return bookclubDAO.listSearchCount(cri);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public void bookclubInsert(PartyVO pvo, BookclubVO bvo) throws Exception {
		partyDAO.partyInsert(pvo);
		Map<String, Object> bookclubMap = new HashMap();
		bookclubMap.put("bookclub", bvo);
		bookclubMap.put("party", pvo);
		bookclubDAO.bookclubInsert(bookclubMap);
	}

	@Override
	public List<BoardVO> boardList(Integer bookclubId) throws Exception {
		return bookclubDAO.boardList(bookclubId);
	}
	
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public void updateBookclub(PartyVO pvo, BookclubVO bvo) throws Exception {
		partyDAO.partyModify(pvo);
		Map<String, Object> bookclubMap = new HashMap();
		bookclubMap.put("bookclub", bvo);
		bookclubMap.put("party", pvo);
		bookclubDAO.updateBookclub(bookclubMap);
	}

	@Override
	public BookclubVO readBookclub(Integer bookclubId) throws Exception {
		return bookclubDAO.readBookclub(bookclubId);
	}
	
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public void deleteBookclub(Integer bookclubId) throws Exception {
		List<Integer> boardIdList = bookclubDAO.boardIdList(bookclubId);
		for(int boardId : boardIdList){
			deleteBoard(boardId);			
		}
		bookclubDAO.deleteBookclub(bookclubId);
	}

	@Override
	public void boardInsert(BoardVO vo) throws Exception {
		bookclubDAO.boardInsert(vo);
	}

	@Override
	public List<NoticeVO> noticeList(Integer boardId, SearchCriteria cri) throws Exception {
		Map<String, Object> noticeMap = new HashMap();
		noticeMap.put("boardId", boardId);
		noticeMap.put("cri", cri);
		return bookclubDAO.noticeList(noticeMap);
	}

	@Override
	public BoardVO readBoard(Integer boardId) throws Exception {
		return bookclubDAO.readBoard(boardId);
	}

	@Override
	public void updateBoard(BoardVO vo) throws Exception {
		bookclubDAO.updateBoard(vo);
	}
	
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public void deleteBoard(Integer boardId) throws Exception {
		bookclubDAO.deleteAllNotice(boardId);
		bookclubDAO.deleteBoard(boardId);
	}

	@Override
	public void noticeInsert(NoticeVO vo) throws Exception {
		bookclubDAO.noticeInsert(vo);
	}

	@Override
	public NoticeVO readNotice(Integer noticeId) throws Exception {
		bookclubDAO.updateNoticeViewCount(noticeId);
		return bookclubDAO.readNotice(noticeId);
	}

	@Override
	public void updateNotice(NoticeVO vo) throws Exception {
		bookclubDAO.updateNotice(vo);
	}

	@Override
	public void deleteNotice(Integer noticeId) throws Exception {
		bookclubDAO.deleteNotice(noticeId);
	}

	@Override
	public List<BookclubVO> bookclubSearchList(SearchCriteria cri) throws Exception {
		return bookclubDAO.bookclubSearchList(cri);
	}

	@Override
	public int bookclubListSearchCount(SearchCriteria cri) throws Exception {
		return bookclubDAO.bookclubListSearchCount(cri);
	}

	@Override
	public List<NoticeVO> noticeSearchList(Integer boardId, SearchCriteria cri) throws Exception {
		Map<String, Object> noticeMap = new HashMap();
		noticeMap.put("boardId", boardId);
		noticeMap.put("cri", cri);
		return bookclubDAO.noticeSearchList(noticeMap);
		
	}

	@Override
	public int noticeListSearchCount(SearchCriteria cri) throws Exception {
		return bookclubDAO.noticeListSearchCount(cri);
	}

	@Override
	public BookclubVO bookclubNameOfReadNotice(Integer bookclubId) throws Exception {
		return bookclubDAO.bookclubNameOfReadNotice(bookclubId);
	}

	@Override
	public BoardVO boardTitleOfReadNotice(Integer boardId) throws Exception {
		return bookclubDAO.boardTitleOfReadNotice(boardId);
	}

	

	
}
