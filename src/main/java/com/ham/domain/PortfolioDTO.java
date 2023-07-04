package com.ham.domain;

import java.util.List;

import lombok.Data;

@Data
public class PortfolioDTO {
	
	private String p_seq;
	private String m_id;
	private String p_subject;
	private String p_service;
	private String p_location;
	private String p_time;
	private String p_year;
	
	private List<PGalleryDTO> gallery;

}
