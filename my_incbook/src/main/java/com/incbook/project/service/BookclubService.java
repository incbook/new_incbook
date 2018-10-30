package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.BookclubVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

public interface BookclubService {
	public static final int pagesize = 10;

	public List<BookclubVO> bookclubList(SearchCriteria cri) throws Exception;

	public BookclubVO readBookclub(Integer id) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

}
