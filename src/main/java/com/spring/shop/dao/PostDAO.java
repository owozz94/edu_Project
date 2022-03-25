package com.spring.shop.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.shop.dto.Post;
import com.spring.shop.mapper.PostMapper;

@Repository
public class PostDAO {
	
	@Autowired
	SqlSession ss;
	
	public int goPostWrite(Post post) {
		return ss.getMapper(PostMapper.class).goPostWrite(post);
	}
	public ArrayList<Post> getNotice(Post post) {
		
		return ss.getMapper(PostMapper.class).getNotice(post);
	}
	public Post getPost(Post post) {
		return ss.getMapper(PostMapper.class).getPost(post);
	}
	

}
