package com.ham.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ham.domain.MyMemberDTO;
import com.ham.member.MyUserProfileService;

@Controller
public class MyUserProfileController {
	
	@Autowired
	private MyUserProfileService service;

	@GetMapping("/user_profile.do")
	public String userProfile(Model model, HttpServletRequest req) {
		
		//접속자 아이디
		HttpSession session = req.getSession();
		/* TODO 세션 아이디 로그인 후 변경
		String id = (String)session.getAttribute("id");
		 */
		String id = "wain1719";
		
		MyMemberDTO dto = service.edit(id);
		
		if (dto.getM_birth() != null && !dto.getM_birth().isEmpty()) {
		    String datePart = dto.getM_birth().split(" ")[0]; // 시간 부분은 잘라낸다.
		    dto.setM_birth(datePart);
		}
		
		model.addAttribute("dto", dto);
		
		return "member/user_profile";
	}

	//기본 정보 수정
	@PostMapping("/user_profile_update.do")
	public String update(@ModelAttribute("dto") MyMemberDTO dto) {
		
		int result = service.update(dto);

		if (result > 0) {
			return "redirect:/user_profile.do";
		} else {
			// 실패 처리 로직 추가 (예: 에러 페이지로 이동)
			return "redirect:/error";
		}
	}

	//비밀번호 수정
	@PostMapping("/user_profile_updatepw.do")
	public String updatePw(String new_pw, HttpServletRequest req) {
		
		//접속자 아이디
		HttpSession session = req.getSession();
		/* TODO 세션 아이디 로그인 후 변경
		String id = (String)session.getAttribute("id");
		 */
		String id = "wain1719";
		
		MyMemberDTO dto = new MyMemberDTO();
		
		dto.setM_pw(new_pw);
		dto.setM_id(id);
		
		int result = service.updatepw(dto);

		if (result > 0) {
			return "redirect:/user_profile.do";
		} else {
			// 실패 처리 로직 추가 (예: 에러 페이지로 이동)
			return "redirect:/error";
		}
	}

}
