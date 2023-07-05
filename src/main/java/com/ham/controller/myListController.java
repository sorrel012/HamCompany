package com.ham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class myListController {

	@GetMapping("/mylisten_list.do")
	public String myListenList() {

		return "member/mylisten_list";
	}

	@GetMapping("/myspeak_list.do")
	public String mySpeakList() {

		return "member/myspeak_list";
	}


}
