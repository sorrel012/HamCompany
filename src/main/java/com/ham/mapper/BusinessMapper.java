package com.ham.mapper;

import java.util.List;

import com.ham.domain.BusinessDTO;

public interface BusinessMapper {

	List<BusinessDTO> profile(String id);

	int updateprofile1(BusinessDTO dto);

	int updateprofile2(BusinessDTO dto);

	int updateprofile3(BusinessDTO dto);

}
