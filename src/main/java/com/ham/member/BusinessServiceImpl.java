package com.ham.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.BusinessDTO;
import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.FieldDTO;
import com.ham.domain.OrderDTO;
import com.ham.domain.ReviewDTO;
import com.ham.domain.WishDTO;
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

	@Override
	public BusinessDTO profile_detail(String id) {
		
		BusinessDTO dto = mapper.profile_detail(id);
		
		return dto;
	}

	@Override
	public List<FieldDTO> allField() {
		
		List<FieldDTO> list = mapper.allField();
		
		return list;
		
	}

	@Override
	public int profile_detail_edit(BusinessDTO dto) {
		
		int result = mapper.profile_detail_edit(dto);
		
		return result;
	}

	@Override
	public List<WishDTO> wish_list(String id) {
		
		List<WishDTO> list = mapper.wish_list(id);
		
		return list;
	}

	@Override
	public List<OrderDTO> order_list(Map<String, String> map) {
		
		List<OrderDTO> list = mapper.order_list(map);
		
		return list;
	}

	@Override
	public void wish_list_delete(String seq) {
		
		mapper.wish_list_delete(seq);
		
	}

	@Override
	public OrderDTO order_list_select(String seq) {
		
		OrderDTO dto = mapper.order_list_select(seq);
		
		return dto;
	}

	@Override
	public ReviewDTO review_list(String seq) {
		
		ReviewDTO dto = mapper.review_list(seq);
		
		return dto;
	}

	@Override
	public int order_list_review_add(ReviewDTO dto) {
		
		int result = mapper.order_list_review_add(dto);
		
		return result;
	}

	@Override
	public int order_list_review_edit(ReviewDTO dto) {
		
		int result = mapper.order_list_review_edit(dto);
		
		return result;
	}

	@Override
	public List<BusinessSpeakDTO> business_speak_list(Map<String, String> map) {
		
		List<BusinessSpeakDTO> list = mapper.business_speak_list(map);
		
		return list;
	}

	@Override
	public String order_list_size(String b_id) {
		
		String size = mapper.order_list_size(b_id);

		//System.out.println(size);
		
		return size;
	}

	

	
	
}
