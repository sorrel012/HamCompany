package com.ham.member;

import java.util.List;

import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;


public interface PortfolioService {
	
	List<PortfolioDTO> pflist();
	
	PortfolioDTO getpf(String p_seq);
	
	String getpfcnt();
	
	String getpfcnt2(String p_service);
	
	List<PGalleryDTO> pfpiclist(String p_seq);

	List<PortfolioDTO> pflist(String p_service);

}
