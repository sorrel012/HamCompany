package com.ham.admin;

import java.util.List;
import java.util.Map;

import com.ham.domain.BlackListDTO;
import com.ham.domain.InquiryDTO;
import com.ham.domain.JobAplDTO;
import com.ham.domain.JobAplDetailDTO;
import com.ham.domain.MatchingDTO;

public interface AdminService {

	List<JobAplDTO> profileList();

	List<BlackListDTO> blackList();

	List<InquiryDTO> inquiryList();

	JobAplDetailDTO profileDedatil(String jaSeq);

	List<JobAplDetailDTO> jaEduList(String jaSeq);

	List<JobAplDetailDTO> jaCareerList(String jaSeq);

	int addMarketUser(String jaSeq);

	int modifyJobAplStatus(Map<String, String> map);

	List<MatchingDTO> findMatching();

	int findMatchingCount(String statusName);

	List<MatchingDTO> findMatchingDateCount();

	int modifyConfirmStatus(Map<String, String> map);

	int modifyBlackList(Map<String, String> map);

	void modifyUserStatus(Map<String, String> map);

	void addInquiryAnswer(Map<String, String> map);

}
