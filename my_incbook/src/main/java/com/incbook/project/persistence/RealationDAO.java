package com.incbook.project.persistence;

import com.incbook.project.domain.RealationVO;

public interface RealationDAO {

	public void realationInsert(RealationVO rvo) throws Exception;

	public void realationDelete(RealationVO rvo) throws Exception;
	
}
