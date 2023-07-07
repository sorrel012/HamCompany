package com.ham.mapper;

import java.util.List;

import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;

public interface PortfolioMapper {
	
	List<PortfolioDTO> pflist();

	List<PortfolioDTO> pflist2(String p_service);

	PortfolioDTO getpf(String p_seq);
	
	String getpfcnt();
		
	String getpfcnt2(String p_service);
	
	List<PGalleryDTO> pfpiclist(String p_seq);


}
