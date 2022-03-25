package com.spring.shop.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.shop.dto.Member;
import com.spring.shop.mapper.MemberMapper;
@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession ss;
	
	public Member goLogin(Member member) {
		//추상화 구현체를 호출
		return ss.getMapper(MemberMapper.class).goLogin(member);
	}
	public int goJoin(Member member) {
		return ss.getMapper(MemberMapper.class).goJoin(member);
	}
	public int goUserUpdate(Member member) {
		return ss.getMapper(MemberMapper.class).goUserUpdate(member);
	}
	public int goUserDelete(Member member) {
		return ss.getMapper(MemberMapper.class).goUserDelete(member);
	}
	
}
