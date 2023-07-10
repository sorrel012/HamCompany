package com.ham.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
	
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	@GetMapping("/speakmlist.do")
	   public String speakmList(Model model, @RequestParam(value = "sort", defaultValue="0") String sort, @RequestParam(defaultValue = "1") int page) {
	      
	      
	      int itemsPerPage = 5; // 한 페이지에 보여줄 아이템 수

	      int start = (page - 1) * itemsPerPage + 1;
	      int end = page * itemsPerPage;
	      
	      Map<String, String> map = new HashMap<String, String>();
	      
	       map.put("start", start + "");
	       map.put("end", end + "");
	       
	       
	      //사용자 말해볼텨 리스트 불러오기
	      if (sort.equals("0")) {
	         
	         List<MemberSpeakDTO> list = service.getSpeakList(map);
	         int size = list.size();
	         int count = service.getSpeakBoardCnt("1");
	         
	         model.addAttribute("list", list);
	         model.addAttribute("count", count);
	         model.addAttribute("sorted", sort);
	         model.addAttribute("page", page);
	          model.addAttribute("size", size);
	          
	         
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
		@PreAuthorize("hasRole('ROLE_BUSINESS')")
	   @GetMapping("/speakblist.do")
	   public String speakbList(Model model, @RequestParam(value = "sort", defaultValue="0") String sort, @RequestParam(defaultValue = "1") int page) {
	   
	      int itemsPerPage = 5; // 한 페이지에 보여줄 아이템 수

	      int start = (page - 1) * itemsPerPage + 1;
	      int end = page * itemsPerPage;
	      
	      Map<String, String> map = new HashMap<String, String>();
	      
	       map.put("start", start + "");
	       map.put("end", end + "");
	       
	      //사업자 말해볼텨 리스트 불러오기
	      if (sort.equals("0")) {
	         
	         List<BusinessSpeakDTO> list = service.getSpeakMList(map);
	         int size = list.size();
	         int count = service.getSpeakBoardCnt("2");
	         
	         model.addAttribute("list", list);
	         model.addAttribute("count", count);
	         model.addAttribute("sorted", sort);
	         model.addAttribute("page", page);
	          model.addAttribute("size", size);
	         
	      } else {
	         
	         List<BusinessSpeakDTO> list = service.getSortedSpeakMList(sort);
	         int count = service.getSpeakBoardCnt("2");
	         
	         model.addAttribute("list", list);
	         model.addAttribute("count", count);
	         model.addAttribute("sorted", sort);
	         
	      }
	      
	      return "board/speakblist";
	      
	   }
	
	
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	@GetMapping("/speakmdetail.do")
	public String speakmDetail(Model model, String seq, Principal p) {

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
		
		//현재 로그인한 id
		String nowID = p.getName();
		
		model.addAttribute("dto", dto);
		model.addAttribute("clist", clist);
		model.addAttribute("ccnt", ccnt);
		model.addAttribute("seq", seq);
		model.addAttribute("nowID", nowID);
		
		return "board/speakmdetail";
	}
	
	
	@PreAuthorize("hasRole('ROLE_BUSINESS')")
	@GetMapping("/speakbdetail.do")
	public String speakbDetail(Model model, String seq, Principal p) {

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
		
		//현재 로그인한 회원
		String nowID = p.getName();
		
		model.addAttribute("dto", dto);
		model.addAttribute("clist", clist);
		model.addAttribute("ccnt", ccnt);
		model.addAttribute("seq", seq);
		model.addAttribute("nowID", nowID);
		
		return "board/speakbdetail";
	}
	
	
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	//글 삭제
	@GetMapping("/deleteSMComment.do") 
	public String deleteSMC(String seq) {
		
		service.deleteSMContentCmt(seq);
		service.deleteSMComment(seq);
		
		return "redirect:speakmlist.do";
	}
	
	@PreAuthorize("hasRole('ROLE_BUSINESS')")
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
	
	
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	@PostMapping("/addspeakM.do")
	public String addspeakM(MemberSpeakDTO dto, Principal p) {
		
		String id = p.getName();
		dto.setM_id(id);
		service.addSpeakM(dto);
		
		return "redirect:speakmlist.do";
	}
	
	@PreAuthorize("hasRole('ROLE_BUSINESS')")
	@PostMapping("/addspeakB.do")
	public String addspeakB(BusinessSpeakDTO dto, Principal p) {
		
		String id = p.getName();
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

	@PreAuthorize("hasRole('ROLE_MEMBER')")
	//글 수정 - member
	@PostMapping("/editspeakm.do")
	public String editspeakM(MemberSpeakDTO dto, String seq) {
		
		service.editspeakM(dto);
		
		return "redirect:speakmdetail.do?seq="+seq;
	}
	
	@PreAuthorize("hasRole('ROLE_BUSINESS')")
	//글 수정 - business
	@PostMapping("/editspeakb.do")
	public String editspeakB(BusinessSpeakDTO dto, String seq) {
		
		service.editspeakB(dto);
		
		return "redirect:speakbdetail.do?seq="+seq;
	}
	
	//댓글 등록
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	@RequestMapping(value="/addsmcomment.do", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String addSMComment(@RequestParam("sm_seq") String sm_seq, @RequestParam("smc_content") String smc_content, Principal p) {
		
		//1. 댓글 등록
		MSCommentDTO dto = new MSCommentDTO();
		String id = p.getName();
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
	@PreAuthorize("hasRole('ROLE_BUSINESS')")
	@RequestMapping(value="/addsbcomment.do", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String addSBComment(@RequestParam("sb_seq") String sb_seq, @RequestParam("sbc_content") String sbc_content, Principal p) {
		
		//1. 댓글 등록
		BSCommentDTO dto = new BSCommentDTO();
		String id = p.getName();
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
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	@GetMapping("/searchmlist.do")
	public String searchM(Model model, String word) {
		
		List<MemberSpeakDTO> list = service.searchMResult(word);
		int count = service.getSearchMBoardCnt(word);
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "board/speakmlist";
		
	}	
	
	@PreAuthorize("hasRole('ROLE_BUSINESS')")
	@GetMapping("/searchblist.do")
	public String searchB(Model model, String word) {
		
		List<BusinessSpeakDTO> list = service.searchBResult(word);
		int count = service.getSearchBBoardCnt(word);
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "board/speakblist";
		
	}	
	
	
	

		

}
