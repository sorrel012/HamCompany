package com.ham.domain;

import lombok.Data;

@Data
public class QuestionDTO {
	private String csc_seq;
	private String m_id;
	private String b_id;
	private String csc_subject;
	private String csc_content;
	private String csc_regdate;
	private String csc_status;
	private String csc_comment;
}
