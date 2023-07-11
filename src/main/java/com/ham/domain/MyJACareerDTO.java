package com.ham.domain;

import java.util.List;

import lombok.Data;

@Data
public class MyJACareerDTO {

	private List<String> jac_seq_list;
	private List<String> ja_seq_list;
	private List<String> jac_content_list;
	private List<String> jac_period_list;
	
	private String jac_seq;
	private String ja_seq;
	private String jac_content;
	private String jac_period;

}
