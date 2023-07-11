package com.ham.shop;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.ham.domain.BlacklistDTO;
import com.ham.domain.EReviewDTO;
import com.ham.domain.FieldDTO;
import com.ham.domain.JobApliDTO;
import com.ham.domain.PayDTO;
import com.ham.mapper.ShopMapper;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopMapper mapper;

	@Override
	public List<JobApliDTO> shopList(String f_seq, String start, String end) {
		
		return mapper.shopList(f_seq, start, end);
	}

	@Override
	public JobApliDTO shopView(String seq) {
		
		return mapper.shopView(seq);
	}

	@Override
	public List<String> elist(String seq) {

		return mapper.elist(seq);
	}

	@Override
	public List<String> clist(String seq) {
		
		return mapper.clist(seq);
	}

	@Override
	public List<JobApliDTO> similarList(String seq) {
		
		return mapper.similarList(seq);
	}
	
	@Override
	public List<JobApliDTO> jaRate() {
		
		return mapper.jaRate();
	}
	
	
	@Override
	public List<EReviewDTO> reviewList(String seq) {
		
		return mapper.reviewList(seq);
	}
	
	
	@Override
	public void addPay(PayDTO dto) {
		
		mapper.addPay(dto);
	}

	@Override
	public List<FieldDTO> fieldList() {

		return mapper.fieldList();
	}
	
	public int addJjim(JobApliDTO dto) {
	
		return mapper.addJjim(dto);
	}
	
	public void delJjim(JobApliDTO dto) {
		
		mapper.delJjim(dto);
	}
	
	public int hasJjim(JobApliDTO dto) {
		
		return mapper.hasJjim(dto);
	}

	@Override
	public int listSize(String f_seq) {
		
		return mapper.listSize(f_seq);
	}

	@Override
	public void addBlacklist(BlacklistDTO dto) {
		
		mapper.addBlacklist(dto);
	}


}
