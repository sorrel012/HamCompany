package com.ham.mapper;

import java.util.List;

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
	
	
	//커뮤니티
	List<MyHReviewDTO> llist(String id);

	String lcomment(String hr_seq);

	List<MySpeakMDTO> slist(String id);

	String scomment(String sm_seq);

	
	//구직 신청
	List<MyFieldDTO> flist();

	List<MyFDetailDTO> fdlist();
	
	int addjob(MyJobAPLDTO jobdto);

	int addedu(MyJAEduDTO tmpdto);

	int addcareer(MyJACareerDTO tmpdto);

	int addlic(MyJALicenseDTO tmpdto);

	List<MyApplicationDTO> getapplication(String id);

	
	//지원 내역
	void updateaccept(String o_seq);

	void updatedeny(String o_seq);

	List<MyCsCenterDTO> getcslist(String id);

}
