package com.ham.mapper;

import com.ham.domain.MyMemberDTO;

public interface MyUserProfileMapper {

	MyMemberDTO edit(String id);

	int update(MyMemberDTO dto);

	int updatepw(MyMemberDTO dto);

}
