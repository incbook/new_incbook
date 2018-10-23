package com.incbook.project.controller;

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
	private BookService service;

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public void searchGET() throws Exception {
		
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchPOST(BookVO vo, Model model) throws Exception {
		BookVO var = service.bookInfo(vo);
		System.out.println(var);
		
		model.addAttribute("bookInfo",var);
		
		return "book/information";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String createPOST(BookVO vo, RedirectAttributes rttr) throws Exception {
		service.createbookInfo(vo);

		rttr.addFlashAttribute("result", "success");

		return "redirect:/book/list";
		
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public void createGET() throws Exception {
		
	}
	
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void readPage(@RequestParam("id") int id, Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		
		model.addAttribute(service.findBookByID(id)); 
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute("list", service.listSearchCriteria(cri)); 
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);

	}
	
	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagingPOST(BookVO vo, PageCriteria cri,RedirectAttributes rttr) throws Exception {
		service.updateBook(vo);
		
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("pagesize",cri.getPagesize());
		rttr.addFlashAttribute("result", "success");
		
		return "redirect:/board/listPage";
	}
	
	// bno를 바탕으로 해당정보를 띄워줄때
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("id") int id, @ModelAttribute("cri") PageCriteria cri, Model model) throws Exception {
		model.addAttribute("modifyTarget",service.findBookByID(id));
	}
	

	

}









