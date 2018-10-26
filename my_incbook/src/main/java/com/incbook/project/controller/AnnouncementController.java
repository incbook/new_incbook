package com.incbook.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.service.AnnouncementService;

@Controller
@RequestMapping("/announcement/*")
public class AnnouncementController {

	@Inject
	private AnnouncementService announcementService;

	@RequestMapping(value = "/announcement", method = RequestMethod.GET)
	public void announcementListGET(Model model) throws Exception {

		List<AnnouncementVO> allAnnouncement = announcementService.announcementList();
		model.addAttribute("announcementList", allAnnouncement);
	}

	@RequestMapping(value = "/readAnnouncement", method = RequestMethod.GET)
	public void readAnnouncement(@RequestParam("id") int id, Model model) throws Exception {
		AnnouncementVO readAnnouncement = announcementService.readAnnouncement(id);
		model.addAttribute("readAnnouncement", readAnnouncement);
		
	}
}
