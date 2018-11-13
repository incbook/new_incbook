package com.incbook.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.incbook.project.domain.PaymentVO;
import com.incbook.project.domain.pagecriteria.PageCriteria;
import com.incbook.project.persistence.PaymentDAO;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Inject
	private PaymentDAO dao;
	@Override
	public void insertPoint(PaymentVO vo) throws Exception {
		dao.insertPoint(vo);
	}
	@Override
	public List<PaymentVO> historyAll(int memberId, PageCriteria cri) throws Exception {
		Map<String, Object> historyMap = new HashMap();
		historyMap.put("memberId", memberId);
		historyMap.put("cri", cri);
		return dao.historyAll(historyMap);
	}
	
	@Override
	public int historyCount(int memberId) {
		return dao.historyCount(memberId);
	}
	
}
