package com.ham.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ham.admin.AdminService;
import com.ham.domain.BlackListDTO;
import com.ham.domain.JopAplDTO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	//인재프로필검수 상세보기 페이지
	@GetMapping("/checkprofile_view.do")
	public String loadProfileVerificationDetailsPage(Model model) {
		
		return "admin/checkprofile_view";
	}
	
	//인재프로필검수 페이지
	@GetMapping("/checkprofile.do")
	public String loadProfileVerificationPage(Model model) {
		
		List<JopAplDTO> list = service.profileList();
		
		model.addAttribute("list", list);
		
		return "admin/checkprofile";
	}
	
	//불량회원관리 페이지
	@GetMapping("/checkblacklist.do")
	public String showBadMemberManagementPage(Model model) {
		
		List<BlackListDTO> list = service.blackList();
		
		model.addAttribute("list", list);
		
		return "admin/checkblacklist";
	}
	
	//문의내역관리 페이지
	@GetMapping("/checkinquiry.do")
	public String showInquiryManagementPage(Model model) {
		
		
		return "admin/checkinquiry";
	}
	
//	//매칭관리 페이지
//	public String loadMatchingManagementPage() {
//		
//		return "admin/chekprofile_view";
//	}

}
