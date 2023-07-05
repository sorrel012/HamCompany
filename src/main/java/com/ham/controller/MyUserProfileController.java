package com.ham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyUserProfileController {

	@GetMapping("/user_profile.do")
	public String userProfile() {

		return "member/user_profile";
	}
	
}
