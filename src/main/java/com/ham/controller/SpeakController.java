package com.ham.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.ham.board.SpeakService;
import com.ham.domain.BSCommentDTO;
import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.MSCommentDTO;
import com.ham.domain.MemberSpeakDTO;

@Controller
@PreAuthorize("isAuthenticated()")
public class SpeakController {
	
	@Autowired
	private SpeakService service;
	
	@GetMapping("/speakmlist.do")
	public String speakmList(Model model, @RequestParam(value = "sort", defaultValue="0") String sort) {
		
		//사용자 말해볼텨 리스트 불러오기
		if (sort.equals("0")) {
			
			List<MemberSpeakDTO> list = service.getSpeakList();
			int count = service.getSpeakBoardCnt("1");
			
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("sorted", sort);
			
		} else {
			
			List<MemberSpeakDTO> list = service.getSortedSpeakList(sort);
			int count = service.getSpeakBoardCnt("1");
			
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("sorted", sort);
			
		}
		
		return "board/speakmlist";
	}	
	

	//사업자 말해볼텨
	@GetMapping("/speakblist.do")
	public String speakbList(Model model, @RequestParam(value = "sort", defaultValue="0") String sort) {
	
		//사업자 말해볼텨 리스트 불러오기
		if (sort.equals("0")) {
			
			List<BusinessSpeakDTO> list = service.getSpeakMList();
			int count = service.getSpeakBoardCnt("2");
			
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("sorted", sort);
			
		} else {
			
			List<BusinessSpeakDTO> list = service.getSortedSpeakMList(sort);
			int count = service.getSpeakBoardCnt("2");
			
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("sorted", sort);
			
		}
		
		return "board/speakblist";
		
	}
	

	@GetMapping("/speakmdetail.do")
	public String speakmDetail(Model model, String seq) {

		//사용자 말해볼텨 글 상세정보 불러오기
		MemberSpeakDTO dto = service.getSpeakMDetail(seq);
		
		//글 조회수 업데이트
		service.updateSpeakMDetail(seq);
		
		String vcnt = service.getSpeakMCnt(seq);
		dto.setSm_hit(vcnt);
		
		//글에 해당하는 댓글 가져오기
		List<MSCommentDTO> clist = service.getSpeckMComment(seq);
		
		//댓글 갯수 가져오기
		int ccnt = service.getSpeckMCommentCnt(seq);
		
		model.addAttribute("dto", dto);
		model.addAttribute("clist", clist);
		model.addAttribute("ccnt", ccnt);
		model.addAttribute("seq", seq);
		
		return "board/speakmdetail";
	}
	
	
	@GetMapping("/speakbdetail.do")
	public String speakbDetail(Model model, String seq) {

		//사업자 말해볼텨 글 상세정보 불러오기
		BusinessSpeakDTO dto = service.getSpeakBDetail(seq);
		
		//글 조회수 업데이트
		service.updateSpeakBDetail(seq);
		
		String vcnt = service.getSpeakBCnt(seq);
		dto.setSb_hit(vcnt);
		
		//글에 해당하는 댓글 가져오기
		List<BSCommentDTO> clist = service.getSpeckBComment(seq);

		//댓글 갯수 가져오기
		int ccnt = service.getSpeckBCommentCnt(seq);
		
		model.addAttribute("dto", dto);
		model.addAttribute("clist", clist);
		model.addAttribute("ccnt", ccnt);
		model.addAttribute("seq", seq);
		
		return "board/speakbdetail";
	}
	
	
	//글 삭제
	@GetMapping("/deleteSMComment.do") 
	public String deleteSMC(String seq) {
		
		service.deleteSMContentCmt(seq);
		service.deleteSMComment(seq);
		
		return "redirect:speakmlist.do";
	}
	
	@GetMapping("/deleteSBComment.do") 
	public String deleteSBC(String seq) {
		
		service.deleteSBContentCmt(seq);
		service.deleteSBComment(seq);
		
		return "redirect:speakblist.do";
	}
	
	//글 쓰기
	@GetMapping("/speakadd.do")
	public String speakAdd(Model model, String type) {
		
		model.addAttribute("type", type);
		
		return "board/speakadd";
	}
	
	
	@PostMapping("/addspeakM.do")
	public String addspeakM(MemberSpeakDTO dto, Principal p) {
		
		String id = p.toString();
		dto.setM_id(id);
		service.addSpeakM(dto);
		
		return "redirect:speakmlist.do";
	}
	
	@PostMapping("/addspeakB.do")
	public String addspeakB(BusinessSpeakDTO dto, Principal p) {
		
		String id = p.toString();
		dto.setB_id(id);
		service.addSpeakM(dto);

		return "redirect:speakblist.do";
	}
	
	
	//글 수정
	@GetMapping("/speakedit.do")
	public String speakEdit(Model model, String type, String seq) {
		
		MemberSpeakDTO dto1;
		BusinessSpeakDTO dto2;
		
		
		if (type.equals("1")) {
			
			dto1 = service.geteditSMContent(seq);
			model.addAttribute("dto", dto1);
			
		} else if (type.equals("2")) {
			
			dto2 = service.geteditSBContent(seq);
			model.addAttribute("dto", dto2);
			
		}
		
		model.addAttribute("type", type);
		
		return "board/speakedit";
	}

	
	//글 수정 - member
	@PostMapping("/editspeakm.do")
	public String editspeakM(MemberSpeakDTO dto, String seq) {
		
		service.editspeakM(dto);
		
		return "redirect:speakmdetail.do?seq="+seq;
	}
	
	
	//글 수정 - business
	@PostMapping("/editspeakb.do")
	public String editspeakB(BusinessSpeakDTO dto, String seq) {
		
		service.editspeakB(dto);
		
		return "redirect:speakbdetail.do?seq="+seq;
	}
	
	//댓글 등록
	@RequestMapping(value="/addsmcomment.do", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String addSMComment(@RequestParam("sm_seq") String sm_seq, @RequestParam("smc_content") String smc_content, Principal p) {
		
		//1. 댓글 등록
		MSCommentDTO dto = new MSCommentDTO();
		String id = p.toString();
		dto.setM_id(id);
		
		dto.setSm_seq(sm_seq);
		dto.setSmc_content(smc_content);
	
		service.addSMComment(dto);
		
		//2.방금 등록한 댓글 가져오기
		MSCommentDTO cdto = service.getLastSMComment(sm_seq);
		
		
		//3.댓글 갯수 가져오기
		int ccnt = service.getSpeckMCommentCnt(sm_seq);
		cdto.setBoardCnt(Integer.toString(ccnt));
		
		Gson gson = new Gson();
		
		String result = gson.toJson(cdto);
	
		return result;
	}
	
	
	//댓글 등록
	@RequestMapping(value="/addsbcomment.do", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String addSBComment(@RequestParam("sb_seq") String sb_seq, @RequestParam("sbc_content") String sbc_content, Principal p) {
		
		//1. 댓글 등록
		BSCommentDTO dto = new BSCommentDTO();
		String id = p.toString();
		dto.setB_id(id);
		
		dto.setSb_seq(sb_seq);
		dto.setSbc_content(sbc_content);
	
		service.addSBComment(dto);
		
		//2.방금 등록한 댓글 가져오기
		BSCommentDTO cdto = service.getLastSBComment(sb_seq);
		
		//3.댓글 갯수 가져오기
		int ccnt = service.getSpeckBCommentCnt(sb_seq);
		cdto.setBoardCnt(Integer.toString(ccnt));
		
		Gson gson = new Gson();
		
		String result = gson.toJson(cdto);
	
		return result;
	}
	
	//검색
	@GetMapping("/searchmlist.do")
	public String searchM(Model model, String word) {
		
		List<MemberSpeakDTO> list = service.searchMResult(word);
		int count = service.getSearchMBoardCnt(word);
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "board/speakmlist";
		
	}	
	
	@GetMapping("/searchblist.do")
	public String searchB(Model model, String word) {
		
		List<BusinessSpeakDTO> list = service.searchBResult(word);
		int count = service.getSearchBBoardCnt(word);
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "board/speakblist";
		
	}	
	
	
	

		

}
