package com.ham.member;

import java.util.List;

import com.ham.domain.MyMemberDTO;
import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;

public interface MyUserService {

	//사용자 정보 수정
	MyMemberDTO editProfile(String id);

	int updateProfile(MyMemberDTO dto);

	int updatepwProfile(MyMemberDTO dto);

	//포트폴리오
	void addportfolio(MyPortfolioDTO dto, List<String> files);

	List<MyPortfolioDTO> portfoliolist(String id);

	List<MyPortfolioDTO> editportfolio(String p_seq);

	void updateportfolio(MyPortfolioDTO dto, List<String> files);

	List<MyPGalleryDTO> gallerylist(String p_seq);

	void delFile(String name);

	void deleteportfolio(String p_seq);
	
}
