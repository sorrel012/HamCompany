package com.ham.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ham.domain.BlackListDTO;
import com.ham.domain.InquiryDTO;
import com.ham.domain.JobAplDTO;
import com.ham.domain.JobAplDetailDTO;
import com.ham.domain.MatchingDTO;
import com.ham.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper mapper;

	//인재프로필 리스트
	@Override
	public List<JobAplDTO> profileList() {
		
		List<JobAplDTO> list = mapper.userList();
		
		return list;
	}
	
	//인재 프로필 상세보기
	@Override
	public JobAplDetailDTO profileDedatil(String jaSeq) {
		
		JobAplDetailDTO dto = mapper.userDetail(jaSeq);
		
		return dto;
	}

	//불량회원 신고내역 리스트
	@Override
	public List<BlackListDTO> blackList() {
		
		List<BlackListDTO> list = mapper.blackList();
		
		return list;
	}

	//문의내역 리스트
	@Override
	public List<InquiryDTO> inquiryList() {
		
		List<InquiryDTO> list = mapper.inquiryList();
		
		return list;
	}

	//학력
	@Override
	public List<JobAplDetailDTO> jaEduList(String jaSeq) {
		
		List<JobAplDetailDTO> list = mapper.jaEduList(jaSeq);
		
		return list;
	}

	//경력
	@Override
	public List<JobAplDetailDTO> jaCareerList(String jaSeq) {
		
		List<JobAplDetailDTO> list = mapper.jaCareerList(jaSeq);
		
		return list;
	}

	//인재시장 유저 추가
	@Override
	public int addMarketUser(String jaSeq) {
		
		int result = mapper.insertMarketUser(jaSeq);
		
		return result;
	}

	//구직신청서 상태 수정
	@Override
	public int modifyJobAplStatus(Map<String, String> map) {
		
		int result = mapper.updateJobAplStatus(map);
		
		return result;
	}

	@Override
	public List<MatchingDTO> findMatching() {
		
		List<MatchingDTO> list = mapper.selectMatching();
		
		return list;
	}

	@Override
	public int findMatchingCount(String statusName) {
		
		int matchingCount = mapper.selectMatchingCount(statusName);
		
		return matchingCount;
		
	}

	@Override
	public List<MatchingDTO> findMatchingDateCount() {
		
		List<MatchingDTO> matchingDateCount = mapper.selectMatchingDateCount();
		
		return matchingDateCount;
	}

	@Override
	public int modifyConfirmStatus(Map<String, String> map) {
		
		int confirmResult = mapper.updateConfirmStatus(map);
		
		return confirmResult;
	}

	@Override
	public int modifyBlackList(Map<String, String> map) {
		
		int blackListResult = mapper.updateBlackList(map);
		System.out.println(blackListResult);
		
		return blackListResult;
	}

	@Override
	public void modifyUserStatus(Map<String, String> map) {
		
		mapper.updateUserStatus(map);
		
	}

	@Override
	public void addInquiryAnswer(Map<String, String> map) {
		
		mapper.updateInquiryAnswer(map);
		
	}

}
