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
		System.out.println(rst);
		if(rst > 0) {
			req.setAttribute("MSG", "ȸ������ ����!");
		}else {
			req.setAttribute("MSG", "ȸ������ ����");
		}
		req.setAttribute("center", "LoginForm.jsp");
		return "Main";
	}
}
