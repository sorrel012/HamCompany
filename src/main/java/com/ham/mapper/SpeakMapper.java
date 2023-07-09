package com.ham.mapper;

import java.util.List;

import com.ham.domain.BSCommentDTO;
import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.MSCommentDTO;
import com.ham.domain.MemberSpeakDTO;

public interface SpeakMapper {
	
	List<MemberSpeakDTO> getSpeakList();

	List<BusinessSpeakDTO> getSpeakMList();

	int getSpeakBoardCount(String type);

	MemberSpeakDTO getSpeakMDetail(String seq);

	void updateSpeakMDetail(String seq);

	String getSpeakMCnt(String seq);

	List<MSCommentDTO> getSpeckMComment(String seq);

	int getSpeckMCommentCnt(String seq);

	BusinessSpeakDTO getSpeakBDetail(String seq);

	void updateSpeakBDetail(String seq);

	String getSpeakBCnt(String seq);

	List<BSCommentDTO> getSpeckBComment(String seq);

	int getSpeckBCommentCnt(String seq);

	void deleteSMContentCmt(String seq);

	void deleteSMComment(String seq);

	void deleteSBContentCmt(String seq);

	void deleteSBComment(String seq);

	void addSpeakM(MemberSpeakDTO dto);

	void addSpeakB(BusinessSpeakDTO dto);

	MemberSpeakDTO geteditSMContent(String seq);

	BusinessSpeakDTO geteditSBContent(String seq);

	void editspeakM(MemberSpeakDTO dto);

	void editspeakB(BusinessSpeakDTO dto);

	void addSMComment(MSCommentDTO dto);

	MSCommentDTO getLastSMComment(String sm_seq);

	void addSBComment(BSCommentDTO dto);

	BSCommentDTO getLastSBComment(String sb_seq);

	List<MemberSpeakDTO> getSortedSpeakList(String sort);

	List<BusinessSpeakDTO> getSortedSpeakMList(String sort);

	List<MemberSpeakDTO> searchMResult(String word);

	int getSearchMBoardCnt(String word);

	List<BusinessSpeakDTO> searchBResult(String word);

	int getSearchBBoardCnt(String word);


}
