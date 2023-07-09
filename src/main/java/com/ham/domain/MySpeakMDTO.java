package com.ham.domain;

import lombok.Data;

@Data
public class MySpeakMDTO {
	
	private String sm_seq;
	private String m_id;
	private String sm_subject;
	private String sm_content;
	private String sm_regdate;
	private String sm_hit;
	
	private String sm_comment;
}
