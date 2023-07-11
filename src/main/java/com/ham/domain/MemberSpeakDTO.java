package com.ham.domain;

import lombok.Data;

@Data
public class MemberSpeakDTO {
	
	private String boardCnt; //게시글 갯수
	private String sm_seq; //글 번호
	private String m_id; //글쓴이
	private String m_name; //글쓴이 이름
	private String sm_subject; //글제목
	private String sm_content; //글내용
	private String sm_regdate; //글작성날짜
	private String sm_hit; //조회수
	private String smc_seq; // 댓글번호
	private String smc_content; //댓글내용
	private String smc_regdate; //댓글 날짜
	private String count; //댓글 갯수

}
