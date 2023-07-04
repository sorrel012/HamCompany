package com.ham.member;

import java.util.List;

import com.ham.domain.PortfolioDTO;

public interface PortfolioService {

	void add(PortfolioDTO dto, List<String> files);

	List<PortfolioDTO> list(String id);

	List<PortfolioDTO> edit(String p_seq);

	void update(PortfolioDTO dto, List<String> files);

}
