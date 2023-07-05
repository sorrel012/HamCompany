package com.ham.member;

import java.util.List;

import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;

public interface MyPortfolioService {

	void add(PortfolioDTO dto, List<String> files);

	List<PortfolioDTO> list(String id);

	List<PortfolioDTO> edit(String p_seq);

	void update(PortfolioDTO dto, List<String> files);

	List<PGalleryDTO> gallerylist(String p_seq);

	void delFile(String name);

	void delete(String p_seq);

}
