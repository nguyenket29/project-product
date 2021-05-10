package com.hau.ketnguyen.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "login")
@RequestMapping(value = "/login")
public class LoginController {
	@GetMapping
	public ModelAndView signIn() {
		ModelAndView mav = new ModelAndView("/login/home");
		return mav;
	}
}
