package com.incbook.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.incbook.project.service.MemberService;

@Controller
@RequestMapping("/sample/*")
public class SampleController {

	@Inject
	private MemberService service;

	@RequestMapping(value = "/sampleInsert", method = RequestMethod.GET)
	public void sampleinsert() throws Exception {
		
	}
	@RequestMapping(value = "/sampleList", method = RequestMethod.GET)
	public void sampleList() throws Exception {
		
	}
	@RequestMapping(value = "/sampleDetail", method = RequestMethod.GET)
	public void sampleDetail() throws Exception {
		
	}
	@RequestMapping(value = "/sampleBoard", method = RequestMethod.GET)
	public void sampleBoard() throws Exception {
		
	}
}
