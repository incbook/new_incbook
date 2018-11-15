package com.incbook.project.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.pagecriteria.PageCriteria;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

public interface BookService {
	public static final int pagesize = 9;

	public BookVO bookInfo(BookVO vo) throws Exception;

	public List<BookVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public BookVO findBookByID(Integer id) throws Exception;

	public BookVO findBookByID2(Integer id) throws Exception;

	public BookVO findBookByOwnBookID(OwnVO vo) throws Exception;

	public void createbookInfo(BookVO vo) throws Exception;

	public void updateBook(BookVO vo)throws Exception;

	public List<BookVO> newBookChartList(SearchCriteria cri) throws Exception;

	public List<BookVO> searchList(SearchCriteria cri) throws Exception;

	public int searchListCount(SearchCriteria cri) throws Exception;

	public List<BookVO> genreTop100List(PageCriteria cri) throws Exception;

	public int genreListCount(PageCriteria cri) throws Exception;

	public String restore(MultipartFile file, BookVO vo) throws Exception;

	public List<BookVO> equalGenreBookRandomList(BookVO vo) throws Exception;

}
