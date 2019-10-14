package com.nagarro.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.configurers.FormLoginConfigurer;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.models.User;
import com.nagarro.services.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private User user;

	// api for going to login page 
	@GetMapping(value = { "/login" })
	public ModelAndView openLoginPage(String error, String logout) {
		ModelAndView mv = new ModelAndView("loginPage");
		if (error != null)
			mv.addObject("error", "Username or password is invalid.");
		if (logout != null)
			mv.addObject("msg", "You have been successfully logged out.");
		return mv;
	}

}
