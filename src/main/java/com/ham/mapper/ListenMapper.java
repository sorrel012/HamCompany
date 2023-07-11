package com.ham.mapper;

import java.util.List;
import java.util.Map;

import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.HRCommentDTO;
import com.ham.domain.HReviewAddDTO;
import com.ham.domain.HReviewDTO;
import com.ham.domain.MSCommentDTO;
import com.ham.domain.MemberSpeakDTO;

public interface ListenMapper {

	List<HReviewDTO> getHReviewList(Map<String, String> map);

	int getBoardCount();

	HReviewDTO getListenDetail(String seq);

	List<HRCommentDTO> getCommentList(String seq);

	int getCommentCount(String seq);

	int deleteComment(String seq);

	List<HReviewAddDTO> getField();

	List<HReviewAddDTO> getFdetail();

	void insertHReview(HReviewAddDTO dto);

	void editHReview(HReviewAddDTO dto);

	void addComment(HRCommentDTO dto);

	HRCommentDTO getLastComment(String hr_seq);

	List<HReviewDTO> getSearchResult(String word);

	int getSearchCount(String word);

	List<HReviewDTO> getSortedHReviewList(String sort);

	void updateViewCnt(String seq);

	String getViewCnt(String seq);

	void deleteContentCmt(String seq);
}
