package com.ham.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;
import com.ham.mapper.MyPortfolioMapper;

@Service
public class MyPortfolioServiceImpl implements MyPortfolioService {
	
	@Autowired
	private MyPortfolioMapper mapper;

	@Override
	public void add(MyPortfolioDTO dto, List<String> files) {
		
		mapper.add(dto);
		
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
	public List<MyPortfolioDTO> list(String id) {
		
		List<MyPortfolioDTO> list = mapper.list(id);
		
		return list;
	}
	
	@Override
	public List<MyPortfolioDTO> edit(String p_seq) {

		List<MyPortfolioDTO> list = mapper.edit(p_seq);
		
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
	public void update(MyPortfolioDTO dto, List<String> files) {

		mapper.update(dto);
		
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
	public void delete(String p_seq) {
		
		mapper.deleteGallery(p_seq);
		mapper.delete(p_seq);
		
	}
	
}
