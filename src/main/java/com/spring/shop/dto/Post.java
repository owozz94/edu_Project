package com.spring.shop.dto;

public class Post {
	private int post_num;
	private String post_title;
	private String post_content;
	private int post_count;
	private String post_date;
	private String mi_id;
	
	public Post() {
		// TODO Auto-generated constructor stub
	}

	public int getPost_num() {
		return post_num;
	}

	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_content() {
		return post_content;
	}

	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}

	public int getPost_count() {
		return post_count;
	}

	public void setPost_count(int post_count) {
		this.post_count = post_count;
	}

	public String getPost_date() {
		return post_date;
	}

	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}

	public String getMi_id() {
		return mi_id;
	}

	public void setMi_id(String mi_id) {
		this.mi_id = mi_id;
	}

	public Post(int post_num, String post_title, String post_content, int post_count, String post_date, String mi_id) {
		super();
		this.post_num = post_num;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_count = post_count;
		this.post_date = post_date;
		this.mi_id = mi_id;
	}
	
	
	
}
