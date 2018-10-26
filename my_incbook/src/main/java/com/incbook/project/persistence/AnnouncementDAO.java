package com.incbook.project.persistence;

import java.util.List;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.pagecriteria.BoardCriteria;


public interface AnnouncementDAO {

	public List<AnnouncementVO> announcementList(BoardCriteria cri) throws Exception;
	
	public AnnouncementVO readAnnouncement(Integer id) throws Exception;
	
	public void updateViewCnt(Integer id) throws Exception;
	
	public int listSearchCount(BoardCriteria cri) throws Exception;
}
