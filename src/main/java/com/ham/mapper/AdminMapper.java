package com.ham.mapper;

import java.util.List;

import com.ham.domain.BlackListDTO;
import com.ham.domain.JopAplDTO;

public interface AdminMapper {
	
	public List<JopAplDTO> userList();

	public List<BlackListDTO> blackList();

}
