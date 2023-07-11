package com.ham.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.ham.domain.BlacklistDTO;
import com.ham.domain.EReviewDTO;
import com.ham.domain.FieldDTO;
import com.ham.domain.JobApliDTO;
import com.ham.domain.PayDTO;

public interface ShopMapper {

	List<JobApliDTO> shopList(@Param("f_seq") String f_seq, @Param("start") String start, @Param("end") String end);

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

	int hasJjim(JobApliDTO dto);

	int listSize(String f_seq);

	void addBlacklist(BlacklistDTO dto);

	
	
}
