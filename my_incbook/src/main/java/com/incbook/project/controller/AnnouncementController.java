package com.incbook.project.controller;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.pagecriteria.BoardCriteria;
import com.incbook.project.domain.pagemaker.BoardPageMaker;
import com.incbook.project.service.AnnouncementService;

@Controller
@RequestMapping("/announcement/*")
public class AnnouncementController {

	@Inject
	private AnnouncementService announcementService;

	@RequestMapping(value = "/announcement", method = RequestMethod.GET)
	public void announcementListGET(@ModelAttribute("boardCri") BoardCriteria boardCri, Model model) throws Exception {

		List<AnnouncementVO> allAnnouncement = announcementService.announcementList(boardCri);
		model.addAttribute("announcementList", allAnnouncement);

		BoardPageMaker boardPageMaker = new BoardPageMaker();
		boardPageMaker.setCri(boardCri);
		boardPageMaker.setTotalCount(announcementService.listSearchCount(boardCri));
		model.addAttribute("boardPageMaker", boardPageMaker);

	}

	@RequestMapping(value = "/readAnnouncement", method = RequestMethod.GET)
	public void readAnnouncement(@RequestParam("id") int id, @ModelAttribute("boardCri") BoardCriteria boardCri,
			Model model) throws Exception {
		AnnouncementVO readAnnouncement = announcementService.readAnnouncement(id);
		model.addAttribute("readAnnouncement", readAnnouncement);

	}

	@RequestMapping(value = "/announcementInsert", method = RequestMethod.GET)
	public void AnnouncementInsertGET(Model model, @ModelAttribute("boardCri") BoardCriteria boardCri,
			AnnouncementVO vo, RedirectAttributes rttr) throws Exception {
		BoardPageMaker boardPageMaker = new BoardPageMaker();
		boardPageMaker.setCri(boardCri);
		boardPageMaker.setTotalCount(announcementService.listSearchCount(boardCri));
		model.addAttribute("boardPageMaker", boardPageMaker);

	}

	@RequestMapping(value = "/announcementInsert", method = RequestMethod.POST)
	public String AnnouncementInsertPOST(AnnouncementVO vo, RedirectAttributes rttr) throws Exception {
		announcementService.announcementInsert(vo);

		return "redirect:/announcement/announcement";

	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteAnnouncement(@RequestParam("id") int id, RedirectAttributes rttr) throws Exception {
		announcementService.deleteAnnouncement(id);

		return "redirect:/announcement/announcement";
	}

	@RequestMapping(value="/modifyPage", method=RequestMethod.GET)
	public void modifyPageGet(@RequestParam("id") int id, @ModelAttribute("boardCri") BoardCriteria boardCri, Model model) throws Exception {
		AnnouncementVO modifyTarget = announcementService.readAnnouncement(id);
		model.addAttribute("modifyTarget", modifyTarget);
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.POST)
	public String modifyPagePOST(AnnouncementVO vo, BoardCriteria boardCri, RedirectAttributes rttr) throws Exception {
		announcementService.updateAnnouncement(vo);
		rttr.addAttribute("id",vo.getId());
		rttr.addAttribute("page", boardCri.getPage());
		rttr.addAttribute("pagesize", boardCri.getPagesize());
		return "redirect:/announcement/readAnnouncement";
	}
}
