package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

public interface BookService {
	public static final int pagesize = 9;

	public BookVO bookInfo(BookVO vo) throws Exception;

	public List<BookVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public BookVO findBookByID(Integer id) throws Exception;

	public BookVO findBookByID2(Integer id) throws Exception;

	public void createbookInfo(BookVO vo) throws Exception;

	public void updateBook(BookVO vo)throws Exception;

}
