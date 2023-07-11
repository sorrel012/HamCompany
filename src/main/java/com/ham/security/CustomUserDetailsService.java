package com.ham.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.ham.domain.AdminDTO;
import com.ham.domain.BusinessDTO;
import com.ham.domain.CustomUser;
import com.ham.domain.MemberDTO;
import com.ham.mapper.MemberMapper;

public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private PasswordEncoder encoder = new BCryptPasswordEncoder();
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		int result1 = mapper.checkMember(username);
		int result2 = mapper.checkBusiness(username);
		int result3 = mapper.checkAdmin(username);
		
		if (result1 == 1) {
			
			MemberDTO dto = mapper.readMember(username);
			dto.setM_pw(encoder.encode(dto.getM_pw()));
			return dto != null ? new CustomUser(dto) : null;
			
		} else if (result2 == 1) {
			
			BusinessDTO dto = mapper.readBusiness(username);
			dto.setB_pw(encoder.encode(dto.getB_pw()));
			return dto != null ? new CustomUser(dto) : null;
			
		} else if (result3 == 1) {
			
			AdminDTO dto = mapper.readAdmin(username);
			dto.setA_pw(encoder.encode(dto.getA_pw()));
			return dto != null ? new CustomUser(dto) : null;
			
		}
		
		return null;
		
	}
	
}
