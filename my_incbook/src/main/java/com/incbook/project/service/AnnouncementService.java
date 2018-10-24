package com.incbook.project.service;

import java.util.List;

import com.incbook.project.domain.AnnouncementVO;

public interface AnnouncementService {

	public List<AnnouncementVO> announcementList() throws Exception;
	
	public AnnouncementVO readAnnouncement(Integer id) throws Exception;


}
