package com.incbook.project.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.incbook.project.domain.OwnVO;
import com.incbook.project.persistence.OwnDAO;

@Service
public class OwnServiceImpl implements OwnService {
	@Inject
	private OwnDAO dao;

	@Override
	public OwnVO findOwnByID(OwnVO vo) throws Exception {
		return dao.findOwnByID(vo);
	}
	
}
