package com.incbook.project.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.domain.MemberVO;
import com.incbook.project.domain.OwnVO;
import com.incbook.project.domain.TradeVO;
import com.incbook.project.persistence.MemberDAO;
import com.incbook.project.persistence.TradeDAO;

@Service
public class TradeServiceImpl implements TradeService {
	@Inject
	private TradeDAO tradeDAO;
	@Inject
	private MemberDAO memberDAO;

	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void insertTrade(TradeVO tradeVO, OwnVO ownVO, int memberId) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//		// 계산된 합계금액을 trade에 저장
//		tradeVO.calcTotalAmount(ownVO);
		
		Map<String, Object> pointMap = new HashMap();
		pointMap.put("memberId", memberId);
		pointMap.put("point", tradeVO);
		
		// 대여자의 포인트 차감
		memberDAO.pointSpend(pointMap);
		
		// 대여기록 DB에 저장
		tradeDAO.insertTrade(tradeVO);
		
		// tradeVO.getTradeDate() 에서 ownVO.getselectPeriod() 만큼 더해준다
		Map<String, Object> rentMap = new HashMap();
		rentMap.put("trade", tradeVO);
		rentMap.put("own", ownVO);
		
		//retrunDate 만들어주기**************************
		Calendar cal = Calendar.getInstance();
		cal.setTime(tradeVO.getTradeDate());
		cal.add(Calendar.DATE, ownVO.getSelectPeriod());
		
		Date returnDate = format.parse(format.format(cal.getTime()));
		
		rentMap.put("returnDate", returnDate);
		
		// Rent 테이블에 기록 저장
		tradeDAO.insertRent(rentMap);
	}

	@Override
	public List<TradeVO> findLendersByMemberId(MemberVO login) throws Exception {
		return tradeDAO.findLendersByMemberId(login);
	}
	
	@Override
	public List<TradeVO> findOwnerByMemberId(MemberVO login) throws Exception {
		return tradeDAO.findOwnerByMemberId(login);
	}

	@Override
	public TradeVO findTradeByid(TradeVO trade) throws Exception {
		return tradeDAO.findTradeByid(trade);
	}
	
}
