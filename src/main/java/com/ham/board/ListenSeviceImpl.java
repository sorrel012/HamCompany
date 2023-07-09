package com.ham.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.HRCommentDTO;
import com.ham.domain.HReviewAddDTO;
import com.ham.domain.HReviewDTO;
import com.ham.domain.MSCommentDTO;
import com.ham.domain.MemberSpeakDTO;
import com.ham.mapper.ListenMapper;


@Service
public class ListenSeviceImpl implements ListenService{
	
	@Autowired
	private ListenMapper mapper;

	//함 들어볼텨
	@Override
	public List<HReviewDTO> getHReviewList() {
		
		List<HReviewDTO> list = mapper.getHReviewList();
		
		return list;
	}

	@Override
	public int getBoardCnt() {
		
		int count = mapper.getBoardCount();
	
		
		return count;
	}

	@Override
	public HReviewDTO getListenDetail(String seq) {
		
		HReviewDTO dto = mapper.getListenDetail(seq);
		
		
		return dto;
	}

	@Override
	public List<HRCommentDTO> getDetailComment(String seq) {
		
		List<HRCommentDTO> list = mapper.getCommentList(seq);
		
		return list;
	}

	@Override
	public int getCommentCnt(String seq) {
		
		int count = mapper.getCommentCount(seq);
		
		return count;
	}

	@Override
	public int deleteComment(String seq) {
		
		int result = mapper.deleteComment(seq);
		
		return result;
	}

	@Override
	public List<HReviewAddDTO> getField() {
		
		List<HReviewAddDTO> list = mapper.getField();
		
		return list;
	}

	@Override
	public List<HReviewAddDTO> getFDetail() {
		
		List<HReviewAddDTO> list = mapper.getFdetail();
		
		
		return list;
	}

	@Override
	public void addHReview(HReviewAddDTO dto) {
		
		mapper.insertHReview(dto);
		
	}

	@Override
	public void editReview(HReviewAddDTO dto) {
	
		mapper.editHReview(dto);
		
	}

	@Override
	public void addComment(HRCommentDTO dto) {
		
		mapper.addComment(dto);
		
		
	}


	@Override
	public HRCommentDTO getLastComment(String hr_seq) {
		HRCommentDTO dto = mapper.getLastComment(hr_seq);
		
		return dto;
	}

	
	@Override
	public List<HReviewDTO> searchResult(String word) {
	
		List<HReviewDTO> list = mapper.getSearchResult(word);
		
		return list;
	}

	@Override
	public int getSearchBoardCnt(String word) {
		
		int count = mapper.getSearchCount(word);
		
		return count;
		
	}

	@Override
	public List<HReviewDTO> getSortedHReviewList(String sort) {
		
		List<HReviewDTO> list = mapper.getSortedHReviewList(sort);
		
		return list;
		
	}

	@Override
	public void updateViewCnt(String seq) {
		
		mapper.updateViewCnt(seq);
		
	}

	@Override
	public String getViewCnt(String seq) {
		
		String cnt = mapper.getViewCnt(seq);
		
		return cnt;
	}

	@Override
	public void deleteContentCmt(String seq) {
		
		mapper.deleteContentCmt(seq);
		
		
	}	

}
