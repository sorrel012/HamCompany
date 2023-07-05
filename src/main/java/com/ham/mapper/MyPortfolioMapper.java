package com.ham.mapper;

import java.util.List;

import com.ham.domain.MyPGalleryDTO;
import com.ham.domain.MyPortfolioDTO;

public interface MyPortfolioMapper {

	void add(MyPortfolioDTO dto);

	void addGallery(MyPGalleryDTO gdto);

	List<MyPortfolioDTO> list(String id);

	List<MyPortfolioDTO> edit(String p_seq);

	void update(MyPortfolioDTO dto);

	void updateGallery(MyPGalleryDTO gdto);

	List<MyPGalleryDTO> getgallery(String p_seq);

	void delFile(String name);

	void delete(String p_seq);

	void deleteGallery(String p_seq);

}
