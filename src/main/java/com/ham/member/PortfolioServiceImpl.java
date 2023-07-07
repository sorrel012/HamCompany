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
	public List<PortfolioDTO> pflist() {
		
		List<PortfolioDTO> list = mapper.pflist();
		
		return list;
	}

	@Override
	public List<PortfolioDTO> pflist(String p_service) {
		
		List<PortfolioDTO> list = mapper.pflist2(p_service);
		
		return list;
	}
	
	@Override
	public PortfolioDTO getpf(String p_seq) {
		
		return mapper.getpf(p_seq);
	}
	
	@Override
	public String getpfcnt() {

		return mapper.getpfcnt();
	}
	
	@Override
	public String getpfcnt2(String p_service) {
		
		return mapper.getpfcnt2(p_service);
	}
	
	@Override
	public List<PGalleryDTO> pfpiclist(String p_seq) {

		List<PGalleryDTO> pfpiclist = mapper.pfpiclist(p_seq);
		
		return pfpiclist;
	}

}
