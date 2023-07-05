package com.ham.admin;

import java.util.List;

import com.ham.domain.BlackListDTO;
import com.ham.domain.JopAplDTO;

public interface AdminService {

	List<JopAplDTO> profileList();

	List<BlackListDTO> blackList();

}
