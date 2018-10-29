package com.incbook.project.controller;

import java.util.Arrays;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.pagecriteria.PageCriteria;
import com.incbook.project.domain.pagemaker.PageMaker;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.service.BookService;

@Controller
@RequestMapping("/book/*")
public class BookController {

	@Inject
	private BookService bookService;

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public void searchGET() throws Exception {

	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchPOST(BookVO vo, Model model) throws Exception {
		BookVO var = bookService.bookInfo(vo);
		System.out.println(var);

		model.addAttribute("bookInfo", var);

		return "book/information";
	}

	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void readPage(@RequestParam("id") int id, Model model, @ModelAttribute("cri") SearchCriteria cri)
			throws Exception {

		model.addAttribute(bookService.findBookByID(id));
	}

	@RequestMapping(value = "/newBookChart", method = RequestMethod.GET)
	public void chartGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute("list", bookService.listSearchCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(bookService.listSearchCount(cri));

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
	
	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagingPOST(BookVO vo, PageCriteria cri, RedirectAttributes rttr) throws Exception {

		bookService.updateBook(vo);
		System.out.println(vo);
		rttr.addAttribute("id",vo.getId());
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("pagesize", cri.getPagesize());

		return "redirect:/book/readPage";
	}

	// id를 바탕으로 책정보 가져오기
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("id") int id, @ModelAttribute("cri") PageCriteria cri, Model model)
			throws Exception {
		model.addAttribute("modifyTarget", bookService.findBookByID(id));

	}

	@RequestMapping(value = "/infoInsert", method = RequestMethod.GET)
	public void bookInfoInsertGET() throws Exception {

	}

	@RequestMapping(value = "/infoInsert", method = RequestMethod.POST)
	public String bookInfoInsertPOST(BookVO vo, RedirectAttributes rttr) throws Exception {
		bookService.createbookInfo(vo);
		System.out.println(vo);
		rttr.addFlashAttribute("result", "success");

		return "redirect:/book/infoInsert";

	}

}
