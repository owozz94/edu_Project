package com.spring.shop;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class WriteController {
	
	private static final Logger logger = LoggerFactory.getLogger(WriteController.class);
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		req.setAttribute("center", "WriteForm.jsp");
		
		return "Main";
	}
	
}
