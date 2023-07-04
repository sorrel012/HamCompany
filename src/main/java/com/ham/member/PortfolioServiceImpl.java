package com.ham.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;
import com.ham.mapper.PortfolioMapper;

@Service
public class PortfolioServiceImpl implements PortfolioService {
	
	@Autowired
	private PortfolioMapper mapper;

	@Override
	public void add(PortfolioDTO dto, List<String> files) {
		
		mapper.add(dto);
		
		for(int i=0; i<files.size(); i++) {
			
			if(files.get(i).equals("")) {
				continue;
			}
			
			PGalleryDTO gdto = new PGalleryDTO();
			gdto.setP_seq(dto.getP_seq());
			gdto.setPg_name(files.get(i));
			
			mapper.addGallery(gdto);
			
		}
		
	}
	
	@Override
	public List<PortfolioDTO> list(String id) {
		
		List<PortfolioDTO> list = mapper.list(id);
		
		return list;
	}
	
	@Override
	public List<PortfolioDTO> edit(String p_seq) {

		List<PortfolioDTO> list = mapper.edit(p_seq);
		
		return list;
	}
	
	@Override
	public void update(PortfolioDTO dto, List<String> files) {

		mapper.update(dto);
		
		for(int i=0; i<files.size(); i++) {
			
			if(files.get(i).equals("")) {
				continue;
			}
			
			PGalleryDTO gdto = new PGalleryDTO();
			gdto.setP_seq(dto.getP_seq());
			gdto.setPg_name(files.get(i));
			
			//mapper.updateGallery(gdto);
			
		}
		
	}
}
