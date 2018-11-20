package com.incbook.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.domain.BookVO;
import com.incbook.project.domain.MemberVO;
import com.incbook.project.service.BookService;
import com.incbook.project.service.PersonalizeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private BookService bookService;

	@Inject
	private PersonalizeService personalizeService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(BookVO vo,Locale locale, Model model, HttpServletRequest request) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		model.addAttribute("list", bookService.newBookChart(vo));
		
		// 세션을 통한 회원 정보
		MemberVO login = (MemberVO) request.getSession().getAttribute("login");
		model.addAttribute("login", login);

		if (login != null) {
			List<BookVO> personalizeBookList = personalizeService.personalizeListOfIndex(login);
			model.addAttribute("personalizeList", personalizeBookList);
		}

		return "index";
	}
	

}





