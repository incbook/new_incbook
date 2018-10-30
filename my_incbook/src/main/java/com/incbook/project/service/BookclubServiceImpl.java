package com.incbook.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.incbook.project.domain.BookclubVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.persistence.BookclubDAO;

@Service
public class BookclubServiceImpl implements BookclubService {

	@Inject
	private BookclubDAO dao;

	@Override
	public List<BookclubVO> bookclubList(SearchCriteria cri) throws Exception {
		return dao.bookclubList(cri);
	}

	@Override
	public BookclubVO readBookclub(Integer id) throws Exception {
		return dao.readBookclub(id);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
