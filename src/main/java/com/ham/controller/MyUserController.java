package com.ham.controller;

import java.io.File;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ham.domain.MyApplicationDTO;
import com.ham.domain.MyCsCenterDTO;
import com.ham.domain.MyFDetailDTO;
import com.ham.domain.MyFieldDTO;
import com.ham.domain.MyHReviewDTO;
import com.ham.domain.MyJACareerDTO;
import com.ham.domain.MyJAEduDTO;
import com.ham.domain.MyJALicenseDTO;
import com.ham.domain.MyJobAPLDTO;
import com.ham.domain.MyMemberDTO;
import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;
import com.ham.domain.MySpeakMDTO;
import com.ham.member.MyUserService;

@Controller
@PreAuthorize("hasRole('ROLE_MEMBER')")
public class MyUserController {
	
	@Autowired
	private MyUserService service;
	
	@GetMapping("/user_profile.do")
	public String userProfile(Model model, Principal p) {
		
		String id = p.getName();
		
		MyMemberDTO dto = service.editProfile(id);
		
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
		
		int result = service.updateProfile(dto);

		if (result > 0) {
			return "redirect:/user_profile.do";
		} else {
			// 실패 처리 로직 추가 (예: 에러 페이지로 이동)
			return "redirect:/error";
		}
	}

	//비밀번호 수정
	@PostMapping("/user_profile_updatepw.do")
	public String updatePw(String new_pw, Principal p) {
		
		String id = p.getName();
		
		MyMemberDTO dto = new MyMemberDTO();
		
		dto.setM_pw(new_pw);
		dto.setM_id(id);
		
		int result = service.updatepwProfile(dto);

		if (result > 0) {
			return "redirect:/user_profile.do";
		} else {
			// 실패 처리 로직 추가 (예: 에러 페이지로 이동)
			return "redirect:/error";
		}
	}

	@GetMapping("/myportfolio.do")
	public String myPortfolio(Model model, Principal p) {
		
		String id = p.getName();
				
		List<MyPortfolioDTO> list = service.portfoliolist(id);
		
		model.addAttribute("list", list);

		return "member/myportfolio";
	}
	
	@GetMapping("/addportfolio.do")
	public String addPortfolio() {

		return "member/addportfolio";
	}
	
	@PostMapping("/storeportfolio.do")
	public String storePortfolio(Model model, MyPortfolioDTO dto, MultipartFile[] attach, HttpServletRequest req, Principal p) {
		
		String id = p.getName();
		
		dto.setM_id(id);
		
		List<String> files = new ArrayList<String>();
		
		for (MultipartFile file : attach) {
			
			try {

				UUID uuid = UUID.randomUUID();

				String filename = uuid + "_" + file.getOriginalFilename();
				
				files.add(filename);

				file.transferTo(new File(req.getRealPath("/resources/img/mypage") + "\\" + filename));
				//C:\OneDrive\project\함해볼텨\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ham\resources\img\portfolio

			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		service.addportfolio(dto, files);

		return "redirect:/myportfolio.do";
	}
	
	@GetMapping("/editportfolio.do")
	public String editPortfolio(Model model, String p_seq) {

		List<MyPortfolioDTO> list = service.editportfolio(p_seq);
		
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
			
			try {
				if (!Arrays.asList(orgFiles).contains(name)) {
					//파일을 삭제했으면 DB에서 삭제
					service.delFile(name);
					
			    }
			} catch (NullPointerException e) {
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

					file.transferTo(new File(req.getRealPath("/resources/img/mypage") + "\\" + filename));
					//C:\OneDrive\project\함해볼텨\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ham\resources\img\portfolio

				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
			
		}
				
		service.updateportfolio(dto, files);
		
		return "redirect:/myportfolio.do";
	}
	
	@GetMapping("/delportfolio.do")
	public String delPortfolio(String p_seq) {
		
		service.deleteportfolio(p_seq);
		
		return "redirect:/myportfolio.do";
	}
	
	@GetMapping("/mylisten_list.do")
	public String myListenList(Model model, @RequestParam(defaultValue = "1") int page, Principal p) {
		
		int itemsPerPage = 10; // 한 페이지에 보여줄 아이템 수

	    int start = (page - 1) * itemsPerPage + 1;
	    int end = page * itemsPerPage;
	    
	    Map<String, String> map = new HashMap<String, String>();
	    
	    String id = p.getName();
	    
	    map.put("id", id);
	    map.put("start", start + "");
	    map.put("end", end + "");
	    
		List<MyHReviewDTO> list = service.llist(map);
		
		for(MyHReviewDTO dto : list) {
			
			dto.setHr_comment(service.lcomment(dto.getHr_seq()));
			
		}

		String size = service.lsize(id);
		
		model.addAttribute("list", list);
	    model.addAttribute("page", page);
	    model.addAttribute("size", size);

		return "member/mylisten_list";
	}

	@GetMapping("/myspeak_list.do")
	public String mySpeakList(Model model, @RequestParam(defaultValue = "1") int page, Principal p) {
		
		int itemsPerPage = 10; // 한 페이지에 보여줄 아이템 수

	    int start = (page - 1) * itemsPerPage + 1;
	    int end = page * itemsPerPage;
	    
	    Map<String, String> map = new HashMap<String, String>();
	    
	    String id = p.getName();
	    
	    map.put("id", id);
	    map.put("start", start + "");
	    map.put("end", end + "");
	    
		List<MySpeakMDTO> list = service.slist(map);
		
		for(MySpeakMDTO dto : list) {
			
			dto.setSm_comment(service.scomment(dto.getSm_seq()));
			
		}

		String size = service.ssize(id);
		
		model.addAttribute("list", list);
	    model.addAttribute("page", page);
	    model.addAttribute("size", size);
		

		return "member/myspeak_list";
	}
	
	@GetMapping("/jobapply.do")
	public String jobApply(Model model) {

		List<MyFieldDTO> fdto = service.flist();
		List<MyFDetailDTO> fddto = service.fdlist();

		model.addAttribute("fdto", fdto);
		model.addAttribute("fddto", fddto);
		
		return "member/jobapply";
	}
	
	@PostMapping("/jobapply_ins.do")
	public String jobApplyInsert(MyJobAPLDTO jobdto, MyJAEduDTO edudto, MyJACareerDTO careerdto, MyJALicenseDTO licdto, MultipartFile attach, HttpServletRequest req, Principal p) {

		String id = p.getName();
		jobdto.setM_id(id);
				
		
		//라디오박스 동적으로 추가하는 값을 받아와서 set
		Map<String, String[]> parameterMap = req.getParameterMap();
	    List<String> jae_graduationList = new ArrayList<>();

	    for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
	        String key = entry.getKey();
	        String[] values = entry.getValue();
	        
	        if (key.startsWith("jae_graduation")) {
	            for (String value : values) {
	                jae_graduationList.add(value);
	            }
	        }
	    }

	    edudto.setJae_graduation_list(jae_graduationList);
		
		try {

			UUID uuid = UUID.randomUUID();

			String filename = uuid + "_" + attach.getOriginalFilename();

			attach.transferTo(new File(req.getRealPath("/resources/img/mypage") + "\\" + filename));
			jobdto.setJa_pic(filename);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		int result = service.addJAP(jobdto, edudto, careerdto, licdto);

		if (result > 0) {
			return "member/support_detail";
		} else {
			// 실패 처리 로직 추가 (예: 에러 페이지로 이동)
			return "redirect:/error";
		}
		
	}

	@GetMapping("/support_detail.do")
	public String supportDetail(Model model, Principal p) {
		
		
		String id = p.getName();
		
		//로그인한 사용자의 모든 지원 내역 받아오기
		List<MyApplicationDTO> list = service.getApplication(id);
		
		for(MyApplicationDTO dto : list) {
			dto.setJa_begindate(dto.getJa_begindate().split(" ")[0]);
			dto.setJa_enddate(dto.getJa_enddate().split(" ")[0]);
			dto.setP_regdate(dto.getP_regdate().split(" ")[0]);
		}
		
		
		model.addAttribute("list", list);

		return "member/support_detail";
	}
	
	@PostMapping("support_accept.do")
	public String supportAccept(String o_seq) {
		
		service.updateAccept(o_seq);

		return "redirect:/support_detail.do";
	}
	
	@PostMapping("support_deny.do")
	public String supportResult(String o_seq) {
		
		service.updateDeny(o_seq);
		
		return "redirect:/support_detail.do";
	}
	
	
	//문의 내역
	@GetMapping("/mycs_list.do")
	public String csList(Model model, Principal p) {
		
		String id = p.getName();
		
		List<MyCsCenterDTO> list = service.getCsList(id);

		model.addAttribute("list", list);

		return "member/mycs_list";
	}
	
}
