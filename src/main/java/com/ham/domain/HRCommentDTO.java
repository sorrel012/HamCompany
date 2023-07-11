package com.ham.domain;

import lombok.Data;

@Data
public class HRCommentDTO {
	
	private String BoardCnt; //댓글 갯수
	
	private String hrc_seq; //댓글 번호
	private String hr_seq; //게시글 번호
	private String hrc_content; //댓글 내용
	private String hrc_regdate; //댓글 작성 날짜
	private String m_id; //작성자 아이디
	private String m_name; //작성자 이름

}
