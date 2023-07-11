package com.ham.domain;

import lombok.Data;

@Data
public class JobAplDTO {
	
	//tblJopApl
	private String jaSeq;			//구직 신청서 번호
	private String m_Id;			//일반 회원 아이디
	private String fdSeq;			//세부 분야 번호
	private String jaSalary;		//희망 급여
	private String jaIntro;			//자기소개서
	private String jaBeginDate;		//희망 시작 날짜
	private String jaEndDate;		//희망 종료 날짜
	private String jaLocation;		//희망 근무지
	private String jaTime;			//희망 근무 시간대
	private String jaPic;			//회원 사진
	private String jaRegDate;		//등록일자
	private String jaStatus;		//상태
	
	private String count;			//게시글 갯수
	
	//tblMember
	private String m_Name;			//회원 이름
	
	//tblField
	private String f_Name; 			//분야 이름
	
}
