package com.ham.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.MyMemberDTO;
import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;
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
	
}
