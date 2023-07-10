package com.ham.member;

import java.util.List;

import com.ham.domain.MyFieldDTO;
import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;


public interface PortfolioService {
	
	List<PortfolioDTO> pflist(int displayPost, int postNum);
	
	PortfolioDTO getpf(String p_seq);
	
	String getpfcnt();
	
	String getpfcnt2(String p_service);
	
	List<PGalleryDTO> pfpiclist(String p_seq);

	List<PortfolioDTO> pflist(String p_service);

	List<PortfolioDTO> pflist2(int displayPost, int postNum, String p_service);
	
	List<MyFieldDTO> getpfField();	
	
	Integer getpicCnt(String p_seq);

}
