package com.incbook.project.persistence;

import com.incbook.project.domain.PartyVO;

public interface PartyDAO {
	public void partyInsert(PartyVO vo) throws Exception;

	public void partyModify(PartyVO vo) throws Exception;
	
	public void partyDelete(PartyVO vo) throws Exception;
}
