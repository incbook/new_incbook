package com.incbook.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.service.MemberService;

@Controller
@RequestMapping("/trade/*")
public class TradeController {

	@RequestMapping(value = "/startTrade", method = RequestMethod.GET)
	public void startTrade() throws Exception {
		
	}
	
	@RequestMapping(value = "/lendersPage", method = RequestMethod.GET)
	public void lendersPage() throws Exception {
		
	}
	
	@RequestMapping(value = "/ownerPage", method = RequestMethod.GET)
	public void ownerPage() throws Exception {
		
	}
	
}