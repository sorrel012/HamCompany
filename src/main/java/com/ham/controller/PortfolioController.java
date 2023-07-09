package com.ham.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;
import com.ham.member.PortfolioService;



@Controller
@PreAuthorize("isAuthenticated()")
public class PortfolioController {
	
	@Autowired
	private PortfolioService service;
	
	@GetMapping("/portfolio.do")
	public String portfolio(Model model, @RequestParam(defaultValue = "1") int num, String p_service) {
		
		List<PortfolioDTO> pflist;

		
		String pfcnt;
		int cnt;
		
		 // 한 페이지에 출력할 게시물 갯수
		 int perPage;
		 
		 int postNum;
		 
				 
		 //페이징 번호
		 int pageNum;
		 
		 //출력할 게시물
		 int displayPost;
		 
		 //한번에 표시할 페이징 번호 갯수
		 int pageNum_cnt;
		 
		 //표시되는 페이지 번호 중 마지막 번호
		 int endPageNum;
		 
		 //표시되는 페이지 번호 중 첫번째 번호
		 int startPageNum;
		 
		// 마지막 번호 재계산(데이터 없는 페이지는 안나오게)
		 int endPageNum_tmp;

		 
		 boolean prev;
		 boolean next;
		

		
		if (p_service != null && !p_service.equals("")) {

			pfcnt = service.getpfcnt2(p_service);
			cnt = Integer.parseInt(pfcnt);
			
			
			 perPage = 12;
			 
			 postNum = perPage * num;
			 					 
			 pageNum = (int)Math.ceil((double)cnt/perPage);
			 
			 displayPost = (num - 1) * perPage + 1;
			 
			 pageNum_cnt = 5;
			 
			 endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
			 
			 startPageNum = endPageNum - (pageNum_cnt - 1);
			 
			 endPageNum_tmp = (int)(Math.ceil((double)cnt / (double)perPage));
			  
			 if(endPageNum > endPageNum_tmp) {
			  endPageNum = endPageNum_tmp;
			 }
			 
			prev = startPageNum == 1 ? false : true;
			next = endPageNum * pageNum_cnt >= cnt ? false : true;
			
			
			
			pflist = service.pflist2(displayPost, postNum, p_service);
			System.out.println(222);
			
			
		} else {

			pfcnt = service.getpfcnt();
			cnt = Integer.parseInt(pfcnt);
			
			perPage = 12;
			 
			postNum = perPage * num;
			 
					 
			 pageNum = (int)Math.ceil((double)cnt/perPage);
			 
			 displayPost = (num - 1) * perPage + 1;
			 
			 pageNum_cnt = 5;
			 
			 endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
			 
			 startPageNum = endPageNum - (pageNum_cnt - 1);
			 
			 endPageNum_tmp = (int)(Math.ceil((double)cnt / (double)perPage));
			  
			 if(endPageNum > endPageNum_tmp) {
			  endPageNum = endPageNum_tmp;
			 }
			 
			prev = startPageNum == 1 ? false : true;
			next = endPageNum * pageNum_cnt >= cnt ? false : true;
			
			pflist = service.pflist(displayPost, postNum);
			
			System.out.println(111);
		}
		
		
		
		 
		 
		 
		model.addAttribute("pflist", pflist);	
		model.addAttribute("pfcnt", pfcnt);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("p_service", p_service);
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		
		return "portfolio/portfolio";
	}
	
	@GetMapping("/portfolio_view.do")
	public String portfolioView(Model model, String p_seq) {
		
		List<PGalleryDTO> pfpiclist = service.pfpiclist(p_seq);
		
		PortfolioDTO dto = service.getpf(p_seq);
		
		model.addAttribute("dto", dto);
		model.addAttribute("pfpiclist", pfpiclist);
		
		return "portfolio/portfolio_view";
	}

}
