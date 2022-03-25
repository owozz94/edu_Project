package com.spring.shop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.shop.dao.PostDAO;
import com.spring.shop.dto.Post;
@Service
public class PostService {
	
	@Autowired
	PostDAO postDAO;
	
	public int goPostWrite(Post post) {
		return postDAO.goPostWrite(post);
	}

	public ArrayList<Post> getNotice(Post post) {
		
		return postDAO.getNotice(post);
	}
	public Post getPost(Post post) {
		return postDAO.getPost(post);
	}
}
