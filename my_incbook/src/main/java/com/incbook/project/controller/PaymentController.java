package com.incbook.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.PaymentVO;
import com.incbook.project.domain.pagemaker.PageMaker;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.service.PaymentService;

@Controller
@RequestMapping("/payment/*")
public class PaymentController {
	
	@Inject
	private PaymentService paymentService;
	
	@RequestMapping(value = "/charge", method = RequestMethod.GET)
	public void charge() throws Exception {
	}
	@RequestMapping(value = "/paymentWindow", method = RequestMethod.GET)
	public void paymentWindow(PaymentVO vo, Model model) throws Exception {
		model.addAttribute("payInfo", vo);
	}
	
	@RequestMapping(value = "/insertPoint", method = RequestMethod.GET)
	public String insertPoint(PaymentVO vo) throws Exception {
		paymentService.insertPoint(vo);
		return "redirect:/payment/chargeHistory";
	}
	
	@RequestMapping(value = "/chargeHistory", method = RequestMethod.GET)
	public void historyAll(Model model, HttpServletRequest request, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		// 세션을 통해 로그인된 아이디를 가져옴
		int memberId = ((MemberVO) request.getSession().getAttribute("login")).getId();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(paymentService.historyCount(memberId));

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("historyAll", paymentService.historyAll(memberId, cri));
	}
}
