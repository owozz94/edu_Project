package com.spring.shop;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.shop.dto.Post;
import com.spring.shop.service.MemberService;
import com.spring.shop.service.PostService;
@Controller
public class NoticeController {
	@Autowired
	PostService postService;
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(HttpServletRequest req, Post post) {
		
		ArrayList<Post> getPostList = postService.getNotice(post);

		req.getSession().setAttribute("list", getPostList);
		req.setAttribute("center", "Notice.jsp");
		
		return "Main";
	}
	@RequestMapping(value="/goPostWrite", method = RequestMethod.POST)
	public String write(HttpServletRequest req,Post post) {
		
		postService.goPostWrite(post);
		req.setAttribute("center", "Notice.jsp");
		return "Main";
	}
	@RequestMapping(value="/getPost",method= RequestMethod.GET)
	public String getPost(HttpServletRequest req, Post post) {
		String num = req.getParameter("num");
		req.setAttribute("center", "Post.jsp");
		return "Main";
	}
	
}
