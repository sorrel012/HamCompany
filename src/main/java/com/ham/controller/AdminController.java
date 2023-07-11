package com.ham.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ham.admin.AdminService;
import com.ham.domain.BlackListDTO;
import com.ham.domain.InquiryDTO;
import com.ham.domain.JobAplDTO;
import com.ham.domain.JobAplDetailDTO;
import com.ham.domain.MatchingDTO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	//인재프로필검수 상세보기 페이지
	@GetMapping("/checkprofile_view.do")
	public String showProfileVerificationDetailsPage(Model model, String jaSeq) {
		
		JobAplDetailDTO dto = service.profileDedatil(jaSeq);
		List<JobAplDetailDTO> jaeList = service.jaEduList(jaSeq);
		List<JobAplDetailDTO> jacList = service.jaCareerList(jaSeq);
		
		model.addAttribute("dto", dto);
		model.addAttribute("jaeList", jaeList);
		model.addAttribute("jacList", jacList);
		
		return "admin/checkprofile_view";
	}
	
	@PostMapping("/checkprofile_view.do")
	public String marketUserSave(Model model, String action, String jaSeq) {
		
		int marketUserResult = 0;
		int jobAplStatusResult = 0;
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("action", action);
		map.put("jaSeq", jaSeq);
		
		if (action.equals("승인")) {
			marketUserResult = service.addMarketUser(jaSeq);
			jobAplStatusResult = service.modifyJobAplStatus(map);
		} else if (action.equals("거절")) {
			jobAplStatusResult = service.modifyJobAplStatus(map);
		}
		
		return "redirect:/checkprofile_view.do?jaSeq=" + jaSeq;
	}
	
	//인재프로필검수 페이지
	@GetMapping("/checkprofile.do")
	public String showProfileVerificationPage(Model model) {
		
		List<JobAplDTO> list = service.profileList();
		
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
	
	@PostMapping("/checkblacklist.do")
	public String blackListSave(Model model, String action, String blSeq, String blBadmember, String num) {
		
		int blackListResult = 0;
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("action", action);
		map.put("blSeq", blSeq);
		map.put("blBadmember", blBadmember);
		map.put("num", num);
		
		if (action.equals("반려")) {
			blackListResult = service.modifyBlackList(map);
			
		} else if (action.equals("경고")) {
			blackListResult = service.modifyBlackList(map);
			
		} else if (action.equals("차단")) {
			blackListResult = service.modifyBlackList(map);
			service.modifyUserStatus(map);
			
		} else if (action.equals("차단해제")) {
			blackListResult = service.modifyBlackList(map);
			service.modifyUserStatus(map);
		}
		
		return "admin/checkblacklist";
	}
	
	//문의내역관리 페이지
	@GetMapping("/checkinquiry.do")
	public String showInquiryManagementPage(Model model) {
		
		List<InquiryDTO> list = service.inquiryList();
		
		model.addAttribute("list", list);
		
		return "admin/checkinquiry";
	}
	
	@PostMapping("/checkinquiry.do")
	public String saveInquiryAnswer(Model model, String answer, String cscSeq) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("answer", answer);
		map.put("cscSeq", cscSeq);
		
		service.addInquiryAnswer(map);
		
		
		return "redirect:/checkinquiry.do";
	}
	
	//매칭관리 페이지
	@GetMapping("/matching.do")
	public String showMatchingManagementPage(Model model) {
		
		List<MatchingDTO> list = service.findMatching();
		
		int completedCount = service.findMatchingCount("승인");
		int processingCount = service.findMatchingCount("대기중");
		
		List<MatchingDTO> dateCount = service.findMatchingDateCount();
		
		model.addAttribute("list", list);
		model.addAttribute("processingCount", processingCount);
		model.addAttribute("completedCount", completedCount);
		model.addAttribute("dateCount", dateCount);
		
		return "admin/matching";
	}
	
	@PostMapping("/matching.do")
	public String mathchingStatusSave(Model model, String action, String oSeq) {
		
		int confirmResult = 0;
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("action", action);
		map.put("oSeq", oSeq);
		
		if (action.equals("승인")) {
			confirmResult = service.modifyConfirmStatus(map);
			
		} else if (action.equals("거절")) {
			confirmResult = service.modifyConfirmStatus(map);
		}
		
		return "admin/matching"; 
	}

}
