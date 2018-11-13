package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.PaymentVO;
import com.incbook.project.domain.pagecriteria.PageCriteria;
import com.incbook.project.domain.searchcriteria.SearchCriteria;

public interface PaymentService {

	public void insertPoint(PaymentVO vo) throws Exception;
	
	public List<PaymentVO> historyAll(int memberId, PageCriteria cri) throws Exception;

	public int historyCount(int memberId);
}
