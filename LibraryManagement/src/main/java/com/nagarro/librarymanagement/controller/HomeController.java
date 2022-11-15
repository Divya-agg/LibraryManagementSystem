package com.nagarro.librarymanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nagarro.librarymanagement.constant.*;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String redirectToHomePage() {
		return Constant.HOME_PAGE;
	}
}
