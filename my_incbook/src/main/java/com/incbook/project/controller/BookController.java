package com.incbook.project.controller;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.pagemaker.PageMaker;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.service.BookService;
import com.incbook.project.service.MemberService;
import com.incbook.project.service.OwnService;
import com.incbook.project.service.PersonalizeService;

@Controller
@RequestMapping("/book/*")
public class BookController {

	@Inject
	private BookService bookService;
	@Inject
	private MemberService memberService;
	@Inject
	private OwnService ownService;
	@Inject
	private PersonalizeService personalizeService;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public void searchGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute("list", bookService.searchList(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(bookService.searchListCount(cri));

		model.addAttribute("pageMaker", pageMaker);

	}

	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void readPage(@RequestParam("id") int id, Model model, @ModelAttribute("cri") SearchCriteria cri,
			String prePage, HttpServletRequest request) throws Exception {
		BookVO findBookByID2 = bookService.findBookByID2(id);
		MemberVO member = memberService.findMemberById(findBookByID2.getFinalUpdateMemberId());
		model.addAttribute("findBookByID2", findBookByID2);
		model.addAttribute("member", member);

		model.addAttribute("prePage", prePage);
		
		// 해당 도서를 소유한 도서목록
		List<OwnVO> ownList = ownService.findOwnListByBookId(id);
		model.addAttribute("ownList", ownList);

		// 해당 도서와 같은 장르의 도서목록 (10개)
		List<BookVO> equalGenreBookRandomList = bookService.equalGenreBookRandomList(findBookByID2);
		model.addAttribute("randomBookList", equalGenreBookRandomList);
		
		// 세션을 통한 회원 정보
		MemberVO login = (MemberVO) request.getSession().getAttribute("login");
		
		// 개인화 추천 1개 (사이드 광고용)
		BookVO advertBook = null;
		if (login != null) {
			List<BookVO> personalizeBookList = personalizeService.personalizeListOfIndex(login);
			if(personalizeBookList == null) {
				advertBook = null;
				
			} else {
				advertBook = personalizeBookList.get(0);
			}
		}
		model.addAttribute("advertBook", advertBook);
		
	}
	
	@RequestMapping(value = "/ownReadPage", method = RequestMethod.GET)
	public void ownReadPage(@RequestParam("id") int id, Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		// id = 도서의 아이디
		// member의 아이디는? = memberId
		BookVO findBookByID2 = bookService.findBookByID2(id);
		MemberVO member = memberService.findMemberById(findBookByID2.getFinalUpdateMemberId());
		model.addAttribute("findBookByID2", findBookByID2);
		model.addAttribute("member", member);
		
	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagingPOST(@RequestParam("file") MultipartFile file, BookVO vo, SearchCriteria cri,
			RedirectAttributes rttr, String prePage) throws Exception {
		if (file.getOriginalFilename()=="") {
			
			System.out.println(vo.getId());
			BookVO bookVO=bookService.findBookByID2(vo.getId());
			vo.setImage(bookVO.getImage());

			bookService.updateBook(vo);
			rttr.addAttribute("id", vo.getId());
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("pagesize", cri.getPagesize());
			rttr.addAttribute("prePage", prePage);

		} else {

			vo.setImage(file.getOriginalFilename());
			bookService.updateBook(vo);
			rttr.addAttribute("id", vo.getId());
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("pagesize", cri.getPagesize());
			rttr.addAttribute("prePage", prePage);
			File f = null;
			boolean bool = false;
			try {
				String path = "C://book//" + vo.getId() + "//";
				File selectedDir = new File(path);
				// 하위 디렉토리들을 배열에 담는다.
				File[] innerFiles = selectedDir.listFiles();
				// 하위 디렉토리 삭제
				for (int i = 0; i < innerFiles.length; i++) {
					innerFiles[i].delete();
				}
				f = new File("C://book//" + vo.getId() + "//");
				// create
				f.getParentFile().mkdirs();
				f.mkdir();
				f.createNewFile();
				String url = bookService.restore(file, vo);
				rttr.addAttribute("url", url);

			} catch (Exception e) {
				// if any error occurs
				e.printStackTrace();
			}
		}

		return "redirect:/book/readPage";
	}

	// id를 바탕으로 책정보 가져오기
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("id") int id, @ModelAttribute("cri") SearchCriteria cri, Model model,
			String prePage) throws Exception {
		model.addAttribute("modifyTarget", bookService.findBookByID(id));
		model.addAttribute("prePage", prePage);
	}

	@RequestMapping(value = "/newBookChart", method = RequestMethod.GET)
	public void chartGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute("list", bookService.newBookChartList(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(bookService.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);

	}

	@RequestMapping(value = "/genreTop100", method = RequestMethod.GET)
	public void genreTop100GET(BookVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		// 위에 @ModelAttribute("cri") SearchCriteria cri 는 전페이지에서 페이지 정보 받아서
		// 다음페이지(value = "/genreTop100")에 주는애

		model.addAttribute("list", bookService.genreTop100List(cri));
		// 받아온 전페이지 정보를 이용해 리스트 뽑아서 담아 다음페이지(value = "/genreTop100")에 주는애

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bookService.genreListCount(cri));
		model.addAttribute("vo", vo);
		model.addAttribute("pageMaker", pageMaker);

	}

	@RequestMapping(value = "/allTop100", method = RequestMethod.GET)
	public void allTop100GET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute("list", bookService.listSearchCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(bookService.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);

	}

	@RequestMapping(value = "/infoInsert", method = RequestMethod.GET)
	public void bookInfoInsertGET() throws Exception {

	}

	@RequestMapping(value = "/infoInsert", method = RequestMethod.POST)
	public String bookInfoInsertPOST(@RequestParam("file") MultipartFile file, BookVO vo, RedirectAttributes rttr)
			throws Exception {

		vo.setImage(file.getOriginalFilename());
		bookService.createbookInfo(vo);

		File f = null;
		boolean bool = false;

		try {
			// returns pathnames for files and directory
			f = new File("C://book//" + vo.getId() + "//");
			// create
			f.getParentFile().mkdirs();
			f.mkdir();
			f.createNewFile();

			String url = bookService.restore(file, vo);

			rttr.addAttribute("url", url);

		} catch (Exception e) {
			// if any error occurs
			e.printStackTrace();
		}

		return "redirect:/book/infoInsert";
	}

	@RequestMapping(value = "/quickView", method = RequestMethod.GET)
	public String quickViewGET(Integer id, @ModelAttribute("cri") SearchCriteria cri, Model model, String quickPrePage)
			throws Exception {
		BookVO vo = bookService.findBookByID2(id);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("BookVO", vo);
		model.addAttribute("quickPrePage", quickPrePage);
		return "book/quickView";
	}

	@RequestMapping(value = "/quickViewPersonal", method = RequestMethod.GET)
	public String quickViewPersonalGET(Integer id, Model model, String quickPrePage)
			throws Exception {
		BookVO vo = bookService.findBookByID2(id);
		
		model.addAttribute("BookVO", vo);
		model.addAttribute("quickPrePage", quickPrePage);
		return "book/quickViewPersonal";
	}
	
	@RequestMapping(value = "/chartCategories", method = RequestMethod.GET)
	public void chartCategoriesGET(HttpServletRequest request, Model model) throws Exception {
		// 세션을 통한 회원 정보
		MemberVO login = (MemberVO) request.getSession().getAttribute("login");
		
		// 개인화 추천 1개 (사이드 광고용)
		BookVO advertBook = null;
		if (login != null) {
			List<BookVO> personalizeBookList = personalizeService.personalizeListOfIndex(login);
			if(personalizeBookList == null) {
				advertBook = null;
			} else {
				advertBook = personalizeBookList.get(0);
			}
		}
		model.addAttribute("advertBook", advertBook);
	}
	
	

}
