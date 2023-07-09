package com.ham.controller;

import java.nio.file.attribute.UserPrincipalLookupService;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ham.domain.EReviewDTO;
import com.ham.domain.FieldDTO;
import com.ham.domain.JobApliDTO;
import com.ham.domain.PayDTO;
import com.ham.shop.ShopService;


@Controller
@PreAuthorize("isAuthenticated())
public class ShopController {

	@Autowired
	private ShopService service;
	
	@GetMapping("/shop/shopping_list.do")
	public String shoppingList(Model model, String f_seq, String page) {
	
		Map<String,String> map = new HashMap<String, String>();
		
		if(page.equals("")) {
			page = "1";
		}
		
		String start = Integer.toString((Integer.parseInt(page) - 1) * 12 + 1);
		String end = Integer.toString(Integer.parseInt(page) * 12);
		
		int listSize = service.listSize(f_seq);
		int totalPage = (listSize / 12);
		
		List<JobApliDTO> list = service.shopList(f_seq, start, end);
		List<FieldDTO> flist = service.fieldList();
		
		model.addAttribute("list", list);
		model.addAttribute("flist", flist);
		model.addAttribute("listSize", listSize);
		model.addAttribute("totalPage", totalPage);	
		model.addAttribute("f_seq", f_seq);
		
		
		return "shop/shopping_list";
	}
	
	@GetMapping("/shop/shopping_view.do")
	public String shoppingView(Model model, String seq, Double rate, Principal p) {
		
		JobApliDTO dto = service.shopView(seq);
		List<String> elist = service.elist(seq);
		List<String> clist = service.clist(seq);
		List<EReviewDTO> rlist = service.reviewList(seq); 
		List<JobApliDTO> slist = service.similarList(seq);
		
		JobApliDTO tempDto = new JobApliDTO();
		tempDto.setId(p.getName());
		tempDto.setMk_seq(dto.getMk_seq());
		
		int isJjim = service.hasJjim(tempDto);
		
		String summary = dto.getIntro().substring(0, 140);
		summary += "...";
		
		
		
		model.addAttribute("dto", dto);
		model.addAttribute("summary", summary);
		model.addAttribute("elist", elist);
		model.addAttribute("clist", clist);
		model.addAttribute("simList", slist);
		model.addAttribute("rate", rate);
		model.addAttribute("rlist", rlist);
		model.addAttribute("isJjim", isJjim);
		model.addAttribute("id", p.getName());
		
		return "shop/shopping_view";
	}
	
	@RequestMapping(value = "/shop/payment.do", method = RequestMethod.POST)
	public String payment(
			   @RequestParam String salary,
			   @RequestParam String f_name,
			   @RequestParam String fdName,
			   @RequestParam String mk_seq,
			   @RequestParam String date,
			   @RequestParam String m_name,
			   Model model,
			   Principal p) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		
	
		map.put("salary", salary);
		map.put("f_name", f_name);
		map.put("fdName", fdName);
		map.put("mk_seq", mk_seq);
		map.put("date", date);
		map.put("m_name", m_name);
		
		model.addAttribute("map", map);
		model.addAttribute("id", p.getName());
		
		return "shop/payment";
	}
	
	@GetMapping("/shop/payok.do")
	public String payOk(String m_name, String fdName, String date, String salary, Model model) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		
		
		map.put("m_name", m_name);
		map.put("fdName", fdName);
		map.put("date", date);
		map.put("salary", salary);
		
		model.addAttribute("map", map);
		
		
		return "shop/payok";
	}
	
	@RequestMapping(value = "/shop/paycheck.do", method=RequestMethod.POST)
	public @ResponseBody void paycheck(String b_id, String mk_seq, String p_name,
										String p_tel, String p_address, String p_address_detail,
										String p_memo, String p_email) {
		
		PayDTO dto = new PayDTO();
		
		dto.setB_id(b_id);
		dto.setMk_seq(mk_seq);
		dto.setP_name(p_name);
		dto.setP_tel(p_tel);
		dto.setP_address(p_address);
		dto.setP_address_detail(p_address_detail);
		dto.setP_memo(p_memo);
		dto.setP_email(p_email);
		

		service.addPay(dto);
		
	}
	
	@PostMapping("/shop/jjim.do")
	public void jjim(String mk_seq, String id, int isJjim) {
		
		JobApliDTO dto = new JobApliDTO();
		
		dto.setMk_seq(mk_seq);
		dto.setId(id);
	
		
		if (isJjim == 0) {
			service.addJjim(dto);
		} else if (isJjim == 1) {
			service.delJjim(dto);
		}
		
	
	}
}
