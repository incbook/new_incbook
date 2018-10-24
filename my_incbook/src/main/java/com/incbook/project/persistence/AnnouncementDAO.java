package com.incbook.project.persistence;

import java.util.List;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.BookVO;


public interface AnnouncementDAO {

	public List<AnnouncementVO> announcementList() throws Exception;
	
	public AnnouncementVO readAnnouncement(Integer id) throws Exception;
	
	public void updateViewCnt(Integer id) throws Exception;
}
