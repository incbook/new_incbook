package com.incbook.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.domain.PaymentVO;
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
		System.out.println(vo);
		model.addAttribute("payInfo", vo);
	}
	
	@RequestMapping(value = "/insertPoint", method = RequestMethod.GET)
	public String insertPoint(PaymentVO vo) throws Exception {
		paymentService.insertPoint(vo);
		return "redirect:/payment/chargeHistory";
	}
	
	@RequestMapping(value = "/chargeHistory", method = RequestMethod.GET)
	public void historyAll(Model model) throws Exception {
		//System.out.println(paymentService.historyAll().size());
		model.addAttribute("historyAll", paymentService.historyAll());
	}
}
