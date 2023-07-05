package com.ham.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.BlackListDTO;
import com.ham.domain.JopAplDTO;
import com.ham.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper mapper;

	//인재프로필 리스트
	@Override
	public List<JopAplDTO> profileList() {
		
		List<JopAplDTO> list = mapper.userList();
		
		return list;
	}

	//불량회원 신고내역 리스트
	@Override
	public List<BlackListDTO> blackList() {
		
		List<BlackListDTO> list = mapper.blackList();
		
		return list;
	}

}
