package com.incbook.project.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.persistence.BookDAO;
import com.incbook.project.persistence.PersonalizeDAO;

@Service
public class PersonalizeServiceImpl implements PersonalizeService {
	
	@Inject
	private PersonalizeDAO personalizeDAO;

	@Inject
	private BookDAO bookDAO;

	@Override
	public List<String> findPersonalByMemberId(MemberVO vo) throws Exception {
		return personalizeDAO.findPersonalByMemberId(vo);
	}
	
	@Override
	public List<String> maxTradeGenre(MemberVO vo) throws Exception {
		return personalizeDAO.maxTradeGenre(vo);
	}

	@Override
	public List<String> maxOwnGenre(MemberVO vo) throws Exception {
		return personalizeDAO.maxOwnGenre(vo);
	}

	/* 
	 * 개인관심 장르 선택을 하지 않았을 때
	 */
	@Override
	public void personalChoiceRenew(int memberId) throws Exception {
		// TODO Auto-generated method stub
		personalizeDAO.deletePersonalChoice(memberId);
	}

	/*
	 * 개인관심 장르 1개이상 선택 했을 때
	 */
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void personalChoiceRenew(String[] genre, int memberId) throws Exception {
		List<String> genreList = Arrays.asList(genre);
		
		// DB에 새로 입력할 List
		Map<String, Object> genreMap = new HashMap();
		genreMap.put("genreList", genreList);
		genreMap.put("memberId", memberId);
	
		// DAO에서 모든 초이스 삭제
		personalizeDAO.deletePersonalChoice(memberId);
		
		// DAO에 새로 입력받은 것 추가
		personalizeDAO.insertPersonalChoice(genreMap);
		
	}

	@Override
	public List<BookVO> personalizeList(MemberVO login) throws Exception {
		
		// 1번 개인관심 장르
		List<String> personalGenreList = personalizeDAO.findPersonalByMemberId(login);
		
		// 2번 거래한 내역의 최다 장르
		List<String> maxTradeGenreList = personalizeDAO.maxTradeGenre(login);
		
		// 3번 소유한 내역의 최다 장르
		List<String> maxOwnGenreList = personalizeDAO.maxOwnGenre(login);
		
		// 개인화용 장르의 전체 개수
		int personalizeCount = 0;
		
		// 개인화맵에 개인화 정보를 위한 데이터(장르, 등장횟수)를 담는다
		Map<String, Integer> personalizeMap = new HashMap();
		
		// 1, 2,3번의 null이 있을경우 담지 않는다
		if (personalGenreList != null) {
			// 장르 전체 개수를 해당 개인관심장르 개수만큼 증가
			personalizeCount += personalGenreList.size();
			
			for (String genre : personalGenreList) {
				// Map에 장르가 담겨있으면 value에 1 추가
				if (personalizeMap.containsKey(genre)) {
					personalizeMap.put(genre, (personalizeMap.get(genre)+1) );
				} else { // 새로운 장르면 Map에 장르 추가하고 value는 1로
					personalizeMap.put(genre, 1);
				}
			}
		}
		
		if (maxTradeGenreList != null) {
			// 장르 전체 개수를 해당 top3 거래도서 장르 개수만큼 증가
			personalizeCount += maxTradeGenreList.size();
			
			for (String genre : maxTradeGenreList) {
				// Map에 장르가 담겨있으면 value에 1 추가
				if (personalizeMap.containsKey(genre)) {
					personalizeMap.put(genre, (personalizeMap.get(genre)+1) );
				} else { // 새로운 장르면 Map에 장르 추가하고 value는 1로
					personalizeMap.put(genre, 1);
				}
			}
		}
		
		if (maxOwnGenreList != null) {
			// 장르 전체 개수를 해당 top3 소유도서 장르 개수만큼 증가
			personalizeCount += maxOwnGenreList.size();
			
			for (String genre : maxOwnGenreList) {
				// Map에 장르가 담겨있으면 value에 1 추가
				if (personalizeMap.containsKey(genre)) {
					personalizeMap.put(genre, (personalizeMap.get(genre)+1) );
				} else { // 새로운 장르면 Map에 장르 추가하고 value는 1로
					personalizeMap.put(genre, 1);
				}
			}
		}
		
		// 각 장르만 따로 Set에 담는다
		Set<String> personalizeKey = personalizeMap.keySet();
		
		// 지정된 각 장르를 반복하기 위함
		Iterator<String> personalizeCntIter = personalizeKey.iterator();
		
		// 비율 구하기
		int proportion = 30 / personalizeCount;

		// 장르와 비율을이 담겨있는 맵들을 리스트형식으로 저장
		List<Map<String, Object>> genreList = new ArrayList();
		
		while (personalizeCntIter.hasNext()) {
			Map<String, Object> genreMap = new HashMap();
			String genre = personalizeCntIter.next();
			Integer prop = personalizeMap.get(genre) * proportion;
			
			genreMap.put("genre", genre);
			genreMap.put("prop", prop);
			
			genreList.add(genreMap);
		}
		
		return bookDAO.personalizeList(genreList);
	}
}
