package com.incbook.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.RealationVO;
import com.incbook.project.persistence.OwnDAO;
import com.incbook.project.persistence.RealationDAO;

@Service
public class OwnServiceImpl implements OwnService {
	@Inject
	private OwnDAO ownDAO;

	@Inject
	private RealationDAO realaionDAO;

	@Override
	public OwnVO findOwnByID(OwnVO vo) throws Exception {
		return ownDAO.findOwnByID(vo);
	}

	@Override
	public List<OwnVO> myOneList(int memberId) throws Exception {
		return ownDAO.myOneList(memberId);
	}

	@Override
	public void ownInsert(RealationVO rvo, OwnVO ovo) {
		realaionDAO.realationInsert(rvo);
		Map<String, Object> ownMap = new HashMap();
		ownMap.put("own", ovo);
		ownMap.put("realation", rvo);
		ownDAO.ownInsert(ownMap);
	}
	
}
