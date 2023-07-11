package com.ham.domain;

import lombok.Data;

@Data
public class HReviewAddDTO {
	
	private String f_seq; //분야 번호
	private String f_name; //분야 이름
	private String fd_seq; //세부 분야 번호
	private String fd_name; //세부 분야 이름
	private String hr_seq; //작성글 번호
	private String m_id; //작성자
	private String hr_subject; //글 제목
	private String hr_company; //회사명
	private String hr_regdate; //글 작성날짜
	private String hr_content; //작성한 글 내용

}
