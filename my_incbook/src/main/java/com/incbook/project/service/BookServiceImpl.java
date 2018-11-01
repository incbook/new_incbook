package com.incbook.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.pagecriteria.PageCriteria;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.persistence.BookDAO;

@Service
public class BookServiceImpl implements BookService {
	@Inject
	private BookDAO dao;
	
	@Override
	public BookVO bookInfo(BookVO vo) throws Exception {
		return dao.bookInfo(vo);
	}
	
	@Override
	public void createbookInfo(BookVO vo) throws Exception {
		 dao.createbookInfo(vo);
	}

	@Override
	public List<BookVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearchCriteria(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public BookVO findBookByID(Integer id) throws Exception {
		return dao.findBookByID(id);
	}

	@Override
	public void updateBook(BookVO vo) throws Exception {
		dao.updateBook(vo);
	}
	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public BookVO findBookByID2(Integer id) throws Exception {
		dao.updateViewCnt(id);
		return dao.findBookByID2(id);
	}
	
	@Override
	public List<BookVO> newBookChartList(SearchCriteria cri) throws Exception {
		return dao.newBookChartList(cri);
	}
	
	@Override
	public List<BookVO> searchList(SearchCriteria cri) throws Exception {
		return dao.searchList(cri);
	}

	@Override
	public int searchListCount(SearchCriteria cri) throws Exception {
		return dao.searchListCount(cri);
	}

	@Override
	public List<BookVO> genreTop100List(PageCriteria cri) throws Exception {
		return dao.genreTop100List(cri);
	}

	@Override
	public int genreListCount(PageCriteria cri) throws Exception {
		return dao.genreListCount(cri);
	}

	/* auth : 김동시 */
	@Override
	public BookVO findBookByOwnBookID(OwnVO vo) throws Exception {
		return dao.findBookByOwnBookID(vo);
	}
	
}
