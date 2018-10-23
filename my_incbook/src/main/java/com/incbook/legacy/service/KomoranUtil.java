package com.incbook.legacy.service;

import java.util.ArrayList;
import java.util.List;

import kr.co.shineware.nlp.komoran.core.analyzer.Komoran;
import kr.co.shineware.util.common.model.Pair;

public class KomoranUtil {
	private static KomoranUtil theInstance = new KomoranUtil();

	private Komoran komoran = new Komoran("C:\\Users\\Administrator\\Desktop\\창고\\오목눈이\\komoran\\models-full");

	private KomoranUtil() {
		
	}
	
	public static KomoranUtil getInstance() {
		return theInstance;
	}
	
	public List<String> analyze(String src) {
		List<String> ret = new ArrayList<>();

		List<List<Pair<String,String>>> result = komoran.analyze(src);
		for (List<Pair<String, String>> eojeolResult : result) {
			for (Pair<String, String> wordMorph : eojeolResult) {
				if ("NNG".equals(wordMorph.getSecond()))
					ret.add(wordMorph.getFirst());
			}
		}
		return ret;
	}
}
