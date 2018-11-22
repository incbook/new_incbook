package com.incbook.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.incbook.project.domain.BoardVO;
import com.incbook.project.domain.BookclubVO;
import com.incbook.project.domain.NoticeVO;
import com.incbook.project.domain.PartyVO;
import com.incbook.project.domain.pagemaker.PageMaker;
import com.incbook.project.domain.searchcriteria.SearchCriteria;
import com.incbook.project.service.BookService;
import com.incbook.project.service.BookclubService;

@Controller
@RequestMapping("/bookclub/*")
public class BookclubController {

	@Inject
	private BookclubService bookclubService;

	@RequestMapping(value = "/bookclubList", method = RequestMethod.GET)
	public void bookclubList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		cri.setPagesize(10);
		List<BookclubVO> bookclubList = bookclubService.bookclubList(cri);
		model.addAttribute("bookclubList", bookclubList);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bookclubService.listSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);

	}
//북클럽 검색기능
	@RequestMapping(value = "/bookclubSearchList", method = RequestMethod.GET)
	public void bookclubSearchList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		cri.setPagesize(10);
		List<BookclubVO> bookclubSearchList = bookclubService.bookclubSearchList(cri);
		model.addAttribute("bookclubSearchList", bookclubSearchList);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bookclubService.bookclubListSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);

	}
	@RequestMapping(value = "/bookclubInsert", method = RequestMethod.GET)
	public void bookclubInsertGET(Model model, @ModelAttribute("cri") SearchCriteria cri, PartyVO pvo, BookclubVO bvo)
			throws Exception {
		PageMaker PageMaker = new PageMaker();
		PageMaker.setCri(cri);
		PageMaker.setTotalCount(bookclubService.listSearchCount(cri));
		model.addAttribute("PageMaker", PageMaker);

	}

	@RequestMapping(value = "/bookclubInsert", method = RequestMethod.POST)
	public String bookclubInsertPOST(PartyVO pvo, BookclubVO bvo, RedirectAttributes rttr) throws Exception {
		bookclubService.bookclubInsert(pvo, bvo);

		return "redirect:/bookclub/bookclubSearchList";

	}

	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public void boardList(@RequestParam("bookclubId") int bookclubId, @ModelAttribute("cri") SearchCriteria cri,
			Model model) throws Exception {
		List<BoardVO> boardList = bookclubService.boardList(bookclubId);
		model.addAttribute("boardList", boardList);
		model.addAttribute("bookclubId", bookclubId);
	}
	
	@RequestMapping(value = "/bookclubSide", method = RequestMethod.GET)
	public void bookclubSide(@RequestParam("bookclubId") int bookclubId, @ModelAttribute("cri") SearchCriteria cri,
			String boardId, Model model) throws Exception {
		List<BoardVO> boardList = bookclubService.boardList(bookclubId);
		model.addAttribute("boardList", boardList);
		model.addAttribute("bookclubId", bookclubId);
		
		int boardIdInt = 0;
		if( !(boardId == null || "".equals(boardId)) ) {
			boardIdInt = Integer.parseInt(boardId);
		}
		model.addAttribute("boardId", boardIdInt);
	}

	@RequestMapping(value = "/bookclubModifyPage", method = RequestMethod.GET)
	public void bookclubModifyPageGet(@RequestParam("bookclubId") int bookclubId,
			@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		BookclubVO modifyTarget = bookclubService.readBookclub(bookclubId);
		model.addAttribute("modifyTarget", modifyTarget);
	}

	@RequestMapping(value = "/bookclubModifyPage", method = RequestMethod.POST)
	public String bookclubModifyPagePOST(PartyVO pvo, BookclubVO bvo, int bookclubId, SearchCriteria cri,
			RedirectAttributes rttr) throws Exception {
		pvo.setId(bookclubId);
		bvo.setId(bookclubId);
		bookclubService.updateBookclub(pvo, bvo);
		rttr.addAttribute("bookclubId", bvo.getId());
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("pagesize", cri.getPagesize());
		return "redirect:/bookclub/bookclubSearchList";
	}

	@RequestMapping(value = "/deleteBookclub", method = RequestMethod.GET)
	public String deleteBookclub(@RequestParam("bookclubId") int bookclubId) throws Exception {
		bookclubService.deleteBookclub(bookclubId);
		return "redirect:/bookclub/bookclubSearchList";
	}

	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
	public String deleteBoard(@RequestParam("bookclubId") int bookclubId, @RequestParam("boardId") int boardId,
			RedirectAttributes rttr) throws Exception {
		bookclubService.deleteBoard(boardId);
		rttr.addAttribute("bookclubId", bookclubId);
		rttr.addAttribute("boardId", boardId);
		return "redirect:/bookclub/noticeSearchList";
	}

	@RequestMapping(value = "/boardInsert", method = RequestMethod.GET)
	public void boardInsertGET(@RequestParam("bookclubId") int bookclubId, Model model,
			@ModelAttribute("cri") SearchCriteria cri, BoardVO vo) throws Exception {
		PageMaker PageMaker = new PageMaker();
		PageMaker.setCri(cri);
		PageMaker.setTotalCount(bookclubService.listSearchCount(cri));
		model.addAttribute("PageMaker", PageMaker);
		model.addAttribute("bookclubId", bookclubId);

	}

	@RequestMapping(value = "/boardInsert", method = RequestMethod.POST)
	public String boardInsertPOST(@RequestParam("bookclubId") int bookclubId, BoardVO vo,
			@ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		bookclubService.boardInsert(vo);
		rttr.addAttribute("bookclubId", vo.getbookclubId());
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("pagesize", cri.getPagesize());
		return "redirect:/bookclub/noticeSearchList";

	}

	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public void noticeList(@RequestParam("bookclubId") int bookclubId, String boardId,
			@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		int boardIdInt = 0;
		if (! (boardId == null || "".equals(boardId)) ) {
			boardIdInt = Integer.parseInt(boardId);
		}else{
			List<BoardVO> boardList = bookclubService.boardList(bookclubId);
			if (boardList.size() != 0) {
				boardIdInt = boardList.get(0).getId();
			} else {
				boardIdInt = 0;
			}
		}
		cri.setPagesize(10);
		List<NoticeVO> noticeList = bookclubService.noticeList(boardIdInt, cri);
		model.addAttribute("noticeList", noticeList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bookclubService.listSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("bookclubId", bookclubId);
		model.addAttribute("boardId", boardIdInt);
	}
	
	//게시글 검색기능
	@RequestMapping(value = "/noticeSearchList", method = RequestMethod.GET)
	public void noticeSearchList(@RequestParam("bookclubId") int bookclubId, String boardId,
			@ModelAttribute("cri") SearchCriteria cri, Model model, String bookclubname) throws Exception {
		int boardIdInt = 0;
		if (! (boardId == null || "".equals(boardId)) ) {
			boardIdInt = Integer.parseInt(boardId);
		}else{
			List<BoardVO> boardList = bookclubService.boardList(bookclubId);
			if (boardList.size() != 0) {
				boardIdInt = boardList.get(0).getId();
			} else {
				boardIdInt = 0;
			}
		}
		cri.setPagesize(10);
		List<NoticeVO> noticeSearchList = bookclubService.noticeSearchList(boardIdInt, cri);
		model.addAttribute("noticeSearchList", noticeSearchList);
		
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bookclubService.noticeListSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("bookclubId", bookclubId);
		model.addAttribute("boardId", boardIdInt);

		model.addAttribute("bookclubname", bookclubname);


	}

	@RequestMapping(value = "/boardModifyPage", method = RequestMethod.GET)
	public void boardModifyPageGet(@RequestParam("boardId") int boardId, @RequestParam("bookclubId") int bookclubId,
			@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		BoardVO boardModifyTarget = bookclubService.readBoard(boardId);
		model.addAttribute("bookclubId", bookclubId);
		model.addAttribute("boardModifyTarget", boardModifyTarget);
	}

	@RequestMapping(value = "/boardModifyPage", method = RequestMethod.POST)
	public String boardModifyPagePOST(BoardVO vo, @RequestParam("bookclubId") int bookclubId, SearchCriteria cri,
			RedirectAttributes rttr) throws Exception {
		bookclubService.updateBoard(vo);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("pagesize", cri.getPagesize());
		rttr.addAttribute("bookclubId", bookclubId);
		return "redirect:/bookclub/noticeSearchList";
	}

	@RequestMapping(value = "/noticeInsert", method = RequestMethod.GET)
	public void noticeInsertGET(@RequestParam("bookclubId") int bookclubId, @RequestParam("boardId") int boardId,
			Model model, @ModelAttribute("cri") SearchCriteria cri, NoticeVO vo) throws Exception {
		PageMaker PageMaker = new PageMaker();
		PageMaker.setCri(cri);
		PageMaker.setTotalCount(bookclubService.listSearchCount(cri));
		model.addAttribute("PageMaker", PageMaker);
		model.addAttribute("boardId", boardId);
		model.addAttribute("bookclubId", bookclubId);
	}

	@RequestMapping(value = "/noticeInsert", method = RequestMethod.POST)
	public String noticeInsertPOST(@RequestParam("bookclubId") int bookclubId, @RequestParam("boardId") int boardId,
			NoticeVO vo, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		bookclubService.noticeInsert(vo);
		rttr.addAttribute("boardId", boardId);
		rttr.addAttribute("bookclubId", bookclubId);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("pagesize", cri.getPagesize());
		return "redirect:/bookclub/noticeSearchList";

	}

	@RequestMapping(value = "/readNotice", method = RequestMethod.GET)
	public void readNotice(@RequestParam("bookclubId") int bookclubId, @RequestParam("boardId") int boardId,
			@RequestParam("noticeId") int noticeId, Model model) throws Exception {

		NoticeVO readNotice = bookclubService.readNotice(noticeId);
		BookclubVO bookclubNameOfReadNotice = bookclubService.bookclubNameOfReadNotice(bookclubId);
		BoardVO boardTitleOfReadNotice = bookclubService.boardTitleOfReadNotice(boardId);
		model.addAttribute("readNotice", readNotice);
		model.addAttribute("bookclubId", bookclubId);
		model.addAttribute("boardId", boardId);
		model.addAttribute("noticeId", noticeId);
		model.addAttribute("bookclubNameOfReadNotice", bookclubNameOfReadNotice);
		model.addAttribute("boardTitleOfReadNotice", boardTitleOfReadNotice);
	}

	@RequestMapping(value = "/noticeModifyPage", method = RequestMethod.GET)
	public void noticeModifyPageGET(@RequestParam("boardId") int boardId, @RequestParam("bookclubId") int bookclubId,
			@RequestParam("noticeId") int noticeId, Model model) throws Exception {
		NoticeVO noticeModifyTarget = bookclubService.readNotice(noticeId);
		model.addAttribute("bookclubId", bookclubId);
		model.addAttribute("boardId", boardId);
		model.addAttribute("noticeId", noticeId);
		model.addAttribute("noticeModifyTarget", noticeModifyTarget);
	}

	@RequestMapping(value = "/noticeModifyPage", method = RequestMethod.POST)
	public String noticeModifyPagePOST(NoticeVO vo, @RequestParam("bookclubId") int bookclubId,
			@RequestParam("boardId") int boardId, @RequestParam("noticeId") int noticeId, RedirectAttributes rttr)
			throws Exception {
		vo.setId(noticeId);
		bookclubService.updateNotice(vo);
		rttr.addAttribute("bookclubId", bookclubId);
		rttr.addAttribute("boardId", boardId);
		rttr.addAttribute("noticeId", noticeId);
		return "redirect:/bookclub/noticeSearchList";
	}

	@RequestMapping(value = "/deleteNotice", method = RequestMethod.GET)
	public String deleteBoard(@RequestParam("bookclubId") int bookclubId, @RequestParam("boardId") int boardId,
			@RequestParam("noticeId") int noticeId, RedirectAttributes rttr) throws Exception {
		bookclubService.deleteNotice(noticeId);
		rttr.addAttribute("noticeId", noticeId);
		rttr.addAttribute("bookclubId", bookclubId);
		rttr.addAttribute("boardId", boardId);
		return "redirect:/bookclub/noticeSearchList";
	}
}
