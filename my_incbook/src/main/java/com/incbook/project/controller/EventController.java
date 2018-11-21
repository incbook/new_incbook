package com.incbook.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.service.MemberService;

@Controller
@RequestMapping("/event/*")
public class EventController {

	@Inject
	private MemberService memberService;

	@RequestMapping(value = "/roulette", method = RequestMethod.GET)
	public void roulettePage() throws Exception {

	}
	@RequestMapping(value = "/roulette", method = RequestMethod.POST)
	public void roulettePage(RedirectAttributes rttr, HttpServletRequest request, Integer p) throws Exception {

		MemberVO vo = (MemberVO) request.getSession().getAttribute("login");
		memberService.roulettePoint(vo, p);
		
	}

}







