package com.incbook.project.service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.persistence.PersonalizeDAO;

@Service
public class PersonalizeServiceImpl implements PersonalizeService {
	
	@Inject
	private PersonalizeDAO personalizeDAO;

	
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
}
