package com.ham.mapper;

import java.util.List;

import com.ham.domain.AdminDTO;
import com.ham.domain.BestDTO;
import com.ham.domain.BusinessDTO;
import com.ham.domain.MemberDTO;

public interface MemberMapper {

	int checkMember(String username);

	int checkBusiness(String username);

	int checkAdmin(String username);
	
	MemberDTO readMember(String username);

	BusinessDTO readBusiness(String username);

	AdminDTO readAdmin(String username);

	int memberSignup(MemberDTO dto);

	int businessSignup(BusinessDTO dto);

	List<BestDTO> getBest();
	
}
