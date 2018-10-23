package com.incbook.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.incbook.project.domain.BookVO;
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
}
