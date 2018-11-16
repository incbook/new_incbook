package com.incbook.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.TradeVO;
import com.incbook.project.service.BookService;
import com.incbook.project.service.MemberService;
import com.incbook.project.service.OwnService;
import com.incbook.project.service.TradeService;

@Controller
@RequestMapping("/trade/*")
public class TradeController {
	
	@Inject
	public TradeService tradeService;
	
	@Inject
	public OwnService ownService;
	
	@Inject
	public BookService bookService;
	
	@Inject
	public MemberService memberService;
	
	
	@RequestMapping(value = "/startTrade", method = RequestMethod.GET)
	public void startTrade(OwnVO vo, Model model) throws Exception {
		System.out.println(vo.getId());
		OwnVO ownVO = ownService.findOwnByID(vo);
		BookVO bookVO = bookService.findBookByID(ownVO.getBookId());
		MemberVO memberVO = memberService.memberInfo(ownVO);
		model.addAttribute("own", ownVO);
		model.addAttribute("book", bookVO);
		model.addAttribute("member", memberVO);
	}

	@RequestMapping(value = "/startTrade", method = RequestMethod.POST)
	public String startTradePOST(TradeVO tradeVO, OwnVO ownVO, String tradeDateString) throws Exception {
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(tradeDateString);
		tradeVO.setTradeDate(date);
		
		tradeService.insertTrade(tradeVO, ownVO, tradeVO.getMemberId());
		return "redirect:/member/memberDetail";
	}
	
	@RequestMapping(value = "/lendersPage", method = RequestMethod.GET)
	public void lendersPage(HttpServletRequest request, Model model) throws Exception {
		MemberVO login = (MemberVO) request.getSession().getAttribute("login");
		
		List<TradeVO> lendersList = tradeService.findLendersByMemberId(login);
		model.addAttribute("lendersList", lendersList);
	}
	
	@RequestMapping(value = "/ownerPage", method = RequestMethod.GET)
	public void ownerPage(HttpServletRequest request, Model model) throws Exception {
		MemberVO login = (MemberVO) request.getSession().getAttribute("login");
		
		List<TradeVO> ownerList = tradeService.findOwnerByMemberId(login);
		
		model.addAttribute("ownerList", ownerList);
	}
	
}