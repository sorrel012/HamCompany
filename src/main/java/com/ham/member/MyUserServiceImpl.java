package com.ham.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
import com.ham.mapper.MyUserMapper;

@Service
public class MyUserServiceImpl implements MyUserService {
	
	@Autowired
	private MyUserMapper mapper;

	//사용자 정보 수정
	@Override
	public MyMemberDTO editProfile(String id) {
		
		MyMemberDTO dto = mapper.editprofile(id);
		
		return dto;
	}
	
	@Override
	public int updateProfile(MyMemberDTO dto) {
		
		return mapper.updateprofile(dto);
	}
	
	@Override
	public int updatepwProfile(MyMemberDTO dto) {
		
		return mapper.updatepw(dto);
	}
	
	
	//포트폴리오
	@Override
	public void addportfolio(MyPortfolioDTO dto, List<String> files) {
		
		mapper.addportfolio(dto);
		
		for(int i=0; i<files.size(); i++) {
			
			if(files.get(i).equals("")) {
				continue;
			}
			
			MyPGalleryDTO gdto = new MyPGalleryDTO();
			gdto.setP_seq(dto.getP_seq());
			gdto.setPg_name(files.get(i));
			
			mapper.addGallery(gdto);
			
		}
		
	}
	
	@Override
	public List<MyPortfolioDTO> portfoliolist(String id) {
		
		List<MyPortfolioDTO> list = mapper.portfoliolist(id);
		
		return list;
	}
	
	@Override
	public List<MyPortfolioDTO> editportfolio(String p_seq) {

		List<MyPortfolioDTO> list = mapper.editportfolio(p_seq);
		
		return list;
	}
	
	@Override
	public List<MyPGalleryDTO> gallerylist(String p_seq) {

		List<MyPGalleryDTO> list = mapper.getgallery(p_seq);
		
		return list;
	}
	
	@Override
	public void delFile(String name) {
		
		mapper.delFile(name);
		
	}
	
	@Override
	public void updateportfolio(MyPortfolioDTO dto, List<String> files) {

		mapper.updateportfolio(dto);
		
		for(int i=0; i<files.size(); i++) {
			
			if(files.get(i).equals("")) {
				continue;
			}
			
			MyPGalleryDTO gdto = new MyPGalleryDTO();
			gdto.setP_seq(dto.getP_seq());
			gdto.setPg_name(files.get(i));
			
			mapper.updateGallery(gdto);
			
		}
		
	}
	
	@Override
	public void deleteportfolio(String p_seq) {
		
		mapper.deleteGallery(p_seq);
		mapper.deleteportfolio(p_seq);
		
	}
	
	
	//커뮤니티
	@Override
	public List<MyHReviewDTO> llist(Map<String, String> map) {
		
		List<MyHReviewDTO> list = mapper.llist(map);
		
		return list;
	}
	
	@Override
	public String lcomment(String hr_seq) {
		
		String comment = mapper.lcomment(hr_seq);
		
		return comment;
	}
	
	@Override
	public String lsize(String id) {
		
		String size = mapper.lsize(id);
		
		return size;
	}
	
	@Override
	public List<MySpeakMDTO> slist(Map<String, String> map) {
		
		List<MySpeakMDTO> list = mapper.slist(map);
		
		return list;
	}
	
	@Override
	public String scomment(String sm_seq) {

		String comment = mapper.scomment(sm_seq);
		
		return comment;
	}
	
	@Override
	public String ssize(String id) {

		String size = mapper.ssize(id);
		
		return size;
	}
	
	@Override
	public List<MyFieldDTO> flist() {
		
		List<MyFieldDTO> list = mapper.flist();
		
		return list;
	}
	
	@Override
	public List<MyFDetailDTO> fdlist() {
		
		List<MyFDetailDTO> list = mapper.fdlist();
		
		return list;
	}
	
	@Transactional
	@Override
	public int addJAP(MyJobAPLDTO jobdto, MyJAEduDTO edudto, MyJACareerDTO careerdto, MyJALicenseDTO licdto) {
		
		int job = mapper.addjob(jobdto);
		String ja_seq = jobdto.getJa_seq();
		
		int edu = 0;
		if(edudto.getJae_content_list() != null) {
			int len = edudto.getJae_content_list().size();
			
			for(int i=0; i<len; i++) {
				
				MyJAEduDTO tmpdto = new MyJAEduDTO();
				
				tmpdto.setJa_seq(ja_seq);
				tmpdto.setJae_content(edudto.getJae_content_list().get(i));
				tmpdto.setJae_graduation(edudto.getJae_graduation_list().get(i));
				
				edu = mapper.addedu(tmpdto);
				
			}
		}
		
		int career = 0;
		if(careerdto.getJac_content_list() != null) {
			int len = careerdto.getJac_content_list().size();
			
			for(int i=0; i<len; i++) {
				
				MyJACareerDTO tmpdto = new MyJACareerDTO();
				
				tmpdto.setJa_seq(ja_seq);
				tmpdto.setJac_content(careerdto.getJac_content_list().get(i));
				tmpdto.setJac_period(careerdto.getJac_period_list().get(i));
				
				career = mapper.addcareer(tmpdto);
				
			}
		}
		
		int lic = 0;
		if(licdto != null) {
			int len = licdto.getJal_content_list().size();
			
			for(int i=0; i<len; i++) {
				
				MyJALicenseDTO tmpdto = new MyJALicenseDTO();
				
				tmpdto.setJa_seq(ja_seq);
				tmpdto.setJal_content(licdto.getJal_content_list().get(i));
				tmpdto.setJal_issdate(licdto.getJal_issdate_list().get(i));
				
				lic = mapper.addlic(tmpdto);
				
			}
		}
		
		if(job == 1 & edu == 1 & career == 1 & lic== 1) {
			return 1;
		}
		
		return 0;
	}
	
	@Override
	public List<MyApplicationDTO> getApplication(String id) {
		
		List<MyApplicationDTO> list = mapper.getapplication(id);
				
		return list;
	}
	
	
	//지원 내역
	@Override
	public void updateAccept(String o_seq) {
		mapper.updateaccept(o_seq);
	}
	
	@Override
	public void updateDeny(String o_seq) {
		mapper.updatedeny(o_seq);
	}
	
	
	//문의 내역
	@Override
	public List<MyCsCenterDTO> getCsList(String id) {
		
		List<MyCsCenterDTO> list = mapper.getcslist(id);
		
		return list;
	}
	
}