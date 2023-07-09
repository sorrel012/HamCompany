package com.ham.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ham.domain.BestDTO;
import com.ham.member.MemberService;

@Controller

public class LoginController {
	
	@Autowired
	MemberService service;
	
	@GetMapping("/index.do")
	
	public String index(Model model, Principal p, Authentication a) {
		
		List<BestDTO> list = service.getBest();
		
		if (p != null) {
			System.out.println(p.getName());
			System.out.println(a.getAuthorities().toArray()[0]);
		}
		
		//System.out.println(list);

		model.addAttribute("list", list);
		
		return "index";
	}
	
	

	@GetMapping("/login.do")
	public String login() {
		
		
		return "member/login";
	}
	
	@GetMapping("/logout.do")
	public String logout() {
		
		
		return "member/logout";
	}
}


