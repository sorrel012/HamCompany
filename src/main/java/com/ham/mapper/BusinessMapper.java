package com.ham.mapper;

import java.util.List;
import java.util.Map;

import com.ham.domain.BusinessDTO;
import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.FieldDTO;
import com.ham.domain.OrderDTO;
import com.ham.domain.ReviewDTO;
import com.ham.domain.WishDTO;

public interface BusinessMapper {

	List<BusinessDTO> profile(String id);

	int updateprofile1(BusinessDTO dto);

	int updateprofile2(BusinessDTO dto);

	int updateprofile3(BusinessDTO dto);

	BusinessDTO profile_detail(String id);

	List<FieldDTO> allField();

	int profile_detail_edit(BusinessDTO dto);

	List<WishDTO> wish_list(String id);

	List<OrderDTO> order_list(Map<String, String> map);

	void wish_list_delete(String seq);

	OrderDTO order_list_select(String seq);

	ReviewDTO review_list(String seq);

	int order_list_review_add(ReviewDTO dto);

	int order_list_review_edit(ReviewDTO dto);

	List<BusinessSpeakDTO> business_speak_list(Map<String, String> map);

	String order_list_size(String b_id);

}
