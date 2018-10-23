package com.incbook.legacy.persistence;

import java.util.List;
import java.util.Map;

import com.incbook.legacy.domain.AppeareanceVO;


public interface AppeareanceDAO {

	public void createAppearanceByBatch(Map<String, List<AppeareanceVO>> map) throws Exception;


}