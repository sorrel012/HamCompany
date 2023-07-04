package com.ham.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class myPageController {

	@GetMapping("/user_profile.do")
	public String userProfile() {

		return "member/user_profile";
	}

	@GetMapping("/myportfolio.do")
	public String myPortfolio() {

		return "member/myportfolio";
	}

	@GetMapping("/addportfolio.do")
	public String addPortfolio() {

		return "member/addportfolio";
	}

	@GetMapping("/jobapply.do")
	public String jobApply() {

		return "member/jobapply";
	}

	@GetMapping("/support_detail.do")
	public String supportDetail() {

		return "member/support_detail";
	}

	@GetMapping("/mylisten_list.do")
	public String myListenList() {

		return "member/mylisten_list";
	}

	@GetMapping("/myspeak_list.do")
	public String mySpeakList() {

		return "member/myspeak_list";
	}
	
}
