package com.ham.board;

import java.util.List;

import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.HRCommentDTO;
import com.ham.domain.HReviewAddDTO;
import com.ham.domain.HReviewDTO;
import com.ham.domain.MemberSpeakDTO;

public interface BoardService {

	List<HReviewDTO> getHReviewList();

	int getBoardCnt();

	HReviewDTO getListenDetail(String seq);

	List<HRCommentDTO> getDetailComment(String seq);

	int getCommentCnt(String seq);

	int deleteComment(String seq);

	List<HReviewAddDTO> getField();

	List<HReviewAddDTO> getFDetail();

	void addHReview(HReviewAddDTO dto);

	void editReview(HReviewAddDTO dto);

	void addComment(HRCommentDTO dto);

	HRCommentDTO getLastComment(String hr_seq);

	List<HReviewDTO> searchResult(String word);

	int getSearchBoardCnt(String word);

	List<HReviewDTO> getSortedHReviewList(String sort);

	void updateViewCnt(String seq);

	String getViewCnt(String seq);

	void deleteContentCmt(String seq);

	List<MemberSpeakDTO> getSpeakList();

	List<BusinessSpeakDTO> getSpeakMList();
	
	

}
