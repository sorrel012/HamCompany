package com.ham.mapper;

import java.util.List;

import com.ham.domain.MyHReviewDTO;
import com.ham.domain.MyMemberDTO;
import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;
import com.ham.domain.MySpeakMDTO;

public interface MyUserMapper {
	
	//사용자 정보 수정
	MyMemberDTO editprofile(String id);

	int updateprofile(MyMemberDTO dto);

	int updatepw(MyMemberDTO dto);

	
	//포트폴리오
	void addportfolio(MyPortfolioDTO dto);

	void addGallery(MyPGalleryDTO gdto);

	List<MyPortfolioDTO> portfoliolist(String id);

	List<MyPortfolioDTO> editportfolio(String p_seq);

	void updateportfolio(MyPortfolioDTO dto);

	void updateGallery(MyPGalleryDTO gdto);

	List<MyPGalleryDTO> getgallery(String p_seq);

	void delFile(String name);

	void deleteportfolio(String p_seq);

	void deleteGallery(String p_seq);
	
	List<MyHReviewDTO> llist(String id);

	String lcomment(String hr_seq);

	List<MySpeakMDTO> slist(String id);

	String scomment(String sm_seq);

}
