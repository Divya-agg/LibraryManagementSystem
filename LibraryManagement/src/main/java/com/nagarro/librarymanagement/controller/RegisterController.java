package com.nagarro.librarymanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.librarymanagement.constant.Constant;
import com.nagarro.librarymanagement.service.HashService;
import com.nagarro.librarymanagement.service.RegisterService;

@Controller
public class RegisterController {

	@Autowired
	RegisterService registerService;
	
	@Autowired
	HashService hashService;
	
	@RequestMapping(value = "/requestRegister", method = RequestMethod.POST)
	public ModelAndView registerUser(String userName, String passwd) {
		ModelAndView mv = new ModelAndView();
		
		if(null == registerService.isValidUserName(userName)) {
			passwd = hashService.getHash(passwd, Constant.salt);
			registerService.registerUser(userName, passwd);
			
			mv.setViewName(Constant.LOGIN_PAGE);
			mv.addObject("userName", userName);
		}
		else {
			mv.setViewName(Constant.REGISTER_PAGE);
		}
		
		return mv;		
	}
}
