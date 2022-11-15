package com.nagarro.librarymanagement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.librarymanagement.constant.Constant;

@Controller
public class BookController {
	
	@GetMapping("/bookList")
	public String requestBookListingPage() {
		return Constant.BOOKS_MANAGEMENT_PAGE;
	}
	
	@GetMapping("/editRequest")
	public ModelAndView editRequest(HttpServletRequest req) {
		
		ModelAndView mv = new ModelAndView(Constant.EDIT_BOOKS_PAGE);
		mv.addObject("code", req.getParameter("code"));
		
		return mv;
	}
	
	@GetMapping("/addBookPage")
	public String requestAddBookPage() {
		return Constant.ADD_BOOKS_PAGE;
	}
}
