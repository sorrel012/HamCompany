package com.ham.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.MyMemberDTO;
import com.ham.mapper.MyUserProfileMapper;

@Service
public class MyUserProfileServiceImpl implements MyUserProfileService {
	
	@Autowired
	private MyUserProfileMapper mapper;
	
	@Override
	public MyMemberDTO edit(String id) {
		
		MyMemberDTO dto = mapper.edit(id);
		
		return dto;
	}
	
	@Override
	public int update(MyMemberDTO dto) {
		
		return mapper.update(dto);
	}
	
	@Override
	public int updatepw(MyMemberDTO dto) {
		
		return mapper.updatepw(dto);
	}

}
