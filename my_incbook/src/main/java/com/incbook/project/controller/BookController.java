package com.incbook.project.controller;

import java.io.File;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.pagemaker.PageMaker;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.service.BookService;
import com.incbook.project.service.MemberService;

@Controller
@RequestMapping("/book/*")
public class BookController {

	@Inject
	private BookService bookService;
	@Inject
	private MemberService memberService;

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
	public void readPage(@RequestParam("id") int id, Model model, @ModelAttribute("cri") SearchCriteria cri, String prePage) throws Exception {
		BookVO findBookByID2 = bookService.findBookByID2(id);
		model.addAttribute("findBookByID2", findBookByID2);
		model.addAttribute("prePage", prePage);

	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagingPOST(BookVO vo, SearchCriteria cri, RedirectAttributes rttr, String prePage) throws Exception {
		bookService.updateBook(vo);
		System.out.println(vo);
		rttr.addAttribute("id", vo.getId());
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("pagesize", cri.getPagesize());
		rttr.addAttribute("prePage", prePage);

		return "redirect:/book/readPage";
	}

	// id를 바탕으로 책정보 가져오기
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("id") int id, @ModelAttribute("cri") SearchCriteria cri, Model model,String prePage)
			throws Exception {
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
	public String bookInfoInsertPOST(@RequestParam ("file") MultipartFile file, BookVO vo, RedirectAttributes rttr) throws Exception {
		
		vo.setImage(file.getOriginalFilename());
		bookService.createbookInfo(vo);
		System.out.println(vo);
		rttr.addFlashAttribute("result", "success");
		

		File f = null;
		boolean bool = false;

		try {
			// returns pathnames for files and directory
			f = new File("C://book//"+vo.getId()+"//");
			// create
			f.getParentFile().mkdirs();
			bool = f.mkdir();
			f.createNewFile(); 
			
			// print
			System.out.print("Directory created? " + bool);
			
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

}
