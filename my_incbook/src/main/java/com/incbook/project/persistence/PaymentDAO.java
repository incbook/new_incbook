package com.incbook.project.persistence;

import java.util.List;

import com.incbook.project.domain.PaymentVO;

public interface PaymentDAO {

	public void insertPoint(PaymentVO vo) throws Exception;

	public List<PaymentVO> historyAll() throws Exception;	

}
