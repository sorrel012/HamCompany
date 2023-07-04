package com.ham.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ham.domain.BusinessDTO;
import com.ham.member.BusinessService;

@Controller
public class Business {

	@Autowired
	private BusinessService service;
	
	//비즈니스 프로필
	@GetMapping("/business_profile.do")
	public String businessProfile(Model model) {
	
		List<BusinessDTO> list = service.profile("adventureseeker22");
		
		System.out.println(list);
		
		model.addAttribute("list", list);
		
		return "member/business_profile";
	}
	
	//비즈니스 프로필 - 상위 수정
	@PostMapping("/business_profile1_editok.do")
	public String editok(@ModelAttribute("dto") BusinessDTO dto) {
		
		System.out.println(dto);
		int result = service.profile1_edit(dto);
		
		if (result > 0) {
	        return "redirect:/business_profile.do";
	    } else {
	        // 실패 처리 로직 추가 (예: 에러 페이지로 이동)
	        return "redirect:/error";
	    }
	}
	
	//비즈니스 프로필 - 하위 수정
	@PostMapping("/business_profile2_editok.do")
	public String editok2(@ModelAttribute("dto") BusinessDTO dto) {
		
		System.out.println(dto);
		int result = service.profile2_edit(dto);
		
		if (result > 0) {
	        return "redirect:/business_profile.do";
	    } else {
	        // 실패 처리 로직 추가 (예: 에러 페이지로 이동)
	        return "redirect:/error";
	    }
	}
	
	@GetMapping("/business_profile_detail.do")
	public String businessProfileDetail() {
		
		return "member/business_profile";
	}
	
	@GetMapping("/wish_list.do")
	public String wishList() {
		
		return "member/wish_list";
	}
	
	@GetMapping("/order_list.do")
	public String orderList() {
		
		return "member/order_list";
	}
	
	@GetMapping("/mylisten_list.do")
	public String myListenList() {
		
		return "member/mylisten_list";
	}
	
}
