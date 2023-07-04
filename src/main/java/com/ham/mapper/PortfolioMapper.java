package com.ham.mapper;

import com.ham.domain.PGalleryDTO;
import com.ham.domain.PortfolioDTO;

public interface PortfolioMapper {

	void add(PortfolioDTO dto);

	void addGallery(PGalleryDTO gdto);

}
