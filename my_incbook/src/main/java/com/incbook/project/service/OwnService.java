package com.incbook.project.service;

import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.RealationVO;

public interface OwnService {
	public OwnVO findOwnByID(OwnVO vo)  throws Exception;

	public void ownInsert(RealationVO rvo, OwnVO ovo);
}
