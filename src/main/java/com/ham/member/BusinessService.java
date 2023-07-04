package com.ham.member;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ham.domain.BusinessDTO;

public interface BusinessService {

	List<BusinessDTO> profile(String id);

	int profile1_edit(BusinessDTO dto);

	int profile2_edit(BusinessDTO dto);

	
	
}
