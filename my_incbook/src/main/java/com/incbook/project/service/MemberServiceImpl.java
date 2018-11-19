package com.incbook.project.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.persistence.MemberDAO;
import com.incbook.project.persistence.PartyDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDAO memberDAO;
	
	@Inject
	private PartyDAO partyDAO;
	
	@Override
	public MemberVO checkIdPassword(MemberVO vo) throws Exception {
		return memberDAO.checkIdPassword(vo);
	}

	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void signUp(PartyVO pvo, MemberVO mvo) throws Exception {
		partyDAO.partyInsert(pvo);
		Map<String, Object> memberMap = new HashMap();
		memberMap.put("member", mvo);
		memberMap.put("party", pvo);
		memberDAO.signUp(memberMap);
	}
	
	@Override
	public String loginIdCeheck(MemberVO vo) throws Exception {
		return memberDAO.loginIdCeheck(vo);
	}

	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void memberModify(PartyVO pvo, MemberVO mvo) throws Exception {
		partyDAO.partyModify(pvo);
		Map<String, Object> memberMap = new HashMap();
		memberMap.put("member", mvo);
		memberMap.put("party", pvo);
		memberDAO.memberModify(memberMap);
	}

	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void memberDelete(PartyVO vo) throws Exception {
		partyDAO.partyDelete(vo);
		memberDAO.memberDelete(vo);
	}

	@Override
	public MemberVO checkPassword(MemberVO vo) throws Exception {
		return memberDAO.checkPassword(vo);
	}

	@Override
	public MemberVO memberInfo(OwnVO vo) throws Exception {
		return memberDAO.memberInfo(vo);
	}

	@Override
	public MemberVO findMemberById(int id) throws Exception {
		return memberDAO.findMemberById(id);
	}

	@Override
	public void roulettePoint(MemberVO vo, int point) throws Exception {
		Map<String, Object> rPoint = new HashMap<>();
		rPoint.put("vo", vo);
		rPoint.put("point", point);
		memberDAO.roulettePoint(rPoint);
	}
	
}
