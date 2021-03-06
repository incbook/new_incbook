package com.incbook.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.service.PersonalizeService;

@Controller
@RequestMapping("/personalize/*")
public class PersonalizeController {
	
	@Inject
	private PersonalizeService personalizeService;
	
	@RequestMapping(value = "/personalChoice", method = RequestMethod.GET)
	public void personalChoiceGET(HttpServletRequest request, Model model) throws Exception {
		// 세션을 통한 회원 정보
		MemberVO login = (MemberVO) request.getSession().getAttribute("login");
		
		List<String> personalizeGenreList = personalizeService.findPersonalByMemberId(login);
		
		model.addAttribute("genreList", personalizeGenreList);
	}
	
	@RequestMapping(value = "/personalChoice", method = RequestMethod.POST)
	public String personalChoicePOST(String[] genre, int memberId) throws Exception {
		if (genre == null) {
			personalizeService.personalChoiceRenew(memberId);
		} else {
			personalizeService.personalChoiceRenew(genre, memberId);
		}
		
		return "redirect:/member/memberDetail";
	}
		
	
	@RequestMapping(value = "/personalize", method = RequestMethod.GET)
	public void personalize(HttpServletRequest request, Model model) throws Exception {
	
		/* 조건 - 
		 * 관심 장르	1	it		최대3
		 * 거래한 내역	1	로맨스	최대3
		 * 소유한 내역	1	로맨스	최대3
		 * 
		 * 거래량
		 * 별점
		 * 조회수
		 * 출판일
		 * 
		 * ===============================================================================================================================================================================
		 * 먼저 관심장르를 선택하고 ex) 3개를 선택함
		 * 해당 장르의 작품중에서 거래량 별점 조회수 순으로 정렬 후 
		 * 
		 * controller 에서 30개의 추천목록을 뽑아낸후
		 * 그중에서 10개만 리스트에 담는다
		 * 
		 * 20개란 목록은 어떻게 뽑아올것인가...
		 * 1번 관심장르 최대 3 - 각 10개
		 * 2번 거래한 내역 최대 3 - 각 10개
		 * 3번 소유한 내역 최대 3 - 각 10개
		 * 
		 * 유아 / 소설			
		 * 유아 / 문학 / 청소년	
		 * 어린이 / 잡지 / 영어동화	
		 * 
		 * 최대 30
		 * 
		 * 30/8 = 3.~
		 * 
		 * 3 * 2 유아		6	
		 * 3 * 1 소설		3
		 * 3 * 1 문학		3	
		 * 3 * 1 청소년		3
		 * 3 * 1 어린이		3
		 * 3 * 1 잡지		3
		 * 3 * 1 영어동화	3
		 * 
		 * 18+6 = 24
		 * 
		 * 겹친다면?? 
		 * 3번의 db 연동
		 * 
		 * 1 - 10개
		 * 2 - 5개
		 * 3 - 3개?
		 * 몇개를 추천하면 전부다 할 수 있을까?
		 * 
		 *
		 * Map 의 containsKey() 를 사용해서 키값 존재여부 확인 후
		 * value 값을 1씩 증가
		*/
		
		// 세션을 통한 회원 정보
		MemberVO login = (MemberVO) request.getSession().getAttribute("login");
		
		List<BookVO> personalizeBookList = personalizeService.personalizeList(login);
		
		model.addAttribute("personalizeBookList", personalizeBookList);
	}
	
}
