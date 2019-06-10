package com.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {
	//메인 페이지
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String index() {
		return "redirect:/";
	}
	//장바구니 페이지
	@RequestMapping(value = "cartpage.do", method = RequestMethod.GET)
	public String cartpage() {
		return "cartpage";
	}
	// 로그인 페이지
	@RequestMapping(value = "loginpage.do", method = RequestMethod.GET)
	public String loginpage() {
		return "loginpage";
	}

	// 회원가입 페이지
	@RequestMapping(value = "joinpage.do", method = RequestMethod.GET)
	public String joinpage() {
		return "joinpage";
	}
	// 채소(카테고리) 페이지
	@RequestMapping(value = "vegetablepage.do", method = RequestMethod.GET)
	public String vegetablepage() {
		return "vegetablepage";
	}
	//유저정보 페이지
	@RequestMapping(value = "userinfopage.do", method = RequestMethod.GET)
	public String userinfopage() {
		return "userinfopage";
	}
}
