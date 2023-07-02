package com.ham.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ham.member.TestService;

@Controller
public class Main {
	
	@Autowired
	private TestService service;
	
	@GetMapping("/home.do")
	public String m1() {

		System.out.println(service.test());
		
		return "home";
	}

}
