package com.incbook.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	private MemberService service;

	@RequestMapping(value = "/signInForm", method = RequestMethod.GET)
	public void signInFormGET() throws Exception {
		
	}
	
	@RequestMapping(value = "/signInForm", method = RequestMethod.POST)
	public String signInFormPOST(MemberVO vo, Model model) throws Exception {
		MemberVO var = service.checkIdPassword(vo);
		System.out.println(var);
		model.addAttribute("id",var);
		
		return "member/signIn";
	}
	
}
