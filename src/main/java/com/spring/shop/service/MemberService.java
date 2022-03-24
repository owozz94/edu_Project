package com.spring.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.shop.dao.MemberDAO;
import com.spring.shop.dto.Member;
//지금은 비즈니스 로직이 없음
@Service
public class MemberService {
	
	@Autowired
	MemberDAO memberDAO;
	
	public Member goLogin(Member member) {
		return memberDAO.goLogin(member);
	}
	public int goJoin(Member member) {
		return memberDAO.goJoin(member);
	}

}

