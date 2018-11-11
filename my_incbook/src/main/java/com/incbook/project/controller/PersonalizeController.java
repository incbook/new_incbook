package com.incbook.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/personalize/*")
public class PersonalizeController {
	
	@RequestMapping(value = "/personalize", method = RequestMethod.GET)
	public void personalize() throws Exception {
	
		/* 조건 - 
		 * 관심 장르	1	it
		 * 거래한 내역	1	로맨스
		 * 소유한 내역	1	로맨스
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
		 * controller 에서 20개의 추천목록을 뽑아낸후
		 * 그중에서 10개만 리스트에 담는다
		 * 
		 * 
		*/
		
		
	}
	
	
}
