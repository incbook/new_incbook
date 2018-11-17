package com.incbook.project.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

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

	@Transactional(isolation = Isolation.READ_COMMITTED)
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


	@Override
	public String restore(MultipartFile file, BookVO vo) throws Exception {
		String url = null;

		try {
			// 파일 정보
			String originFilename = file.getOriginalFilename();
			String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			Long size = file.getSize();

			// 서버에서 저장 할 파일 이름
			int saveFileName = genSaveFileName(extName,vo);

//			System.out.println("originFilename : " + originFilename);
//			System.out.println("size : " + size);
//			System.out.println("saveFileName : " + saveFileName);

			writeFile(file, saveFileName, vo);
			url = "C://book//"+vo.getId()+"//"+vo.getImage()+"//";
		} catch (IOException e) {
			// 원래라면 RuntimeException 을 상속받은 예외가 처리되어야 하지만
			// 편의상 RuntimeException을 던진다.
			// throw new FileUploadException();
			throw new RuntimeException(e);
		}
		return url;
	}

	private int genSaveFileName(String extName, BookVO vo) {
		 	int fileName = vo.getId();
		     
		    return fileName;


	}

	// 파일을 실제로 write 하는 메서드
	private boolean writeFile(MultipartFile file, int saveFileName, BookVO vo) throws IOException {
		boolean result = false;

		byte[] data = file.getBytes();
		FileOutputStream fos = new FileOutputStream("C://book//"+vo.getId()+"//"+vo.getImage()+"//");
		fos.write(data);
		fos.close();

		return result;
	}

	// 동일 장르 랜덤 도서리스트
	@Override
	public List<BookVO> equalGenreBookRandomList(BookVO vo) throws Exception {
		return dao.equalGenreBookRandomList(vo);
	}

	@Override
	public List<BookVO> newBookChart(BookVO vo) throws Exception {
		return dao.newBookChart(vo);
	}
	
	
}
