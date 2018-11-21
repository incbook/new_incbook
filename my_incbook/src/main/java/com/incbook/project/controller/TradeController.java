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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String startTrade(OwnVO vo, Model model, RedirectAttributes rttr) throws Exception {
		String result = "/trade/startTrade";
		
		OwnVO ownVO = ownService.findOwnByID(vo);
		BookVO bookVO = bookService.findBookByID(ownVO.getBookId());
		MemberVO memberVO = memberService.memberInfo(ownVO);
		model.addAttribute("own", ownVO);
		model.addAttribute("book", bookVO);
		model.addAttribute("member", memberVO);
		
		// 금액 확인 하기
		int totalAmount = ownVO.getFee() * ownVO.getSelectPeriod();
		
		if (totalAmount > memberVO.getPoint()) {
			rttr.addAttribute("tradeTry", "fail");
			result = "redirect:/own/ownInfo?id="+ownVO.getId();
		}
		
		return result;
		
	}

	@RequestMapping(value = "/startTrade", method = RequestMethod.POST)
	public String startTradePOST(TradeVO tradeVO, OwnVO ownVO, String tradeDateString) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date tradeDate = format.parse(tradeDateString);
		tradeVO.setTradeDate(tradeDate);
		
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

	@RequestMapping(value = "/pointOk", method = RequestMethod.POST)
	public String pointOk(TradeVO tradeVO, RedirectAttributes rttr) throws Exception {
		tradeVO = tradeService.findTradeByid(tradeVO);
		System.out.println(tradeVO);

		memberService.endOfTradeAmountOwner(tradeVO);
		return "redirect:/trade/lendersPage";
	}
	@RequestMapping(value = "/pointNo", method = RequestMethod.POST)
	public String pointNo(TradeVO tradeVO, RedirectAttributes rttr) throws Exception {
		tradeVO = tradeService.findTradeByid(tradeVO);
		
		memberService.endOfTradeAmountLender(tradeVO);
		return "redirect:/trade/ownerPage";
	}
	@RequestMapping(value = "/checkPoint", method = RequestMethod.GET)
	public void checkPoint(HttpServletRequest request, Model model) throws Exception {
		// start 포인트 사용, 적립 내역
		MemberVO login = (MemberVO) request.getSession().getAttribute("login");
		
		List<TradeVO> usePointList = tradeService.findLendersByMemberId(login);
		List<TradeVO> accumulatePointList = tradeService.findOwnerByMemberId(login);
		
		model.addAttribute("usePointList", usePointList);
		model.addAttribute("accumulatePointList", accumulatePointList);
		// end 포인트 사용, 적립 내역
		
		// 회원 정보 가져오기
		MemberVO member = memberService.findMemberById(login.getId());
		model.addAttribute("member", member);
	}
	
}