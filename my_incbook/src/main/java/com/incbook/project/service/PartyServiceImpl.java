package com.incbook.project.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.incbook.project.domain.PartyVO;
import com.incbook.project.persistence.MemberDAO;
import com.incbook.project.persistence.PartyDAO;

@Service
public class PartyServiceImpl implements PartyService {
	@Inject
	private PartyDAO dao;
	
	@Override
	public void signUp(PartyVO vo) throws Exception {
		dao.signUp(vo);
	}
	
}
