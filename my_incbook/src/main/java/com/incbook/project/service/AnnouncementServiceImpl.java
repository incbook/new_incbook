package com.incbook.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.pagecriteria.BoardCriteria;
import com.incbook.project.persistence.AnnouncementDAO;

@Service
public class AnnouncementServiceImpl implements AnnouncementService {

	@Inject
	private AnnouncementDAO dao;
	
	@Override
	public List<AnnouncementVO> announcementList(BoardCriteria cri) throws Exception {
		return dao.announcementList(cri);
	}
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public AnnouncementVO readAnnouncement(Integer id) throws Exception {
		dao.updateViewCnt(id);
		return dao.readAnnouncement(id);
	}
	
	@Override
	public int listSearchCount(BoardCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearchCount(cri);
	}
	
	
}
