package com.spring.shop.mapper;

import java.util.ArrayList;

import com.spring.shop.dto.Post;

public interface PostMapper {
	//�۾���
	public abstract int goPostWrite(Post post);
	//notice
	public abstract ArrayList<Post> getNotice(Post post);
	//post
	public abstract Post getPost(int num);
	//postUpdate
	public abstract int goPostUpdate(Post post);
	//goPostDelete
	public abstract int goPostDelete(int num);
}
