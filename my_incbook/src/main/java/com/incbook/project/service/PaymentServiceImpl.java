package com.incbook.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.incbook.project.domain.PaymentVO;
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
	public List<PaymentVO> historyAll() throws Exception {
		return dao.historyAll();
	}
	
}
