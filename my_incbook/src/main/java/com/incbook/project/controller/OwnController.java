package com.incbook.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.service.OwnService;

@Controller
@RequestMapping("/own/*")
public class OwnController {

	@Inject
	private OwnService ownService;

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public void searchGET() throws Exception {

	}

}
