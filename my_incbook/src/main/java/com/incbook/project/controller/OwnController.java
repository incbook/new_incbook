package com.incbook.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.RealationVO;
import com.incbook.project.domain.pagemaker.PageMaker;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.service.BookService;
import com.incbook.project.service.MemberService;
import com.incbook.project.service.OwnService;

@Controller
@RequestMapping("/own/*")
public class OwnController {

	@Inject
	private OwnService ownService;
	@Inject
	private MemberService memberService;
	@Inject
	private BookService bookService;

	@RequestMapping(value = "/ownInfo", method = RequestMethod.GET)
	public void ownInfo(OwnVO vo, Model model) throws Exception {
		OwnVO ownInfo = ownService.findOwnByID(vo);
		MemberVO memberInfo = memberService.memberInfo(ownInfo);
		BookVO bookInfo = bookService.findBookByOwnBookID(ownInfo);

		model.addAttribute("own",ownInfo);
		model.addAttribute("member",memberInfo);
		model.addAttribute("book",bookInfo);
	}
	
	
	@RequestMapping(value = "/ownInsert", method = RequestMethod.GET)
	public void ownInsertGET(Model model, OwnVO vo) throws Exception {
		model.addAttribute("own", vo);
	}

	@RequestMapping(value = "/ownInsert", method = RequestMethod.POST)
	public String ownInsertPOST(Model model, RealationVO rvo, OwnVO ovo) throws Exception {
		ownService.ownInsert(rvo, ovo);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/searchBook", method = RequestMethod.GET)
	public void searchBookGET(Model model, RealationVO rvo, OwnVO ovo, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		model.addAttribute("list", bookService.searchList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bookService.searchListCount(cri));

		model.addAttribute("pageMaker", pageMaker);
		
	}
}
