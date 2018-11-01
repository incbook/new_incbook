package com.incbook.project.persistence;

import com.incbook.project.domain.OwnVO;

public interface OwnDAO {
	public OwnVO findOwnByID(OwnVO vo)  throws Exception;
}
