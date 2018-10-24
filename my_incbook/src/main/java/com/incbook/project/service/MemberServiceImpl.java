package com.incbook.project.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.persistence.MemberDAO;
import com.incbook.project.persistence.PartyDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDAO memberDao;
	
	@Inject
	private PartyDAO partyDao;
	
	@Override
	public MemberVO checkIdPassword(MemberVO vo) throws Exception {
		return memberDao.checkIdPassword(vo);
	}

	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void signUp(PartyVO pvo, MemberVO mvo) throws Exception {
		partyDao.signUp(pvo);
		Map<String, Object> memberMap = new HashMap();
		memberMap.put("member", mvo);
		memberMap.put("party", pvo);
		memberDao.signUp(memberMap);
	}
	
}
