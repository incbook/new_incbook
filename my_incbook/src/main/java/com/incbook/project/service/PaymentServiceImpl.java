package com.incbook.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.domain.PaymentVO;
import com.incbook.project.domain.pagecriteria.PageCriteria;
import com.incbook.project.persistence.MemberDAO;
import com.incbook.project.persistence.PaymentDAO;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Inject
	private PaymentDAO dao;
	@Inject
	private MemberDAO memberDAO;
	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void insertPoint(PaymentVO vo, int memberId) throws Exception {
		// 결제내역 추가
		dao.insertPoint(vo);
		
		// 실제 회원 포인트 추가
		Map<String, Object> pointMap = new HashMap();
		pointMap.put("point", vo.getPoint());
		pointMap.put("memberId", memberId);
		memberDAO.pointCharge(pointMap);
		
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
