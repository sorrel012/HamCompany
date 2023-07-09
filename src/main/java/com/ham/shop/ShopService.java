package com.ham.shop;

import java.util.List;
import java.util.Map;

import com.ham.domain.EReviewDTO;
import com.ham.domain.FieldDTO;
import com.ham.domain.JobApliDTO;
import com.ham.domain.PayDTO;

public interface ShopService {

	List<JobApliDTO> shopList(String f_seq, String start, String end);
	
	JobApliDTO shopView(String seq);
	
	List<String> elist(String seq);
	
	List<String> clist(String seq);
	
	List<JobApliDTO> similarList(String seq);

	List<JobApliDTO> jaRate();

	List<EReviewDTO> reviewList(String seq);

	void addPay(PayDTO dto);
	
	List<FieldDTO> fieldList();

	int addJjim(JobApliDTO dto);

	void delJjim(JobApliDTO dto);

	int hasJjim(JobApliDTO tempDto);

	int listSize(String f_seq);
	
}
