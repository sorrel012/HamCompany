package com.ham.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.BusinessDTO;
import com.ham.mapper.BusinessMapper;

@Service
public class BusinessServiceImpl implements BusinessService {
	
	@Autowired
	private BusinessMapper mapper;
	
	@Override
	public List<BusinessDTO> profile(String id) {
		
		//System.out.println(id);
		
		List<BusinessDTO> list = mapper.profile(id);
		
		return list;
	}

	@Override
	public int profile1_edit(BusinessDTO dto) {
	    
		int result = mapper.updateprofile1(dto); // mapper를 통한 데이터 수정
		result = mapper.updateprofile2(dto);
	    
	    return result;
	}

	@Override
	public int profile2_edit(BusinessDTO dto) {
		
		int result = mapper.updateprofile3(dto);
		
		return result;
	}

	
	
}
