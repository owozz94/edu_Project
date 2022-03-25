package com.spring.shop.mapper;

import com.spring.shop.dto.Member;
//repository�� �����ϱ� ���� �߻�ȭ �۾��� �ؾߵ�.
public interface MemberMapper {
	//db���� ���ϰ��� object
	public abstract Member goLogin(Member member);
	//db���� ���ϰ��� ����.
	public abstract int goJoin(Member member);
	//���� ���� ����
	public abstract int goUserUpdate(Member member);
	//���� ���� ����
	public abstract int goUserDelete(Member member);
 
}
