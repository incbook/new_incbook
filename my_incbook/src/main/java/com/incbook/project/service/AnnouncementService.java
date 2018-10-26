package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.pagecriteria.BoardCriteria;

public interface AnnouncementService {
	public static final int pagesize = 10;

	public List<AnnouncementVO> announcementList(BoardCriteria cri) throws Exception;
	
	public int listSearchCount(BoardCriteria cri) throws Exception;
	
	public AnnouncementVO readAnnouncement(Integer id) throws Exception;

	

}
