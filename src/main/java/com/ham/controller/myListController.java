package com.ham.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ham.domain.MyHReviewDTO;
import com.ham.domain.MySpeakMDTO;
import com.ham.member.MyListService;

@Controller
public class myListController {
	
	@Autowired
	private MyListService service;

	@GetMapping("/mylisten_list.do")
	public String myListenList(Model model, HttpServletRequest req) {
		
		//접속자 아이디
		HttpSession session = req.getSession();
		/* TODO 세션 아이디 로그인 후 변경
		String id = (String)session.getAttribute("id");
		*/
		String id = "violet123";
		
		List<MyHReviewDTO> list = service.llist(id);
		
		for(MyHReviewDTO dto : list) {
			
			dto.setHr_comment(service.lcomment(dto.getHr_seq()));
			
		}
		
		model.addAttribute("list", list);

		return "member/mylisten_list";
	}

	@GetMapping("/myspeak_list.do")
	public String mySpeakList(Model model, HttpServletRequest req) {

		//접속자 아이디
		HttpSession session = req.getSession();
		/* TODO 세션 아이디 로그인 후 변경
		String id = (String)session.getAttribute("id");
		*/
		String id = "violet123";
		
		List<MySpeakMDTO> list = service.slist(id);
		
		for(MySpeakMDTO dto : list) {
			
			dto.setSm_comment(service.scomment(dto.getSm_seq()));
			
		}
		
		model.addAttribute("list", list);

		return "member/myspeak_list";
	}


}
