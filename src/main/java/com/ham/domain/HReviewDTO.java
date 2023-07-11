package com.ham.domain;

import lombok.Data;

@Data
public class HReviewDTO {
	
	private String boardCnt; //게시글 갯수
	private String cnt; //댓글 갯수
	private String hr_hit; //조회수
	
	private String hr_seq; //게시글 번호
	private String m_id; //작성자 아이디
	private String hr_subject; //게시글 제목
	private String hr_company; //회사명
	private String hr_regdate; //작성 날짜
	private String hr_content; //본문
	private String fd_seq; //세부 분야 번호
	private String fd_name; //세부 분야 제목
	private String m_name; //작성자 이름

}
