package com.incbook.project.persistence;

import java.util.Map;

import com.incbook.project.domain.OwnVO;

public interface OwnDAO {
	public OwnVO findOwnByID(OwnVO vo)  throws Exception;

	public void ownInsert(Map<String, Object> own);
}
