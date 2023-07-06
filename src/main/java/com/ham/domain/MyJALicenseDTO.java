package com.ham.domain;

import java.util.List;

import lombok.Data;

@Data
public class MyJALicenseDTO {

	private List<String> jal_seq;
	private List<String> ja_seq;
	private List<String> jal_content;
	private List<String> jal_issdate;

}
