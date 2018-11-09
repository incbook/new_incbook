package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.PaymentVO;

public interface PaymentService {

	public void insertPoint(PaymentVO vo) throws Exception;
	
	public List<PaymentVO> historyAll() throws Exception;
}
