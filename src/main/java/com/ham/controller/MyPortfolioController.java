package com.ham.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
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

import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;
import com.ham.member.MyPortfolioService;

@Controller
public class MyPortfolioController {
	
	@Autowired
	private MyPortfolioService service;

	@GetMapping("/myportfolio.do")
	public String myPortfolio(Model model, HttpServletRequest req) {
		
		//접속자 아이디
		HttpSession session = req.getSession();
		/* TODO 세션 아이디 로그인 후 변경
		String id = (String)session.getAttribute("id");
		*/
		String id = "wain1719";
				
		List<MyPortfolioDTO> list = service.list(id);
		
		model.addAttribute("list", list);

		return "member/myportfolio";
	}
	
	@GetMapping("/addportfolio.do")
	public String addPortfolio() {

		return "member/addportfolio";
	}
	
	@PostMapping("/storeportfolio.do")
	public String storePortfolio(Model model, MyPortfolioDTO dto, MultipartFile[] attach, HttpServletRequest req) {
		
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
		
		service.add(dto, files);

		return "redirect:/myportfolio.do";
	}
	
	@GetMapping("/editportfolio.do")
	public String editPortfolio(Model model, String p_seq) {

		List<MyPortfolioDTO> list = service.edit(p_seq);
		
		model.addAttribute("list", list);
		
		return "member/editportfolio";
	}

	@PostMapping("/updateportfolio.do")
	public String updatePortfolio(Model model, MyPortfolioDTO dto, MultipartFile[] attach, HttpServletRequest req) {
		
		List<String> files = new ArrayList<String>();
		
		String[] orgFiles = req.getParameterValues("pg_name");

		List<MyPGalleryDTO> gallery = service.gallerylist(dto.getP_seq());
		
		for(MyPGalleryDTO gdto : gallery) {
			
			String name = gdto.getPg_name();
			
			if (!Arrays.asList(orgFiles).contains(name)) {
				//파일을 삭제했으면 DB에서 삭제
				service.delFile(name);
				
		    }
			
		}
		
		if(attach != null) {
			
			for (MultipartFile file : attach) {
				
				try {

					UUID uuid = UUID.randomUUID();

					String orgName = file.getOriginalFilename();
					
					if(orgName.equals("")) {
						continue;
					}
					
					String filename = uuid + "_" + orgName;
					
					files.add(filename);

					file.transferTo(new File(req.getRealPath("/resources/img/portfolio") + "\\" + filename));
					//C:\OneDrive\project\함해볼텨\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ham\resources\img\portfolio

				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
			
		}
				
		service.update(dto, files);
		
		return "redirect:/myportfolio.do";
	}
	
	@GetMapping("/delportfolio.do")
	public String delPortfolio(String p_seq) {
		
		service.delete(p_seq);
		
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
	
}
