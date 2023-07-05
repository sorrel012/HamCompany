package com.ham.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.MyHReviewDTO;
import com.ham.domain.MySpeakMDTO;
import com.ham.mapper.MyListMapper;

@Service
public class MyListServiceImpl implements MyListService {

	@Autowired
	private MyListMapper mapper;
	
	@Override
	public List<MyHReviewDTO> llist(String id) {
		
		List<MyHReviewDTO> list = mapper.llist(id);
		
		return list;
	}
	
	@Override
	public String lcomment(String hr_seq) {
		
		String comment = mapper.lcomment(hr_seq);
		
		return comment;
	}
	
	@Override
	public List<MySpeakMDTO> slist(String id) {
		
		List<MySpeakMDTO> list = mapper.slist(id);
		
		return list;
	}
	
	@Override
	public String scomment(String sm_seq) {

		String comment = mapper.scomment(sm_seq);
		
		return comment;
	}
	
}
