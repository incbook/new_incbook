package com.incbook.legacy.persistence;

import java.util.List;
import java.util.Map;

import com.incbook.legacy.domain.LexiconVO;


public interface LexiconDAO {
	
	public void createLexiconByBatch(Map<String,List<LexiconVO>> map) throws Exception;

	public List<LexiconVO> findLexicon(Map<String,List<String>> map) throws Exception;
}
