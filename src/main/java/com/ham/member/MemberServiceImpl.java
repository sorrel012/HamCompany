package com.ham.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.BestDTO;
import com.ham.domain.BusinessDTO;
import com.ham.domain.MemberDTO;
import com.ham.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public int memberSignup(MemberDTO dto) {
		return mapper.memberSignup(dto);
	}
	
	@Override
	public int businessSignup(BusinessDTO dto) {
		return mapper.businessSignup(dto);
	}
	
	
	@Override
	public int checkAdmin(String id) {
		return mapper.checkAdmin(id);
	}
	
	@Override
	public int checkBusiness(String id) {
		// TODO Auto-generated method stub
		return mapper.checkBusiness(id);
	}
	
	@Override
	public int checkMember(String id) {
		// TODO Auto-generated method stub
		return mapper.checkMember(id);
	}
	
	@Override
	public List<BestDTO> getBest() {
		return mapper.getBest();
	}
	
	
	
}
