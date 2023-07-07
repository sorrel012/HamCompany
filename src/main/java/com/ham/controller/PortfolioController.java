package com.ham.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;
import com.ham.member.PortfolioService;



@Controller
public class PortfolioController {
	
	@Autowired
	private PortfolioService service;
	
	@GetMapping("/portfolio.do")
	public String portfolio(Model model, String p_service) {
		
		
		List<PortfolioDTO> pflist;
		String pfcnt;
		
		if (p_service != null && !p_service.equals("")) {
			pflist = service.pflist(p_service);
			pfcnt = service.getpfcnt2(p_service);
		} else {
			pflist = service.pflist();
			pfcnt = service.getpfcnt();
		}
		
		
		
		
		model.addAttribute("pflist", pflist);	
		model.addAttribute("pfcnt", pfcnt);
		
		
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
