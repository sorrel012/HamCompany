package com.ham.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ham.member.TestService;

@Controller
public class Main {
	
	@GetMapping("/index.do")
	public String index() {
		
		return "index";
	}
	
	@GetMapping("/login.do")
	public String login() {
		
		return "member/login";
	}
	
	@GetMapping("/user_type.do")
	public String usertype() {
		
		return "member/user_type";
	}
	
	@GetMapping("/member_signup.do")
	public String memberSignup() {
		
		return "member/member_signup";
	}
	
	@GetMapping("/business_signup.do")
	public String businessSignup() {
		
		return "member/business_signup";
	}

}
