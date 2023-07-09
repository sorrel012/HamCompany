package com.ham.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	@GetMapping("/shopping_list.do")
	public String shoppingList() {
		
		return "shop/shopping_list";
	}
	
	@GetMapping("/shopping_view.do")
	public String shoppingView() {
		
		return "shop/shopping_view";
	}
	
	@GetMapping("/payment.do")
	public String payment() {
		
		return "shop/payment";
	}
	
	
	
	@GetMapping("/myportfolio.do")
	public String myPortfolio() {
		
		return "member/myportfolio";
	}
	
	@GetMapping("/addportfolio.do")
	public String addPortfolio() {
		
		return "member/addportfolio";
	}
	
	@GetMapping("/support_detail.do")
	public String supportDetail() {

		return "member/support_detail";
	}

	
	@GetMapping("/myspeak_list.do")
	public String mySpeakList() {
		
		return "member/myspeak_list";
	}
	
	@GetMapping("/jobapply.do") 
	public String jobApply() {
		
		return "member/jobapply";
	}
	
	@GetMapping("/speaklist.do")
	public String speakList() {
		
		return "board/speaklist";
	}
	
	@GetMapping("/speakdetail.do")
	public String speakDetail() {
		
		return "board/speakdetail";
	}
	
	@GetMapping("/speakadd.do")
	public String speakAdd() {
		
		return "board/speakadd";
	}
	
	@GetMapping("/listenlist.do")
	public String listenList() {
		
		return "board/listenlist";
	}
	
	@GetMapping("/listendetail.do")
	public String listenDetail() {
		
		return "board/listendetail";
	}
	
	@GetMapping("/listenadd.do")
	public String listenAdd() {
		
		return "board/listenadd";
	}
	
	@GetMapping("/checkprofile.do")
	public String checkProfile() {
		
		return "admin/checkprofile";
	}
	
	@GetMapping("/checkblacklist.do")
	public String checkBlackList() {
		
		return "admin/checkblacklist";
	}
	
	@GetMapping("/checkinquiry.do")
	public String checkInquiry() {
		
		return "admin/checkinquiry";
	}
	
	@GetMapping("/checkprofile_view.do")
	public String checkProfileView() {
		
		return "admin/checkprofile_view";
	}
	
	@GetMapping("/matching.do")
	public String matching() {
		
		return "admin/matching";
	}
	
	@GetMapping("/portfolio.do")
	public String portfolio() {
		
		return "portfolio/portfolio";
	}
	
	@GetMapping("/portfolio_view.do")
	public String portfolioView() {
		
		return "portfolio/portfolio_view";
	}
	
}
