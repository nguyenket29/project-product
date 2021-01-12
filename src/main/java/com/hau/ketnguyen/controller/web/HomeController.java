package com.hau.ketnguyen.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeWeb")
public class HomeController {
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView addCart() {
		ModelAndView mav = new ModelAndView("/cart/home");
		return mav;
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detail() {
		ModelAndView mav = new ModelAndView("/detail/home");
		return mav;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView signIn() {
		ModelAndView mav = new ModelAndView("/login/home");
		return mav;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView signUp() {
		ModelAndView mav = new ModelAndView("/register/home");
		return mav;
	}
}
