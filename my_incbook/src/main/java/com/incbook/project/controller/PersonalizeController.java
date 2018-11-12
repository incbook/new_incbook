package com.incbook.project.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.service.PaymentService;
import com.incbook.project.service.PersonalizeService;

@Controller
@RequestMapping("/personalize/*")
public class PersonalizeController {
	
	@Inject
	private PersonalizeService personalizeService;
	
	@RequestMapping(value = "/personalChoice", method = RequestMethod.GET)
	public void personalChoiceGET() throws Exception {
		
	}
	
	@RequestMapping(value = "/personalChoice", method = RequestMethod.POST)
	public String personalChoicePOST(String[] genre, int memberId) throws Exception {
//		for (String var : genre) {
//			System.out.println(var);
//		}
		if (genre == null) {
			personalizeService.personalChoiceRenew(memberId);
		} else {
			personalizeService.personalChoiceRenew(genre, memberId);
		}
		
		return "redirect:/member/memberDetail";
	}
		
	
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
		 * controller 에서 30개의 추천목록을 뽑아낸후
		 * 그중에서 10개만 리스트에 담는다
		 * 
		 * 20개란 목록은 어떻게 뽑아올것인가...
		 * 1번 관심장르 최대 3	- 각 10개
		 * 2번 거래한 내역 최대 3 - 각 10개
		 * 3번 소유한 내역 최대 3 - 각 10개
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
		
		// 개인화맵에 개인화 정보를 위한 데이터(장르, 등장횟수)를 담는다
		Map<String, Integer> personalizeMap = new HashMap();
		
		
		// 각 장르만 따로 Set에 담는다
		Set<String> personalizeKey = personalizeMap.keySet();
		
		// 모든 등장횟수를 구하기위한 Iterator
		Iterator<String> personalizeCntIter = personalizeKey.iterator();
		
		// 개인화용 장르의 전체 개수
		int personalizeCount = 0;
		// 모든 키를 반복하여 등장횟수를 꺼내온다
		while(personalizeCntIter.hasNext()) {
			String key = (String) personalizeCntIter.next();
			personalizeMap.get(key);
			// 전체 개수를 각 장르의 등장횟수만큼 더한다
			personalizeCount += personalizeMap.get(key);
		}
		
		// 비율 구하기
		int proportion = 30 / personalizeCount;
	}
	
	
}
