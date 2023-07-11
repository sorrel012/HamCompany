package com.ham.domain;

import lombok.Data;

@Data
public class MyHReviewDTO {
	
	private String hr_seq;
	private String m_id;
	private String hr_subject;
	private String hr_company;
	private String hr_regdate;
	private String hr_content;
	private String fd_seq;
	private String hr_hit;
	
	private String hr_comment;

}
