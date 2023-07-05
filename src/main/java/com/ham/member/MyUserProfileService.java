package com.ham.member;

import com.ham.domain.MyMemberDTO;

public interface MyUserProfileService {

	MyMemberDTO edit(String id);

	int update(MyMemberDTO dto);

	int updatepw(MyMemberDTO dto);

}
