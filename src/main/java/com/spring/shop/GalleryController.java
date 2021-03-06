package com.spring.shop;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class GalleryController {
	
	private static final Logger logger = LoggerFactory.getLogger(GalleryController.class);
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		req.setAttribute("center", "Gallery.jsp");
		
		return "Main";
	}
	
}
