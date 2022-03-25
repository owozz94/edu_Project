package com.spring.shop.mapper;

import java.util.ArrayList;

import com.spring.shop.dto.Post;

public interface PostMapper {
	//±Û¾²±â
	public abstract int goPostWrite(Post post);
	//notice
	public abstract ArrayList<Post> getNotice(Post post);
	//post
	public abstract Post getPost(Post post);
}
