package com.ham.mapper;

import java.util.List;

import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;

public interface PortfolioMapper {

	void add(PortfolioDTO dto);

	void addGallery(PGalleryDTO gdto);

	List<PortfolioDTO> list(String id);

	List<PortfolioDTO> edit(String p_seq);

	void update(PortfolioDTO dto);

	void updateGallery(PGalleryDTO gdto);

	List<PGalleryDTO> getgallery(String p_seq);

	void delFile(String name);

	void delete(String p_seq);

	void deleteGallery(String p_seq);

}
