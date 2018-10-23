package com.incbook.project.persistence;

import java.util.List;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

public interface BookDAO {

	public BookVO findBookByID(Integer id)  throws Exception;

	public BookVO bookInfo(BookVO vo) throws Exception;

	public void createbookInfo(BookVO vo) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public List<BookVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public void updateBook(BookVO vo) throws Exception;


}
