package com.ham.domain;

import lombok.Data;

@Data
public class BSCommentDTO {
	private String BoardCnt; //댓글 갯수
	
	private String sbc_seq; //댓글 번호
	private String sb_seq; //게시글 번호
	private String b_id; //작성자 아이디
	private String sbc_content; //작성한 글
	private String sbc_regdate; //작성한 날짜
	private String bd_name; //작성자 이름

}
