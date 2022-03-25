package com.spring.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.shop.dto.Member;
import com.spring.shop.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	@Autowired
	MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		req.setAttribute("center", "LoginForm.jsp");
		return "Main";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(HttpServletRequest req) {
		req.setAttribute("center", "JoinForm.jsp");
		return "Main";
	}
	@RequestMapping(value = "/goLogin", method = RequestMethod.POST)
	public String goLogin(Member member, HttpServletRequest req) {
		//��Ʈ�ѷ� ���񽺷� ����!!
		
		Member loginUser = memberService.goLogin(member);
		
		if(loginUser != null) {
			req.getSession().setAttribute("loginMember", loginUser);
			req.setAttribute("MSG", "�α��μ���");
			req.setAttribute("center", "home.jsp");
		}else {
			req.setAttribute("MSG", "�α��ν���");
			req.setAttribute("center", "LoginForm.jsp");
			
		}
		return "Main";
	} //goLogin
	@RequestMapping(value = "/goLogout", method = RequestMethod.GET)
	public String goLogout(Member member, HttpServletRequest req) {
		
		req.getSession().invalidate();
		return "Main";
	}
	@RequestMapping(value="/goJoin", method = RequestMethod.POST)
	public String goJoin(Member member, HttpServletRequest req) {
		
		// insert update delete >> int return
		// select >> object return 
		int rst  =  memberService.goJoin(member);
		if(rst > 0) {
			req.setAttribute("MSG", "ȸ������ ����!");
		}else {
			req.setAttribute("MSG", "ȸ������ ����");
		}
		req.setAttribute("center", "LoginForm.jsp");
		return "Main";
	}
	
	@RequestMapping(value = "/userInfo", method=RequestMethod.GET)
	public String UserInfo(Member member,HttpServletRequest req ) {
		
		req.setAttribute("center", "UserInfo.jsp");
		return "Main";
	}
	//UserInfo���� �����ϱ� ��ư�� ������ ��
	@RequestMapping(value="/userInfoUpdate", method = RequestMethod.GET)
	public String UserUpdateInfo(HttpServletRequest req) {
		
		req.setAttribute("center", "UserInfoUpdate.jsp");
		return "Main";
	}
	//���� �����ϱ� ������ ��
	@RequestMapping(value="/goUserInfoUpdate", method = RequestMethod.POST)
	public String goUserUpdateInfo(Member member, HttpServletRequest req) {
		
		System.out.println(member.getMi_name());
		System.out.println(member.getMi_id());
		System.out.println(member.getMi_email());
		System.out.println(member.getMi_mobile());
		System.out.println(member.getMi_addr());
		
		int result = memberService.goUserUpdate(member);
		System.out.println("result="+result);
		if(result > 0) {
			req.setAttribute("MSG", "ȸ������ ����!");
			req.setAttribute("loginMember", member);
		}else {
			req.setAttribute("MSG", "ȸ������ ����");
		}
		req.setAttribute("center", "UserInfo.jsp");
		
		return "Main";
	}
	@RequestMapping(value ="/goUserDelete", method = RequestMethod.POST)
	public String goUserDelete(Member member, HttpServletRequest req) {
		String s = member.getMi_id();
		int result = memberService.goUserDelete(member);
		
		if(result > 0) {
			req.setAttribute("MSG", "ȸ��Ż�� ����!");
			req.getSession().invalidate();
		}else {
			req.setAttribute("MSG", "ȸ��Ż�� ����");
		}
		req.setAttribute("center", "home.jsp");
		return "Main";
	}
	
}
