package com.ham.domain;

import lombok.Data;

//사업자 DTO
@Data
public class BusinessSpeakDTO {

	private String boardCnt; //게시글 갯수
	private String sb_seq; //글 번호
	private String b_id; //글쓴이
	private String m_name; //글쓴이 이름
	private String sb_subject; //글제목
	private String sb_content; //글내용
	private String sb_regdate; //글작성날짜
	private String sb_Hit; //조회수
	private String sbc_seq; // 댓글번호
	private String sbc_content; //댓글내용
	private String sbc_regdate; //댓글 날짜
	private String count; //댓글 갯수
   
}