package com.spring.shop.mapper;

import com.spring.shop.dto.Member;
//repository에 접근하기 전에 추상화 작업을 해야됨.
public interface MemberMapper {
	//db에서 리턴값이 object
	public abstract Member goLogin(Member member);
	//db에서 리턴값이 정수.
	public abstract int goJoin(Member member);
	//유저 정보 수정
	public abstract int goUserUpdate(Member member);
	//유저 정보 삭제
	public abstract int goUserDelete(Member member);
 
}
