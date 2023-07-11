package com.ham.domain;

import lombok.Data;

@Data
public class BlacklistDTO {

	private String bl_writer;
	private String bl_badmember;
	private String bl_content;
	private String bl_title;
	private String er_content;
}
