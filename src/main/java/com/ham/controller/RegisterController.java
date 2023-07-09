package com.ham.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ham.domain.BusinessDTO;
import com.ham.domain.MemberDTO;
import com.ham.member.MemberService;

@Controller
public class RegisterController {
	
	@Autowired
	private PasswordEncoder encoder = new BCryptPasswordEncoder();
	
	@Autowired
	private MemberService service;
	
	
	@GetMapping("/signup.do")
	public String signup() {
		
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
	
	@PostMapping("/member_signup.do")
	public String memberSignupOk(MemberDTO dto) {
		
		//dto.setM_pw(encoder.encode(dto.getM_pw()));
		
		int result = service.memberSignup(dto);
		
		
		if (result == 1) {
			
			return "redirect:/login.do";
			
		} else {
			
			return "redirect:/member_signup.do";
			
		}
	
	}
	
	@PostMapping("/business_signup.do")
	public String businessSignupOk(BusinessDTO dto) {
		
		//dto.setM_pw(encoder.encode(dto.getM_pw()));
		
		int result = service.businessSignup(dto);
		
		
		if (result == 1) {
			
			return "redirect:/login.do";
			
		} else {
			
			return "redirect:/business_signup.do";
			
		}
		
	}
	
	@PostMapping("/idcheck")
	public @ResponseBody int idcheck(String id) {
		
		int result = service.checkAdmin(id) + service.checkMember(id) + service.checkBusiness(id);
		
		return result;
		
	}

}
