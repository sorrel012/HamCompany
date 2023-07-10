package com.ham.domain;

import lombok.Data;

@Data
public class BlackListDTO {
	
	private String blSeq;			//불량 회원 신고 번호
	private String blWriter;		//신고자 아이디
	private String blBadmember;		//피신고자 아이디
	private String blRegdate;		//날짜
	private String blStatus;		//상태
	private String blContent;		//신고 내용
	private String blTitle;			//제목
	
	private String count;			//게시물 갯수

}
