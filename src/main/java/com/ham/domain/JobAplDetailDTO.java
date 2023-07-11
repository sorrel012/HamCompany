package com.ham.domain;

import lombok.Data;

@Data
public class JobAplDetailDTO {
	
	//tblJobApl
	private String jaSeq;			//구직 신청서 번혼
	private String m_Id;			//일반 회원 아이디
	private String fdSeq;			//세부 분야 번호
	private String jaSalary;		//희망 급여
	private String jaIntro;			//자기소개서
	private String jaBeginDate;		//희망 시작 날짜
	private String jaEndDate;		//희망 종료 날짜
	private String jaLocation;		//희망 근무지
	private String jaTime;			//희망 근무 시간대
	private String jaPic;			//회원 사진
	private String jaRegDate;		//등록 날짜
	private String jaStatus;		//상태
	
	//tblFDetail
	private String fdName;			//세부분야 이름

	//tblMember
	private String m_Pw;			//비밀번호
	private String m_Name;			//이름
	private String m_Address;		//주소
	private String m_AddressDetail;	//상세주소
	private String m_Tel;			//연락처
	private String m_Email;			//이메일
	private String m_Birth;			//생년월일
	
	//tblJAEdu
	private String jaeSeq;			//학력 번호
	private String jaeContent;		//학력 내용
	private String jaeGraduation;	//상태(졸업유무)
	
	//tblJACareer
	private String jacSeq;			//경력 번호
	private String jacContent;		//경력 내용
	private String jacPeriod;		//경력 기간
}
