package com.ham.domain;

import java.util.List;

import lombok.Data;

@Data
public class MyJALicenseDTO {

	private List<String> jal_seq_list;
	private List<String> ja_seq_list;
	private List<String> jal_content_list;
	private List<String> jal_issdate_list;
	
	private String jal_seq;
	private String ja_seq;
	private String jal_content;
	private String jal_issdate;

}
