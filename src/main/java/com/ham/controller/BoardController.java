package com.ham.controller;

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
import com.ham.board.BoardService;
import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.HRCommentDTO;
import com.ham.domain.HReviewAddDTO;
import com.ham.domain.HReviewDTO;
import com.ham.domain.MemberSpeakDTO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	//listen - 함 들어볼텨
	@GetMapping("/listenlist.do")
	public String listenSortedList(Model model, @RequestParam(value = "sort", defaultValue="0") String sort) {
		
		
		if (sort.equals("0")) {
			List<HReviewDTO> list = service.getHReviewList();
			int count = service.getBoardCnt();
			
			
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("sorted", sort);
			
			return "board/listenlist";
		} else {
			List<HReviewDTO> list = service.getSortedHReviewList(sort);
			int count = service.getBoardCnt();
			
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("sorted", sort);
			
			return "board/listenlist";
		}
		
	}
	
	
	@GetMapping("/listendetail.do")
	public String listenDetail(Model model, String seq) {
		
		//seq에 해당하는 글 내용 불러오기
		HReviewDTO dto = service.getListenDetail(seq);
		
		//글 조회수 업데이트
		service.updateViewCnt(seq);
		
		String vcnt = service.getViewCnt(seq);
		dto.setHr_hit(vcnt);
		
		//글에 해당하는 댓글 가져오기
		List<HRCommentDTO> clist = service.getDetailComment(seq);
		
		//댓글 갯수 가져오기
		int ccnt = service.getCommentCnt(seq);
		
				
		model.addAttribute("dto", dto);
		model.addAttribute("clist", clist);
		model.addAttribute("ccnt", ccnt);
		
		return "board/listendetail";
	}
	
	@GetMapping("/deleteReview.do") 
	public String deleteReview(String seq) {
		
		service.deleteContentCmt(seq);
		service.deleteComment(seq);
		
		return "redirect:listenlist.do";
	}
	
	
	@GetMapping("/listenadd.do")
	public String listenAdd(Model model) {
		
		List<HReviewAddDTO> flist = service.getField();
		List<HReviewAddDTO> fdlist = service.getFDetail();
		
		
		model.addAttribute("flist", flist);
		model.addAttribute("fdlist", fdlist);
		
		return "board/listenadd";
	}
	
	@PostMapping("/addhreview.do")
	public String addHReview(HReviewAddDTO dto) {
		
		service.addHReview(dto);

		return "redirect:listenlist.do";
	}
	
	@GetMapping("/listenedit.do")
	public String listenEdit(Model model, String seq) {
		
		HReviewDTO dto = service.getListenDetail(seq);
		
		List<HReviewAddDTO> flist = service.getField();
		List<HReviewAddDTO> fdlist = service.getFDetail();
		
		model.addAttribute("dto", dto);
		model.addAttribute("flist", flist);
		model.addAttribute("fdlist", fdlist);
		
		return "board/listenedit";
	}
	
	@PostMapping("/editreview.do")
	public String editReview(HReviewAddDTO dto, String seq) {
		
		service.editReview(dto);
		
		return "redirect:listendetail.do?seq="+seq;
		
	}
	
	@RequestMapping(value="/addcomment.do", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String addComment(@RequestParam("hr_seq") String hr_seq, @RequestParam("hrc_content") String hrc_content) {
		
		//1. 댓글 등록
		HRCommentDTO dto = new HRCommentDTO();
		
		dto.setHr_seq(hr_seq);
		dto.setHrc_content(hrc_content);
	
		service.addComment(dto);
		
		//2.방금 등록한 댓글 가져오기
		HRCommentDTO cdto = service.getLastComment(hr_seq);
		
		//3.댓글 갯수 가져오기
		int ccnt = service.getCommentCnt(hr_seq);
		System.out.println(ccnt);
		cdto.setBoardCnt(Integer.toString(ccnt));
		
		Gson gson = new Gson();
		
		String result = gson.toJson(cdto);
	
		return result;
	}
	
	//검색 
	@GetMapping("/searchlist.do")
	public String search(Model model, String word) {
		
		List<HReviewDTO> list = service.searchResult(word);
		int count = service.getSearchBoardCnt(word);
		
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "board/listenlist";
		
	}
	

	
	
	

	
	//speak - 함 말해볼텨
	/*
	 type : 1 => 사용자 말해볼텨
	 type : 2 => 사업자 말해볼텨
	 */
	@GetMapping("/speaklist.do")
	public String speakList(Model model, @RequestParam(value="type" , defaultValue="0") String type) {
		
		System.out.println(type);
		
		if (type.equals("1")) {
			
			//사용자 말해볼텨 리스트 불러오기
			
			List<MemberSpeakDTO> list = service.getSpeakList();
			//int count = service.getBoardCnt();
			
			
			model.addAttribute("list", list);
			//model.addAttribute("count", count);
			
			return "board/speaklist";
			
			
		} else if (type.equals("2")) {
	
			//사업자 말해볼텨 리스트 불러오기
			List<BusinessSpeakDTO> list = service.getSpeakMList();
		}
		
		return "board/speaklist";
	}
	
	
	/*
	@GetMapping("/listenlist.do")
	public String listenSortedList(Model model, @RequestParam(value = "sort", defaultValue="0") String sort) {
		
		
		if (sort.equals("0")) {
			List<HReviewDTO> list = service.getHReviewList();
			int count = service.getBoardCnt();
			
			
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("sorted", sort);
			
			return "board/listenlist";
		} else {
			List<HReviewDTO> list = service.getSortedHReviewList(sort);
			int count = service.getBoardCnt();
			
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("sorted", sort);
			
			return "board/listenlist";
		}
		
	}
	*/
	
	
	
	@GetMapping("/speakdetail.do")
	public String speakDetail() {
		
		return "board/speakdetail";
	}
	
	@GetMapping("/speakadd.do")
	public String speakAdd() {
		
		return "board/speakadd";
	}
	
	

}
