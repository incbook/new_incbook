package com.incbook.project.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDAO dao;
	
	@Override
	public MemberVO checkIdPassword(MemberVO vo) throws Exception {
		return dao.checkIdPassword(vo);
	}
	
}
