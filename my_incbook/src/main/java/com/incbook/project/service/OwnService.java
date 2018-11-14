package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.RealationVO;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

public interface OwnService {
	public OwnVO findOwnByID(OwnVO vo)  throws Exception;

	public List<OwnVO> myOwnList(int memberId, SearchCriteria cri)  throws Exception;
	
	public int myOwnCount(int memberId) throws Exception;
	
	public void ownInsert(RealationVO rvo, OwnVO ovo) throws Exception;;
}
