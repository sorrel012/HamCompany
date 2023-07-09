package com.ham.domain;

import lombok.Data;

@Data
public class BusinessSpeakDTO {
	String sb_seq;
	String b_id;
	String sb_subject;
	String sb_content;
	String sb_regdate;
	String sb_Hit;
	String sbc_seq;
	String sbc_content;
	String sbc_regdate;
	String count;
}
