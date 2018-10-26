package com.incbook.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
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
	
	/**
	 * 회원가입시 로그인 아이디 중복체크
	 */
	@RequestMapping(value = "/loginIdDoubleCheck", method = RequestMethod.GET)
	public void loginIdDoubleCheckPOST(MemberVO mvo, Model model) throws Exception {
		String result = memberService.loginIdCeheck(mvo);
		model.addAttribute("login_id", result);
	}
	
	/**
	 * 세션을 통해 회원 상세정보 표출
	 * loginSession 세션 아이디 vo정보가 전체로 담겨있음
	 */
	@RequestMapping(value = "/memberDetail", method = RequestMethod.GET)
	public void memberDetailGET(Model model) throws Exception {
		
	}
	
}
