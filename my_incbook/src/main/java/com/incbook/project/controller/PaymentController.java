package com.incbook.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/payment/*")
public class PaymentController {

	@RequestMapping(value = "/charge", method = RequestMethod.GET)
	public void charge() throws Exception {
	}
	@RequestMapping(value = "/paymentWindow", method = RequestMethod.GET)
	public void paymentWindow(int payTotal, Model model) throws Exception {
		model.addAttribute("pay_total", payTotal);
	}
	@RequestMapping(value = "/chargeHistory", method = RequestMethod.GET)
	public void chargeHistory() throws Exception {
	}
}
