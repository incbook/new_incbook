package com.incbook.project.persistence;

import java.util.List;
import java.util.Map;

import com.incbook.project.domain.PaymentVO;

public interface PaymentDAO {

	public void insertPoint(PaymentVO vo) throws Exception;

	public List<PaymentVO> historyAll(Map<String, Object> historyMap) throws Exception;

	public int historyCount(int memberId);

	public void roulettePoint(Map<String, Object> rPoint) throws Exception;	

}
