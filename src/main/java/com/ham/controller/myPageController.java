package com.ham.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.ham.domain.PortfolioDTO;
import com.ham.member.PortfolioService;

@Controller
public class myPageController {
	
	@Autowired
	private PortfolioService pservice;

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
	
	@PostMapping("/storeportfolio.do")
	public String storePortfolio(Model model, PortfolioDTO dto, MultipartFile[] attach, HttpServletRequest req) {
		
		//접속자 아이디
		HttpSession session = req.getSession();
		/* TODO 세션 아이디 로그인 후 변경
		String id = (String)session.getAttribute("id");
		dto.setM_id(id); */
		dto.setM_id("wain1719");
		
		List<String> files = new ArrayList<String>();
		
		for (MultipartFile file : attach) {
			
			try {

				UUID uuid = UUID.randomUUID();

				String filename = uuid + "_" + file.getOriginalFilename();
				
				files.add(filename);

				file.transferTo(new File(req.getRealPath("/resources/img/portfolio") + "\\" + filename));
				//C:\OneDrive\project\함해볼텨\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ham\resources\img\portfolio

			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		pservice.add(dto, files);

		return "redirect:/myportfolio.do";
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
