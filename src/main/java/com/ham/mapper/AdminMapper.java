package com.ham.mapper;

import java.util.List;
import java.util.Map;

import com.ham.domain.BlackListDTO;
import com.ham.domain.InquiryDTO;
import com.ham.domain.JobAplDTO;
import com.ham.domain.JobAplDetailDTO;
import com.ham.domain.MatchingDTO;

public interface AdminMapper {
	
	public List<JobAplDTO> userList();

	public List<BlackListDTO> blackList();

	public List<InquiryDTO> inquiryList();

	public JobAplDetailDTO userDetail(String jaSeq);

	public List<JobAplDetailDTO> jaEduList(String jaSeq);

	public List<JobAplDetailDTO> jaCareerList(String jaSeq);

	public int insertMarketUser(String jaSeq);

	public int updateJobAplStatus(Map<String, String> map);

	public List<MatchingDTO> selectMatching();

	public int selectMatchingCount(String statusName);

	public List<MatchingDTO> selectMatchingDateCount();

	public int updateConfirmStatus(Map<String, String> map);

	public int updateBlackList(Map<String, String> map);

	public void updateUserStatus(Map<String, String> map);

	public void updateInquiryAnswer(Map<String, String> map);

}
