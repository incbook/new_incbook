package com.incbook.project.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.RealationVO;
import com.incbook.project.domain.pagemaker.PageMaker;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.service.BookService;
import com.incbook.project.service.MemberService;
import com.incbook.project.service.OwnService;

@Controller
@RequestMapping("/own/*")
public class OwnController {

	@Inject
	private OwnService ownService;
	@Inject
	private MemberService memberService;
	@Inject
	private BookService bookService;

	@RequestMapping(value = "/ownInfo", method = RequestMethod.GET)
	public void ownInfo(OwnVO vo, Model model) throws Exception {
		OwnVO ownInfo = ownService.findOwnByID(vo);
		MemberVO memberInfo = memberService.memberInfo(ownInfo);
		BookVO bookInfo = bookService.findBookByOwnBookID(ownInfo);

		model.addAttribute("own",ownInfo);
		model.addAttribute("member",memberInfo);
		model.addAttribute("book",bookInfo);
	}
	
	
	@RequestMapping(value = "/ownInsert", method = RequestMethod.GET)
	public void ownInsertGET(Model model, OwnVO vo) throws Exception {
		model.addAttribute("own", vo);
	}

	@RequestMapping(value = "/ownInsert", method = RequestMethod.POST)
	public String ownInsertPOST(Model model, RealationVO rvo, OwnVO ovo, String date) throws Exception {
		Date rentAvailable = new SimpleDateFormat("yyyy-MM-dd").parse(date);
		ovo.setRentAvailable(rentAvailable);
		ownService.ownInsert(rvo, ovo);
		
		return "redirect:/";
	}
	
	
	/**
	 * 나의 소유도서 등록시 
	 * 해당 도서 정보가 입력되있는지 검색
	 */
	@RequestMapping(value = "/searchBook", method = RequestMethod.GET)
	public void searchBookGET(Model model, RealationVO rvo, OwnVO ovo, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		model.addAttribute("list", bookService.searchList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bookService.searchListCount(cri));

		model.addAttribute("pageMaker", pageMaker);
		
	}
	
	@RequestMapping(value = "/myOwnList", method = RequestMethod.GET)
	public void myOwnListGET(Model model, HttpServletRequest request, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		// 세션을 통해 로그인된 회원 아이디를 받아옴
		int memberId = ((MemberVO) request.getSession().getAttribute("login")).getId();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(ownService.myOwnCount(memberId));
		
		List<OwnVO> myOwnList = ownService.myOwnList(memberId, cri);

		List<Map<String, Object>> myOwnMapList = new ArrayList();
		for (OwnVO myOwn : myOwnList) {
			Map<String, Object> myOwmMap = new HashMap();
			myOwmMap.put("ownVO", myOwn);
			myOwmMap.put("bookVO", bookService.findBookByID2(myOwn.getBookId()));
			
			myOwnMapList.add(myOwmMap);
		}
		
		// 로그인된 회원이 등록한 도서 리스트
		model.addAttribute("myOwnMapList", myOwnMapList);
		model.addAttribute("pageMaker", pageMaker);
	}
	
	@RequestMapping(value = "/ownDelete", method = RequestMethod.POST)
	public String ownDelete(RealationVO rvo, int memberId, HttpServletRequest reqeust, RedirectAttributes rttr) throws Exception {
		MemberVO login = (MemberVO) reqeust.getSession().getAttribute("login");
		System.out.println(rvo);
		System.out.println(memberId);
		System.out.println(login);
		if ( login != null && login.getId() == memberId) {
			ownService.ownDelete(rvo);
		} else {
			rttr.addFlashAttribute("myOwnDelete", "fail");
		}
		
		return "redirect:/own/myOwnList";
	}
	
	
}
