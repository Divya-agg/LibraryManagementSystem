package com.nagarro.librarymanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.librarymanagement.constant.Constant;
import com.nagarro.librarymanagement.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping("/registerPage")
	public String redirectToRegisterPage() {
		return Constant.REGISTER_PAGE;
	}
	
	@RequestMapping("/requestLogin")
	public ModelAndView verifyLogin(String userName, String passwd) {
		ModelAndView mv = new ModelAndView();
		
		if(loginService.isValidLoginDetails(userName, passwd)) {
			mv.setViewName(Constant.BOOKS_MANAGEMENT_PAGE);
		}
		else {
			mv.setViewName(Constant.LOGIN_PAGE);
		}
		return mv;
	}	
}
