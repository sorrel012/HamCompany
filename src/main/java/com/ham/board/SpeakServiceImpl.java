package com.ham.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.BSCommentDTO;
import com.ham.domain.BusinessSpeakDTO;
import com.ham.domain.MSCommentDTO;
import com.ham.domain.MemberSpeakDTO;
import com.ham.mapper.SpeakMapper;

@Service
public class SpeakServiceImpl implements SpeakService{
	
	
	@Autowired
	private SpeakMapper mapper;
	
	
	//함 말해볼텨
	@Override
	public List<MemberSpeakDTO> getSpeakList() {
		
		List<MemberSpeakDTO> list = mapper.getSpeakList();

		return list;
		
		
	}

	@Override
	public List<BusinessSpeakDTO> getSpeakMList() {
		
		List<BusinessSpeakDTO> list = mapper.getSpeakMList();
		
		return list;
	}

	@Override
	public int getSpeakBoardCnt(String type) {
		int count = mapper.getSpeakBoardCount(type);
		
		return count;
	}

	@Override
	public MemberSpeakDTO getSpeakMDetail(String seq) {
		
		MemberSpeakDTO dto = mapper.getSpeakMDetail(seq);
		
		return dto;
	}

	@Override
	public void updateSpeakMDetail(String seq) {
		
		mapper.updateSpeakMDetail(seq);
		
	}

	@Override
	public String getSpeakMCnt(String seq) {
		
		
		String cnt = mapper.getSpeakMCnt(seq);
		
		return cnt;
		
		
	}

	@Override
	public List<MSCommentDTO> getSpeckMComment(String seq) {
		
		List<MSCommentDTO> list = mapper.getSpeckMComment(seq);
		
		return list;
	}

	@Override
	public int getSpeckMCommentCnt(String seq) {
		
		int cnt = mapper.getSpeckMCommentCnt(seq);
		
		return cnt;
	}

	@Override
	public BusinessSpeakDTO getSpeakBDetail(String seq) {
		
		BusinessSpeakDTO dto = mapper.getSpeakBDetail(seq);
		
		return dto;
	}

	@Override
	public void updateSpeakBDetail(String seq) {
		
		mapper.updateSpeakBDetail(seq);
		
	}

	@Override
	public String getSpeakBCnt(String seq) {
		
		String cnt = mapper.getSpeakBCnt(seq);
		
		return cnt;
	}

	@Override
	public List<BSCommentDTO> getSpeckBComment(String seq) {
		
		List<BSCommentDTO> list = mapper.getSpeckBComment(seq);
		
		return list;
	}

	@Override
	public int getSpeckBCommentCnt(String seq) {
		
		int cnt = mapper.getSpeckBCommentCnt(seq);
		
		return cnt;
	}

	@Override
	public void deleteSMContentCmt(String seq) {
		
		mapper.deleteSMContentCmt(seq);
		
	}

	@Override
	public void deleteSMComment(String seq) {
		
		mapper.deleteSMComment(seq);
		
	}

	@Override
	public void deleteSBContentCmt(String seq) {
		
		mapper.deleteSBContentCmt(seq);
		
	}

	@Override
	public void deleteSBComment(String seq) {
		
		mapper.deleteSBComment(seq);
		
	}

	@Override
	public void addSpeakM(MemberSpeakDTO dto) {
		
		mapper.addSpeakM(dto);
		
	}

	@Override
	public void addSpeakM(BusinessSpeakDTO dto) {
		
		mapper.addSpeakB(dto);
		
	}

	@Override
	public MemberSpeakDTO geteditSMContent(String seq) {
		
		MemberSpeakDTO dto = mapper.geteditSMContent(seq);
		
		return dto;
	}

	@Override
	public BusinessSpeakDTO geteditSBContent(String seq) {
		
		BusinessSpeakDTO dto = mapper.geteditSBContent(seq);
		
		return dto;
	}

	@Override
	public void editspeakM(MemberSpeakDTO dto) {
		
		mapper.editspeakM(dto);
		
	}

	@Override
	public void editspeakB(BusinessSpeakDTO dto) {
		
		mapper.editspeakB(dto);
		
	}

	@Override
	public void addSMComment(MSCommentDTO dto) {
		
		mapper.addSMComment(dto);
		
	}

	@Override
	public MSCommentDTO getLastSMComment(String sm_seq) {
		
		MSCommentDTO dto = mapper.getLastSMComment(sm_seq);
		
		return dto;
	}

	@Override
	public void addSBComment(BSCommentDTO dto) {
		
		mapper.addSBComment(dto);
		
	}

	@Override
	public BSCommentDTO getLastSBComment(String sb_seq) {
		
		BSCommentDTO dto = mapper.getLastSBComment(sb_seq);
		
		return dto;
	}

	@Override
	public List<MemberSpeakDTO> getSortedSpeakList(String sort) {
		
		List<MemberSpeakDTO> list = mapper.getSortedSpeakList(sort);
		
		return list;
	}

	@Override
	public List<BusinessSpeakDTO> getSortedSpeakMList(String sort) {
		
		
		List<BusinessSpeakDTO> list = mapper.getSortedSpeakMList(sort);
		
		return list;
	}

	@Override
	public List<MemberSpeakDTO> searchMResult(String word) {
		
		List<MemberSpeakDTO> list = mapper.searchMResult(word);
		
		return list;
	}

	@Override
	public int getSearchMBoardCnt(String word) {
		int cnt = mapper.getSearchMBoardCnt(word);
		
		return cnt;
	}

	@Override
	public List<BusinessSpeakDTO> searchBResult(String word) {
		
		List<BusinessSpeakDTO> list = mapper.searchBResult(word);
				
		return list;
	}

	@Override
	public int getSearchBBoardCnt(String word) {
		int cnt = mapper.getSearchBBoardCnt(word);
		
		return cnt;
	}




}
