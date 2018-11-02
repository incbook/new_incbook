package com.incbook.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
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
		
	}
	
	

}
