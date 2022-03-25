package com.spring.shop.dto;

public class Member {
	private String mi_id;
	private String mi_pw;
	private String mi_name;
	private String mi_email;
	private String mi_mobile;
	private String mi_addr;
	private String mi_insdate;
	
	public Member() {
	}

	public String getMi_id() {
		return mi_id;
	}

	public void setMi_id(String mi_id) {
		this.mi_id = mi_id;
	}

	public String getMi_pw() {
		return mi_pw;
	}

	public void setMi_pw(String mi_pw) {
		this.mi_pw = mi_pw;
	}

	public String getMi_name() {
		return mi_name;
	}

	public void setMi_name(String mi_name) {
		this.mi_name = mi_name;
	}

	public String getMi_email() {
		return mi_email;
	}

	public void setMi_email(String mi_email) {
		this.mi_email = mi_email;
	}

	public String getMi_mobile() {
		return mi_mobile;
	}

	public void setMi_mobile(String mi_mobile) {
		this.mi_mobile = mi_mobile;
	}

	public String getMi_addr() {
		return mi_addr;
	}

	public void setMi_addr(String mi_addr) {
		this.mi_addr = mi_addr;
	}

	public String getMi_insdate() {
		return mi_insdate;
	}

	public void setMi_insdate(String mi_insdate) {
		this.mi_insdate = mi_insdate;
	}

	public Member(String mi_id, String mi_pw, String mi_name, String mi_email, String mi_mobile, String mi_addr,
			String mi_insdate) {
		super();
		this.mi_id = mi_id;
		this.mi_pw = mi_pw;
		this.mi_name = mi_name;
		this.mi_email = mi_email;
		this.mi_mobile = mi_mobile;
		this.mi_addr = mi_addr;
		this.mi_insdate = mi_insdate;
	}
	
	
}
