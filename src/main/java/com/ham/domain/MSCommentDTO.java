package com.ham.domain;

import lombok.Data;

@Data
public class MSCommentDTO {
	
	private String BoardCnt; //댓글 갯수
	
	private String smc_seq; //댓글 번호
	private String sm_seq; //게시글 번호
	private String m_id; //작성자 아이디
	private String smc_content; //작성한 글
	private String smc_regdate; //작성한 날짜
	private String m_name; //작성자 이름

}
