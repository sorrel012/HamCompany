package com.ham.domain;

import lombok.Data;

@Data
public class InquiryDTO {
	
	private String cscSeq;			//고객센터 번호
	private String m_Id;			//일반 회원 아이디
	private String b_Id;			//사업자 회원 아이디
	private String cscSubject;		//제목
	private String cscContent;		//내용
	private String cscRegDate;		//작성일자
	private String cscStatus;		//처리상태
	private String count;			//게시물 갯수
	private String cscComment;
	
}
