package com.ham.domain;

import java.util.List;

import lombok.Data;

@Data
public class MyJAEduDTO {

	private List<String> jae_seq_list;
	private List<String> ja_seq_list;
	private List<String> jae_content_list;
	private List<String> jae_graduation_list;
	
	private String jae_seq;
	private String ja_seq;
	private String jae_content;
	private String jae_graduation;
	
}
