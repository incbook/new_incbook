package com.incbook.project.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.service.MemberService;
import com.incbook.project.service.PartyService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	@Inject
	private PartyService partyService;

	@RequestMapping(value = "/signInForm", method = RequestMethod.GET)
	public void signInFormGET() throws Exception {
		
	}
	
	@RequestMapping(value = "/signInForm", method = RequestMethod.POST)
	public String signInFormPOST(MemberVO vo, Model model) throws Exception {
		MemberVO var = memberService.checkIdPassword(vo);
		System.out.println(var);
		model.addAttribute("id",var);
		
		return "member/signIn";
	}
	
	/**
	 * 회원가입 폼
	 */
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public void signUpGET() throws Exception {
		
	}
	
	/**
	 * 회원가입 처리
	 */
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUpPOST(MemberVO mvo, PartyVO pvo, RedirectAttributes rttr) throws Exception {
		memberService.signUp(pvo, mvo);
		
		rttr.addFlashAttribute("result", "SUCCESS");
		
		return "redirect:/member/signUp";
	}
}
