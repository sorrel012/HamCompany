package com.ham.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ham.domain.BusinessDTO;
import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.FieldDTO;
import com.ham.domain.OrderDTO;
import com.ham.domain.ReviewDTO;
import com.ham.domain.WishDTO;
import com.ham.member.BusinessService;

@Controller
@PreAuthorize("hasRole("ROLE_BUSINESS"))
public class Business {

	@Autowired
	private BusinessService service;
	
	//비즈니스 프로필
	@GetMapping("/business_profile.do")
	public String businessProfile(Model model, Principal p) {
	
		List<BusinessDTO> list = service.profile(p.getName());
		
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
	
	//businessProfileDetail.jsp
	@GetMapping("/business_profile_detail.do")
	public String businessProfileDetail(Model model, Principal p) {
		
		BusinessDTO dto = service.profile_detail(p.getName());
		List<FieldDTO> list = service.allField();
		
		//System.out.println(dto);
		//System.out.println(list);
		
		model.addAttribute("dto", dto);
		model.addAttribute("list", list);
		
		return "member/business_profile_detail";
	}
	
	//비즈니스 프로필 - 상위 수정
	@PostMapping("/business_detail_edit.do")
	public String businessDetailEdit(@ModelAttribute("dto") BusinessDTO dto) {
		
		System.out.println("dto = " +dto);
		
		int result = service.profile_detail_edit(dto);
		
		if (result > 0) {
	        
			return "redirect:/business_profile_detail.do";
	    } else {
	        // 실패 처리 로직 추가 (예: 에러 페이지로 이동)
	        return "redirect:/error";
	    }

		
	}
	
	@GetMapping("/wish_list.do")
	public String wishList(Model model, Principal p) {
		
		List<WishDTO> list = service.wish_list(p.getName());
		
		
		//System.out.println(list);
		//System.out.println(list2);
		
		model.addAttribute("list", list);
		
		return "member/wish_list";
	}
	
	@GetMapping("/wish_list_delete.do")
	public String wishList(String seq) {
		
		System.out.println(seq);
		service.wish_list_delete(seq);
		
		return "redirect:/wish_list.do";
	}
	
	@GetMapping("/order_list.do")
	public String orderList(Model model, @RequestParam(defaultValue = "1") int page, Principal p) {
		
		int itemsPerPage = 10; // 한 페이지에 보여줄 아이템 수

	    int start = (page - 1) * itemsPerPage + 1;
	    int end = page * itemsPerPage;
	    
	    Map<String, String> map = new HashMap<String, String>();
	    
	    String b_id = p.getName();
	    
	    map.put("b_id", b_id);
	    map.put("start", start + "");
	    map.put("end", end + "");
	    
		List<OrderDTO> list = service.order_list(map);
		
		String size = service.order_list_size(b_id);
		
		//System.out.println(size);
		
		model.addAttribute("list", list);
	    model.addAttribute("page", page);
	    model.addAttribute("size", size);
		
		return "member/order_list";
	}
	
	@GetMapping("/order_list_select.do")
	public String orderList_select(Model model, String seq) {
		
		System.out.println(seq);
		
		OrderDTO dto = service.order_list_select(seq);
		ReviewDTO dto2 = service.review_list(seq);
		
		//List<OrderDTO> list2 = service.order_list_select(seq);
		
		System.out.println(dto);
		System.out.println(dto2);
		
		model.addAttribute("dto", dto);
		model.addAttribute("dto2", dto2);
		
		return "member/order_list_select";
	}
	
	//비즈니스 프로필 - 상위 수정
	@PostMapping("/order_list_review_add.do")
	public String order_list_review_add(@ModelAttribute("dto") ReviewDTO dto) {
		
		System.out.println("dto = " +dto);
		
		int result = service.order_list_review_add(dto);
		
		if (result > 0) {
	        
			return "redirect:/order_list_select.do?seq=" + dto.getO_seq();
	    } else {
	        // 실패 처리 로직 추가 (예: 에러 페이지로 이동)
	        return "redirect:/error";
	    }
	
	}
	
	//비즈니스 프로필 - 상위 수정
	@PostMapping("/order_list_review_edit.do")
	public String order_list_review_edit(@ModelAttribute("dto") ReviewDTO dto) {
		
		System.out.println("dto = " +dto);
		
		int result = service.order_list_review_edit(dto);
		
		if (result > 0) {
	        
			return "redirect:/order_list_select.do?seq=" + dto.getO_seq();
	    } else {
	        // 실패 처리 로직 추가 (예: 에러 페이지로 이동)
	        return "redirect:/error";
	    }
	
	}
	
	/*
	@GetMapping("/business_myspeak_list.do")
	public String business_myspeak_list(Model model, String page) {
		
		//int start = Integer.parseInt(page);
		//int end = start+9;
		
		List<BusinessSpeakDTO> list = service.business_speak_list("adventureseeker22");
		
		System.out.println(list);
		System.out.println(page);
		
		model.addAttribute("list", list);
		
		return "member/business_myspeak_list";
	}
	*/
	
	@GetMapping("/business_myspeak_list.do")
	public String business_myspeak_list(Model model, @RequestParam(defaultValue = "1") int page, Principal p) {
	    int itemsPerPage = 10; // 한 페이지에 보여줄 아이템 수

	    int start = (page - 1) * itemsPerPage + 1;
	    int end = page * itemsPerPage;
	    
	    Map<String, String> map = new HashMap<String, String>();
	    
	    String b_id = p.getName();

	    map.put("b_id", b_id);
	    map.put("start", start + "");
	    map.put("end", end + "");
	    

	    List<BusinessSpeakDTO> list = service.business_speak_list(map);
	    
	    int size = list.size();

	    System.out.println(list);
	    System.out.println(page);

	    model.addAttribute("list", list);
	    model.addAttribute("page", page);
	    model.addAttribute("size", size);

	    return "member/business_myspeak_list";
	}
	
}
