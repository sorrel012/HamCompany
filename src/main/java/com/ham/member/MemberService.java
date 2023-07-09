package com.ham.member;

import java.util.List;

import com.ham.domain.BestDTO;
import com.ham.domain.BusinessDTO;
import com.ham.domain.MemberDTO;

public interface MemberService {

	int memberSignup(MemberDTO dto);

	int businessSignup(BusinessDTO dto);

	int checkAdmin(String id);

	int checkMember(String id);

	int checkBusiness(String id);

	List<BestDTO> getBest();

}
