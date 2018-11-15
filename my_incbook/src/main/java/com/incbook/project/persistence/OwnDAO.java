package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import com.incbook.project.domain.OwnVO;

public interface OwnDAO {
	public OwnVO findOwnByID(OwnVO vo)  throws Exception;

	public OwnVO findOwnByMemberID(OwnVO vo) throws Exception;

	public List<OwnVO> myOwnList(Map<String, Object> own)  throws Exception;

	public int myOwnCount(int memberId) throws Exception;

	public void ownInsert(Map<String, Object> own) throws Exception;

	public List<OwnVO> findOwnListByBookId(int bookId) throws Exception;

	
}
