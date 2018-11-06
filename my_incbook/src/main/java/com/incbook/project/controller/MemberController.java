package com.incbook.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/signInForm", method = RequestMethod.GET)
	public void signInFormGET() throws Exception {
		
	}
	
	/**
	 * 로그인 interceptor 사용으로 세션처리
	 */
	@RequestMapping(value = "/signIn", method = RequestMethod.POST)
	public String signInFormPOST(MemberVO vo, Model model, RedirectAttributes rttr) throws Exception {
		MemberVO member = memberService.checkIdPassword(vo);
		model.addAttribute("member", member);
		if(member == null) {
			rttr.addFlashAttribute("loginTry", "fail");
			return "redirect:/member/signInForm";
		}
		return "/index";
	}

	@RequestMapping(value = "/signOut", method = RequestMethod.GET)
	public String signInOut() throws Exception {
		return "/index";
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
	
	/**
	 * 회원정보수정
	 * 세션을 통해 현재 회원정보 자동 기입
	 */						 
	@RequestMapping(value = "/memberModify", method = RequestMethod.GET)
	public void memberModifyGET(Model model) throws Exception {
		
	}

	@RequestMapping(value = "/memberModifyPost", method = RequestMethod.POST)
	public String memberModifyPOST(MemberVO mvo, PartyVO pvo, RedirectAttributes rttr, Model model,
			HttpServletRequest request) throws Exception {
		
		memberService.memberModify(pvo, mvo);
		
		MemberVO member = memberService.checkIdPassword(mvo);
		model.addAttribute("member", member);
		
		request.getSession().setAttribute("dest", "/member/memberDetail");
		
		return "/member/memberDetail";
	}
	
	/**
	 * 회원 탈퇴 폼
	 */						 
	@RequestMapping(value = "/memberDelete", method = RequestMethod.GET)
	public void memberDeleteGET(Model model) throws Exception {
		
	}

	/**
	 * 회원 탈퇴
	 */						 
	@RequestMapping(value = "/memberDeletePost", method = RequestMethod.POST)
	public String memberDeletePOST(PartyVO pvo, RedirectAttributes rttr) throws Exception {
		memberService.memberDelete(pvo);
		rttr.addFlashAttribute("memberDelete", "success");
		return "redirect:/";
	}
	
	
	/**
	 * 세션 정보를 토대로 회원의 아이디와 비밀번호를 체크하고 맞는지 확인
	 */
	@RequestMapping(value = "/passwordChecked", method = RequestMethod.GET)
	public void passwordChecked(MemberVO vo, Model model) throws Exception {
		MemberVO checkVO = memberService.checkPassword(vo);
		String result = null;
		if (checkVO == null) {
			result = "fail";
		} else {
			result = "success";
		}
		
		model.addAttribute("result", result);
	}
	
	
}
